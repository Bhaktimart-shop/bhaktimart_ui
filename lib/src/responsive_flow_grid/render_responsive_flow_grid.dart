// Using [indexed] on [List] requires using positional record field access syntax.
// ignore_for_file: avoid-positional-record-field-access

part of 'responsive_flow_grid.dart';

class RenderResponsiveFlowGrid extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, RenderResponsiveFlowParentData>,
        RenderBoxContainerDefaultsMixin<
          RenderBox,
          RenderResponsiveFlowParentData
        > {
  RenderResponsiveFlowGrid({
    required int horizontalWidth,
    required double spacing,
    required double idealWidth,
  }) : _idealWidth = idealWidth,
       _spacing = spacing,
       _columns = horizontalWidth;

  int _columns;
  int get columns => _columns;
  set columns(int value) {
    if (_columns == value) return;
    _columns = value;
    markNeedsLayout();
  }

  double _spacing;
  double get spacing => _spacing;
  set spacing(double value) {
    if (_spacing == value) return;
    _spacing = value;
    markNeedsLayout();
  }

  double _idealWidth;
  double get idealWidth => _idealWidth;
  set idealWidth(double value) {
    if (_idealWidth == value) return;
    _idealWidth = value;
    markNeedsLayout();
  }

  double _adjustedColumnWidth(double width) => width / _adjustedColumns(width);

  double get _itemInset => spacing / 2;

  double _startXForColumn(int startColumn, double width) {
    if (startColumn == 0) return 0;
    return _adjustedColumnWidth(width) * startColumn + _itemInset;
  }

  double _endXForColumn(int endColumn, double width) {
    if (endColumn >= _adjustedColumns(width) - 1) return width;
    return _adjustedColumnWidth(width) * (endColumn + 1) - _itemInset;
  }

  int _adjustedColumns(double width) {
    final idealWidthPerColumn = idealWidth / columns;
    final horizontalCount = width / idealWidthPerColumn;
    return horizontalCount.floor().clamp(1, columns);
  }

  @override
  void setupParentData(RenderObject child) {
    if (child.parentData is! RenderResponsiveFlowParentData) {
      // Mutating the render object's properties directly is the pattern here.
      // ignore: avoid-mutating-parameters
      child.parentData = RenderResponsiveFlowParentData();
    }
  }

  @override
  double computeMinIntrinsicWidth(double height) => 0;

  @override
  double computeMaxIntrinsicWidth(double height) => 0;

  @override
  double computeMinIntrinsicHeight(double width) => 0;

  @override
  double computeMaxIntrinsicHeight(double width) => 0;

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) =>
      defaultComputeDistanceToHighestActualBaseline(baseline);

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    final size = _layout(
      constraints: constraints,
      layoutChild: _dryLayoutChild,
    );
    return constraints.constrain(size);
  }

  @override
  void performLayout() {
    final requestedSize = _layout(
      constraints: constraints,
      layoutChild: _layoutChild,
    );
    size = constraints.constrain(requestedSize);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  RenderResponsiveFlowParentData _parentData(RenderBox child) {
    final parentData = child.parentData;
    if (parentData is! RenderResponsiveFlowParentData) {
      throw FlutterError(
        'The parentData for child is not of type RenderResponsiveFlowParentData',
      );
    }
    return parentData;
  }

  Size _layout({
    required BoxConstraints constraints,
    required _ChildLayouter layoutChild,
  }) {
    if (childCount == 0) return Size.zero;

    final maxWidth = constraints.maxWidth;

    final children = getChildrenAsList();
    final parentData = children.map(_parentData).toList();

    final adjustedColumns = _adjustedColumns(maxWidth);
    final totalColumns = parentData.fold(
      0,
      (count, data) => count + data.widthInColumns,
    );

    // Check if all items fit into a single row.
    // If so, layout all items without stretching.
    // Otherwise, layout items in multiple rows with stretching.
    return totalColumns <= adjustedColumns
        ? _layoutSingleRow(
            maxWidth: maxWidth,
            children: children,
            parentData: parentData,
            layoutChild: layoutChild,
          )
        : _layoutMultiRow(
            maxWidth: maxWidth,
            children: children,
            parentData: parentData,
            layoutChild: layoutChild,
            columnCount: adjustedColumns,
          );
  }

  /// Puts all items into a single row while keeping widths 1:1 as defined by the items.
  /// This only does proper layout if all items fit into a single row.
  Size _layoutSingleRow({
    required double maxWidth,
    required List<RenderBox> children,
    required List<RenderResponsiveFlowParentData> parentData,
    required _ChildLayouter layoutChild,
  }) {
    var startColumn = 0;
    var usedHeight = 0.0;

    for (final (index, data) in parentData.indexed) {
      final child = children[index];
      final endColumn = startColumn + data.widthInColumns - 1;
      final startX = _startXForColumn(startColumn, maxWidth);
      final endX = _endXForColumn(endColumn, maxWidth);

      layoutChild(child, BoxConstraints.tightFor(width: endX - startX));
      data.offset = Offset(startX, 0);

      usedHeight = max(usedHeight, child.size.height);

      startColumn += data.widthInColumns;
    }
    // Each "row" adds spacing to next "row".
    return Size(maxWidth, usedHeight - spacing);
  }

  /// Puts all items into multiple rows. Makes sure that rows always use full
  /// width available by stretching items.
  Size _layoutMultiRow({
    required double maxWidth,
    required List<RenderBox> children,
    required List<RenderResponsiveFlowParentData> parentData,
    required _ChildLayouter layoutChild,
    required int columnCount,
  }) {
    final usedHeights = List.generate(columnCount, (_) => 0.0);

    while (children.isNotEmpty) {
      final sortedHeights = usedHeights.indexed.toList()
        ..sort(
          (height1, height2) => height1.$2 == height2.$2
              ? height1.$1.compareTo(height2.$1)
              : height1.$2.compareTo(height2.$2),
        );

      _RowSize? rowSize;
      double? rowStartY;
      final minSizeRequired = parentData.first.widthInColumns;
      for (final height in sortedHeights) {
        final possibleRowSize = _rowSize(height.$1, usedHeights);

        if (possibleRowSize.end - possibleRowSize.start + 1 >=
            minSizeRequired) {
          rowSize = possibleRowSize;
          rowStartY = height.$2;
          break;
        }
      }

      // Fallback if no rowSize was found. Use max height and start at index 0.
      rowSize ??= (start: 0, end: columnCount - 1);
      rowStartY ??= sortedHeights.last.$2;

      final row = _takeChildrenForRow(children, rowSize: rowSize);

      final layoutData = _RowLayoutData(
        layoutChild: layoutChild,
        rowSize: rowSize,
        maxWidth: maxWidth,
        rowWidth: row.width,
        rowStartY: rowStartY,
        usedHeights: usedHeights,
      );

      // If no items fit into the row, layout next item on available width.
      // This should only happen if the item is larger than the row width.
      // And since we adjust the number of columns depending on the width,
      // this is part of normal operations.
      if (row.children.isEmpty) {
        final child = children.removeAt(0);
        _layoutSingleChildStretched(child, layoutData);
      } else {
        _layoutChildrenStretched(row.children, layoutData);
      }
    }

    return Size(maxWidth, usedHeights.fold<double>(0, max) - spacing);
  }

  void _layoutSingleChildStretched(RenderBox child, _RowLayoutData layoutData) {
    final startX = _startXForColumn(0, layoutData.maxWidth);
    final endX = _endXForColumn(layoutData.rowSize.end, layoutData.maxWidth);

    layoutData.layoutChild(
      child,
      BoxConstraints.tightFor(width: endX - startX),
    );
    _parentData(child).offset = Offset(startX, layoutData.rowStartY);

    final heightUsed = layoutData.rowStartY + child.size.height + spacing;
    for (var i = layoutData.rowSize.start; i <= layoutData.rowSize.end; i++) {
      if (i >= 0 && i < layoutData.usedHeights.length) {
        layoutData.usedHeights[i] = heightUsed;
      }
    }
  }

  void _layoutChildrenStretched(
    List<RenderBox> childrenInRow,
    _RowLayoutData layoutData,
  ) {
    final actualRowWidth = childrenInRow.fold(
      0,
      (count, item) => count + _parentData(item).widthInColumns,
    );
    var difference = layoutData.rowWidth - actualRowWidth;
    assert(
      difference >= 0,
      'Unexpected difference in row width. '
      'Expected to fit all items into a row.',
    );
    final adjustedWidths = {
      for (final item in childrenInRow) item: _parentData(item).widthInColumns,
    };

    // Distribute the difference in width to all items in the row.
    while (difference > 0) {
      for (final child in childrenInRow) {
        if (difference == 0) break;
        adjustedWidths[child] = adjustedWidths[child]! + 1;
        difference--;
      }
    }

    var startColumn = layoutData.rowSize.start;
    final usedHeightsLength = layoutData.usedHeights.length;

    for (final item in childrenInRow) {
      final childWidth = adjustedWidths[item]!;
      final startX = _startXForColumn(startColumn, layoutData.maxWidth);
      final endColumn = startColumn + childWidth - 1;

      if (endColumn >= usedHeightsLength) break;

      final endX = _endXForColumn(endColumn, layoutData.maxWidth);

      layoutData.layoutChild(
        item,
        BoxConstraints.tightFor(width: endX - startX),
      );
      _parentData(item).offset = Offset(startX, layoutData.rowStartY);

      final heightUsed = layoutData.rowStartY + item.size.height + spacing;

      for (var i = startColumn; i <= endColumn; i++) {
        if (i >= 0 && i < usedHeightsLength) {
          layoutData.usedHeights[i] = heightUsed;
        }
      }

      startColumn = endColumn + 1;
    }
  }

  _RowSize _rowSize(int startColumn, List<double> usedHeights) {
    var endColumn = startColumn;
    for (var i = startColumn + 1; i < usedHeights.length; i++) {
      if (usedHeights[i] > usedHeights[startColumn]) {
        break;
      }
      endColumn = i;
    }
    return (start: startColumn, end: endColumn);
  }

  ({List<RenderBox> children, int width}) _takeChildrenForRow(
    List<RenderBox> children, {
    required _RowSize rowSize,
  }) {
    final rowWidth = rowSize.end - rowSize.start + 1;
    var availableRowWidth = rowWidth;

    final childrenInRow = children.takeWhile((child) {
      final data = _parentData(child);
      if (availableRowWidth < data.widthInColumns) return false;
      availableRowWidth = max(0, availableRowWidth - data.widthInColumns);
      return true;
    }).toList();

    children.removeWhere(childrenInRow.contains);

    return (children: childrenInRow, width: rowWidth);
  }
}

typedef _RowSize = ({int start, int end});

typedef _ChildLayouter =
    void Function(RenderBox child, BoxConstraints constraints);

class _RowLayoutData {
  const _RowLayoutData({
    required this.layoutChild,
    required this.rowSize,
    required this.maxWidth,
    required this.rowWidth,
    required this.rowStartY,
    required this.usedHeights,
  });

  final _ChildLayouter layoutChild;
  final _RowSize rowSize;
  final double maxWidth;
  final int rowWidth;
  final double rowStartY;
  final List<double> usedHeights;
}

void _dryLayoutChild(RenderBox child, BoxConstraints constraints) =>
    child.getDryLayout(constraints);

void _layoutChild(RenderBox child, BoxConstraints constraints) =>
    child.layout(constraints, parentUsesSize: true);
