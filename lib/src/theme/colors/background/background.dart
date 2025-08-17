import 'package:flutter/material.dart';

class Background extends ThemeExtension<Background> {
  const Background({
    required this.primary,
    required this.brand,
    required this.inverted,
  });

  final Color primary;
  final Color brand;
  final Color inverted;

  @override
  Background copyWith({Color? primary, Color? brand, Color? inverted}) =>
      Background(
        primary: primary ?? this.primary,
        brand: brand ?? this.brand,
        inverted: inverted ?? this.inverted,
      );

  @override
  Background lerp(Background? other, double t) => other == null
      ? this
      : Background(
          primary: Color.lerp(primary, other.primary, t)!,
          brand: Color.lerp(brand, other.brand, t)!,
          inverted: Color.lerp(inverted, other.inverted, t)!,
        );
}
