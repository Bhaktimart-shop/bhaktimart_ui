import 'package:flutter/material.dart';

class BorderLayerPrimary extends ThemeExtension<BorderLayerPrimary> {
  const BorderLayerPrimary({required this.primary, required this.secondary});

  final Color primary;
  final Color secondary;

  @override
  BorderLayerPrimary copyWith({Color? primary, Color? secondary}) =>
      BorderLayerPrimary(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
      );

  @override
  BorderLayerPrimary lerp(BorderLayerPrimary? other, double t) => other == null
      ? this
      : BorderLayerPrimary(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
        );
}
