import 'package:flutter/material.dart';

class BorderLayerSecondary extends ThemeExtension<BorderLayerSecondary> {
  const BorderLayerSecondary({required this.primary});

  final Color primary;

  @override
  BorderLayerSecondary copyWith({Color? primary}) =>
      BorderLayerSecondary(primary: primary ?? this.primary);

  @override
  BorderLayerSecondary lerp(BorderLayerSecondary? other, double t) =>
      other == null
      ? this
      : BorderLayerSecondary(primary: Color.lerp(primary, other.primary, t)!);
}
