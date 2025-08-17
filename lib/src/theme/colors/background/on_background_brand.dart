import 'package:flutter/material.dart';

class OnBackgroundBrand extends ThemeExtension<OnBackgroundBrand> {
  const OnBackgroundBrand({required this.primary});

  final Color primary;

  @override
  OnBackgroundBrand copyWith({Color? primary}) =>
      OnBackgroundBrand(primary: primary ?? this.primary);

  @override
  OnBackgroundBrand lerp(OnBackgroundBrand? other, double t) => other == null
      ? this
      : OnBackgroundBrand(primary: Color.lerp(primary, other.primary, t)!);
}
