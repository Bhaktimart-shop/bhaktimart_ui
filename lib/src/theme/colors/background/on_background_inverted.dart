import 'package:flutter/material.dart';

class OnBackgroundInverted extends ThemeExtension<OnBackgroundInverted> {
  const OnBackgroundInverted({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.shade,
    required this.brand,
    required this.brandA,
    required this.brandB,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color shade;
  final Color brand;
  final Color brandA;
  final Color brandB;

  @override
  OnBackgroundInverted copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? shade,
    Color? brand,
    Color? brandA,
    Color? brandB,
  }) => OnBackgroundInverted(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
    tertiary: tertiary ?? this.tertiary,
    shade: shade ?? this.shade,
    brand: brand ?? this.brand,
    brandA: brandA ?? this.brandA,
    brandB: brandB ?? this.brandB,
  );

  @override
  OnBackgroundInverted lerp(OnBackgroundInverted? other, double t) =>
      other == null
      ? this
      : OnBackgroundInverted(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          tertiary: Color.lerp(tertiary, other.tertiary, t)!,
          shade: Color.lerp(shade, other.shade, t)!,
          brand: Color.lerp(brand, other.brand, t)!,
          brandA: Color.lerp(brandA, other.brandA, t)!,
          brandB: Color.lerp(brandB, other.brandB, t)!,
        );
}
