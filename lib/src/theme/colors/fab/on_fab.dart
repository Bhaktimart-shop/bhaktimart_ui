import 'package:flutter/material.dart';

class OnFab extends ThemeExtension<OnFab> {
  const OnFab({
    required this.primary,
    required this.primaryDisabled,
    required this.secondary,
    required this.secondaryDisabled,
    required this.secondaryBrand,
    required this.secondaryBrandDisabled,
  });

  final Color primary;
  final Color primaryDisabled;
  final Color secondary;
  final Color secondaryDisabled;
  final Color secondaryBrand;
  final Color secondaryBrandDisabled;

  @override
  OnFab copyWith({
    Color? primary,
    Color? primaryDisabled,
    Color? secondary,
    Color? secondaryDisabled,
    Color? secondaryBrand,
    Color? secondaryBrandDisabled,
  }) => OnFab(
    primary: primary ?? this.primary,
    primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    secondary: secondary ?? this.secondary,
    secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
    secondaryBrand: secondaryBrand ?? this.secondaryBrand,
    secondaryBrandDisabled:
        secondaryBrandDisabled ?? this.secondaryBrandDisabled,
  );

  @override
  OnFab lerp(OnFab? other, double t) => other == null
      ? this
      : OnFab(
          primary: Color.lerp(primary, other.primary, t)!,
          primaryDisabled: Color.lerp(
            primaryDisabled,
            other.primaryDisabled,
            t,
          )!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          secondaryDisabled: Color.lerp(
            secondaryDisabled,
            other.secondaryDisabled,
            t,
          )!,
          secondaryBrand: Color.lerp(secondaryBrand, other.secondaryBrand, t)!,
          secondaryBrandDisabled: Color.lerp(
            secondaryBrandDisabled,
            other.secondaryBrandDisabled,
            t,
          )!,
        );
}
