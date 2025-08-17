import 'package:flutter/material.dart';

class Fab extends ThemeExtension<Fab> {
  const Fab({
    required this.primary,
    required this.primaryOnHover,
    required this.primaryOnClick,
    required this.primaryDisabled,
    required this.secondary,
    required this.secondaryOnHover,
    required this.secondaryOnClick,
    required this.secondaryDisabled,
    required this.secondaryBrand,
    required this.secondaryBrandOnHover,
    required this.secondaryBrandOnClick,
    required this.secondaryBrandDisabled,
  });

  final Color primary;
  final Color primaryOnHover;
  final Color primaryOnClick;
  final Color primaryDisabled;
  final Color secondary;
  final Color secondaryOnHover;
  final Color secondaryOnClick;
  final Color secondaryDisabled;
  final Color secondaryBrand;
  final Color secondaryBrandOnHover;
  final Color secondaryBrandOnClick;
  final Color secondaryBrandDisabled;

  @override
  Fab copyWith({
    Color? primary,
    Color? primaryOnHover,
    Color? primaryOnClick,
    Color? primaryDisabled,
    Color? secondary,
    Color? secondaryOnHover,
    Color? secondaryOnClick,
    Color? secondaryDisabled,
    Color? secondaryBrand,
    Color? secondaryBrandOnHover,
    Color? secondaryBrandOnClick,
    Color? secondaryBrandDisabled,
  }) => Fab(
    primary: primary ?? this.primary,
    primaryOnHover: primaryOnHover ?? this.primaryOnHover,
    primaryOnClick: primaryOnClick ?? this.primaryOnClick,
    primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    secondary: secondary ?? this.secondary,
    secondaryOnHover: secondaryOnHover ?? this.secondaryOnHover,
    secondaryOnClick: secondaryOnClick ?? this.secondaryOnClick,
    secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
    secondaryBrand: secondaryBrand ?? this.secondaryBrand,
    secondaryBrandOnHover: secondaryBrandOnHover ?? this.secondaryBrandOnHover,
    secondaryBrandOnClick: secondaryBrandOnClick ?? this.secondaryBrandOnClick,
    secondaryBrandDisabled:
        secondaryBrandDisabled ?? this.secondaryBrandDisabled,
  );

  @override
  Fab lerp(Fab? other, double t) => other == null
      ? this
      : Fab(
          primary: Color.lerp(primary, other.primary, t)!,
          primaryOnHover: Color.lerp(primaryOnHover, other.primaryOnHover, t)!,
          primaryOnClick: Color.lerp(primaryOnClick, other.primaryOnClick, t)!,
          primaryDisabled: Color.lerp(
            primaryDisabled,
            other.primaryDisabled,
            t,
          )!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          secondaryOnHover: Color.lerp(
            secondaryOnHover,
            other.secondaryOnHover,
            t,
          )!,
          secondaryOnClick: Color.lerp(
            secondaryOnClick,
            other.secondaryOnClick,
            t,
          )!,
          secondaryDisabled: Color.lerp(
            secondaryDisabled,
            other.secondaryDisabled,
            t,
          )!,
          secondaryBrand: Color.lerp(secondaryBrand, other.secondaryBrand, t)!,
          secondaryBrandOnHover: Color.lerp(
            secondaryBrandOnHover,
            other.secondaryBrandOnHover,
            t,
          )!,
          secondaryBrandOnClick: Color.lerp(
            secondaryBrandOnClick,
            other.secondaryBrandOnClick,
            t,
          )!,
          secondaryBrandDisabled: Color.lerp(
            secondaryBrandDisabled,
            other.secondaryBrandDisabled,
            t,
          )!,
        );
}
