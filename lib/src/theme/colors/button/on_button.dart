import 'package:flutter/material.dart';

class OnButton extends ThemeExtension<OnButton> {
  const OnButton({
    required this.primary,
    required this.primaryDisabled,
    required this.secondary,
    required this.secondaryDisabled,
    required this.brand,
    required this.brandDisabled,
    required this.destructive,
    required this.destructiveDisabled,
    required this.filter,
    required this.inverted,
    required this.invertedDisabled,
  });

  final Color primary;
  final Color primaryDisabled;
  final Color secondary;
  final Color secondaryDisabled;
  final Color brand;
  final Color brandDisabled;
  final Color destructive;
  final Color destructiveDisabled;
  final Color filter;
  final Color inverted;
  final Color invertedDisabled;

  @override
  OnButton copyWith({
    Color? primary,
    Color? primaryDisabled,
    Color? secondary,
    Color? secondaryDisabled,
    Color? brand,
    Color? brandDisabled,
    Color? destructive,
    Color? destructiveDisabled,
    Color? filter,
    Color? inverted,
    Color? invertedDisabled,
  }) => OnButton(
    primary: primary ?? this.primary,
    primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    secondary: secondary ?? this.secondary,
    secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
    brand: brand ?? this.brand,
    brandDisabled: brandDisabled ?? this.brandDisabled,
    destructive: destructive ?? this.destructive,
    destructiveDisabled: destructiveDisabled ?? this.destructiveDisabled,
    filter: filter ?? this.filter,
    inverted: inverted ?? this.inverted,
    invertedDisabled: invertedDisabled ?? this.invertedDisabled,
  );

  @override
  OnButton lerp(OnButton? other, double t) => other == null
      ? this
      : OnButton(
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
          brand: Color.lerp(brand, other.brand, t)!,
          brandDisabled: Color.lerp(brandDisabled, other.brandDisabled, t)!,
          destructive: Color.lerp(destructive, other.destructive, t)!,
          destructiveDisabled: Color.lerp(
            destructiveDisabled,
            other.destructiveDisabled,
            t,
          )!,
          filter: Color.lerp(filter, other.filter, t)!,
          inverted: Color.lerp(inverted, other.inverted, t)!,
          invertedDisabled: Color.lerp(
            invertedDisabled,
            other.invertedDisabled,
            t,
          )!,
        );
}
