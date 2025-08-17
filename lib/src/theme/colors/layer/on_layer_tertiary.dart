import 'package:flutter/material.dart';

class OnLayerTertiary extends ThemeExtension<OnLayerTertiary> {
  const OnLayerTertiary({
    required this.primary,
    required this.secondary,
    required this.brand,
  });

  final Color primary;
  final Color secondary;
  final Color brand;

  @override
  OnLayerTertiary copyWith({Color? primary, Color? secondary, Color? brand}) =>
      OnLayerTertiary(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        brand: brand ?? this.brand,
      );

  @override
  OnLayerTertiary lerp(OnLayerTertiary? other, double t) => other == null
      ? this
      : OnLayerTertiary(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          brand: Color.lerp(brand, other.brand, t)!,
        );
}
