part of 'responsive_flow_grid.dart';

class ResponsiveFlowGridItem
    extends ParentDataWidget<RenderResponsiveFlowParentData> {
  const ResponsiveFlowGridItem({
    required this.widthInColumns,
    required super.child,
    super.key,
  });

  final int widthInColumns;

  @override
  String toString({DiagnosticLevel? minLevel}) =>
      'ResponsiveFlowGridItem($widthInColumns)';

  @override
  void applyParentData(RenderObject renderObject) {
    final parentData = renderObject.parentData;
    if (parentData is RenderResponsiveFlowParentData) {
      var shouldLayout = false;

      if (parentData.widthInColumns != widthInColumns) {
        parentData.widthInColumns = widthInColumns;
        shouldLayout = true;
      }

      if (shouldLayout) {
        final targetParent = renderObject.parent;
        if (targetParent is RenderResponsiveFlowGrid) {
          targetParent.markNeedsLayout();
        }
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => ResponsiveFlowGrid;
}
