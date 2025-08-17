import 'package:flutter/material.dart';

class OnLayerSecondary extends ThemeExtension<OnLayerSecondary> {
  const OnLayerSecondary({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;

  @override
  OnLayerSecondary copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
  }) => OnLayerSecondary(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
    tertiary: tertiary ?? this.tertiary,
  );

  @override
  OnLayerSecondary lerp(OnLayerSecondary? other, double t) => other == null
      ? this
      : OnLayerSecondary(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          tertiary: Color.lerp(tertiary, other.tertiary, t)!,
        );
}
