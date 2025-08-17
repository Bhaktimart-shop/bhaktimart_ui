import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'responsive_flow_grid_item.dart';
part 'render_responsive_flow_grid.dart';
part 'render_responsive_flow_parent_data.dart';

/// A responsive grid that adjusts the number of columns based on the available width.
/// This grid intended for a small amount of children. Using large number of children might cause performance issues.
///
/// Children of the grid are required to layout with any width supplied by the grid.
/// Depending on the mode and available size, the grid will adjust the number of columns used by each child.
/// The height of the children is determined by the child itself.
///
/// Depending on the supplied children and their width, the grid will use two modes:
/// 1. All children fit in to a single row:
///   In this case, the children will be laid out in a single row.
///   The children will be left aligned. Empty space is added to fill the full available width.
///
/// 2. Children do not fit in to a single row:
///  In this case, the children will be laid out in multiple rows.
///  Each row will use the full available width available.
///  The number of columns used by each child will be adjusted based on the available width.
///
/// Switching between the modes is done by the grid itself.
/// There is no control over it when using this widget.
class ResponsiveFlowGrid extends MultiChildRenderObjectWidget {
  const ResponsiveFlowGrid({
    required this.columns,
    required this.spacing,
    required this.idealWidth,
    required List<ResponsiveFlowGridItem> children,
    super.key,
  }) : super(children: children);

  /// The number of columns to use in the grid at ideal width.
  /// The actual number of columns will be adjusted based on the available width.
  /// The number of columns will be at least 1 and are linearly reduced when width is reduced.
  final int columns;

  /// Horizontal and vertical spacing between children of the grid.
  final double spacing;

  /// The ideal width of the grid at which the number of columns is equal to [columns].
  final double idealWidth;

  @override
  RenderResponsiveFlowGrid createRenderObject(BuildContext context) =>
      RenderResponsiveFlowGrid(
        horizontalWidth: columns,
        spacing: spacing,
        idealWidth: idealWidth,
      );

  @override
  void updateRenderObject(
    BuildContext context,
    RenderResponsiveFlowGrid renderObject,
  ) =>
      // Mutating the render object's properties directly is the pattern here.
      // ignore: avoid-mutating-parameters
      renderObject
        ..columns = columns
        ..spacing = spacing
        ..idealWidth = idealWidth;
}
