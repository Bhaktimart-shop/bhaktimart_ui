import 'package:flutter/material.dart';

class Button extends ThemeExtension<Button> {
  const Button({
    required this.primary,
    required this.primaryOnHover,
    required this.primaryOnClick,
    required this.primaryLoading,
    required this.primaryDisabled,
    required this.secondary,
    required this.secondaryOnHover,
    required this.secondaryOnClick,
    required this.secondaryLoading,
    required this.secondaryDisabled,
    required this.brand,
    required this.brandOnHover,
    required this.brandOnClick,
    required this.brandLoading,
    required this.brandDisabled,
    required this.destructive,
    required this.destructiveOnHover,
    required this.destructiveOnClick,
    required this.destructiveLoading,
    required this.destructiveDisabled,
    required this.filter,
    required this.filterSelected,
    required this.invertedOnHover,
  });

  final Color primary;
  final Color primaryOnHover;
  final Color primaryOnClick;
  final Color primaryLoading;
  final Color primaryDisabled;
  final Color secondary;
  final Color secondaryOnHover;
  final Color secondaryOnClick;
  final Color secondaryLoading;
  final Color secondaryDisabled;
  final Color brand;
  final Color brandOnHover;
  final Color brandOnClick;
  final Color brandLoading;
  final Color brandDisabled;
  final Color destructive;
  final Color destructiveOnHover;
  final Color destructiveOnClick;
  final Color destructiveLoading;
  final Color destructiveDisabled;
  final Color filter;
  final Color filterSelected;
  final Color invertedOnHover;

  @override
  Button copyWith({
    Color? primary,
    Color? primaryOnHover,
    Color? primaryOnClick,
    Color? primaryLoading,
    Color? primaryDisabled,
    Color? secondary,
    Color? secondaryOnHover,
    Color? secondaryOnClick,
    Color? secondaryLoading,
    Color? secondaryDisabled,
    Color? brand,
    Color? brandOnHover,
    Color? brandOnClick,
    Color? brandLoading,
    Color? brandDisabled,
    Color? destructive,
    Color? destructiveOnHover,
    Color? destructiveOnClick,
    Color? destructiveLoading,
    Color? destructiveDisabled,
    Color? filter,
    Color? filterSelected,
    Color? invertedOnHover,
  }) => Button(
    primary: primary ?? this.primary,
    primaryOnHover: primaryOnHover ?? this.primaryOnHover,
    primaryOnClick: primaryOnClick ?? this.primaryOnClick,
    primaryLoading: primaryLoading ?? this.primaryLoading,
    primaryDisabled: primaryDisabled ?? this.primaryDisabled,
    secondary: secondary ?? this.secondary,
    secondaryOnHover: secondaryOnHover ?? this.secondaryOnHover,
    secondaryOnClick: secondaryOnClick ?? this.secondaryOnClick,
    secondaryLoading: secondaryLoading ?? this.secondaryLoading,
    secondaryDisabled: secondaryDisabled ?? this.secondaryDisabled,
    brand: brand ?? this.brand,
    brandOnHover: brandOnHover ?? this.brandOnHover,
    brandOnClick: brandOnClick ?? this.brandOnClick,
    brandLoading: brandLoading ?? this.brandLoading,
    brandDisabled: brandDisabled ?? this.brandDisabled,
    destructive: destructive ?? this.destructive,
    destructiveOnHover: destructiveOnHover ?? this.destructiveOnHover,
    destructiveOnClick: destructiveOnClick ?? this.destructiveOnClick,
    destructiveLoading: destructiveLoading ?? this.destructiveLoading,
    destructiveDisabled: destructiveDisabled ?? this.destructiveDisabled,
    filter: filter ?? this.filter,
    filterSelected: filterSelected ?? this.filterSelected,
    invertedOnHover: invertedOnHover ?? this.invertedOnHover,
  );

  @override
  Button lerp(Button? other, double t) => other == null
      ? this
      : Button(
          primary: Color.lerp(primary, other.primary, t)!,
          primaryOnHover: Color.lerp(primaryOnHover, other.primaryOnHover, t)!,
          primaryOnClick: Color.lerp(primaryOnClick, other.primaryOnClick, t)!,
          primaryLoading: Color.lerp(primaryLoading, other.primaryLoading, t)!,
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
          secondaryLoading: Color.lerp(
            secondaryLoading,
            other.secondaryLoading,
            t,
          )!,
          secondaryDisabled: Color.lerp(
            secondaryDisabled,
            other.secondaryDisabled,
            t,
          )!,
          brand: Color.lerp(brand, other.brand, t)!,
          brandOnHover: Color.lerp(brandOnHover, other.brandOnHover, t)!,
          brandOnClick: Color.lerp(brandOnClick, other.brandOnClick, t)!,
          brandLoading: Color.lerp(brandLoading, other.brandLoading, t)!,
          brandDisabled: Color.lerp(brandDisabled, other.brandDisabled, t)!,
          destructive: Color.lerp(destructive, other.destructive, t)!,
          destructiveOnHover: Color.lerp(
            destructiveOnHover,
            other.destructiveOnHover,
            t,
          )!,
          destructiveOnClick: Color.lerp(
            destructiveOnClick,
            other.destructiveOnClick,
            t,
          )!,
          destructiveLoading: Color.lerp(
            destructiveLoading,
            other.destructiveLoading,
            t,
          )!,
          destructiveDisabled: Color.lerp(
            destructiveDisabled,
            other.destructiveDisabled,
            t,
          )!,
          filter: Color.lerp(filter, other.filter, t)!,
          filterSelected: Color.lerp(filterSelected, other.filterSelected, t)!,
          invertedOnHover: Color.lerp(
            invertedOnHover,
            other.invertedOnHover,
            t,
          )!,
        );
}
