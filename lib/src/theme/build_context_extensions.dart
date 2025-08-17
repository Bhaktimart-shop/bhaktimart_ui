import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

typedef Resources = ({
  DimensionResources dimensions,
  BhaktimartColors colors,
  FontResources fonts,
});

extension BuildContextExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);

  DimensionResources get dimensions => _theme.dimensionResources;

  BhaktimartColors get colors => _theme.bhaktimartColorsResources;

  FontResources get fonts => _theme.fontResources;

  /// Use as final (:dimensions, :colors, :fonts) = context.resources;.

  Resources get resources =>
      (dimensions: dimensions, colors: colors, fonts: fonts);
}
