import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

/// Button Color set defining our buttons colors from Bhaktimart Colors.
class ButtonColorSet {
  const ButtonColorSet({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onHoverColor,
    required this.onClickColor,
    required this.loadingColor,
    required this.disabledColor,
  });

  factory ButtonColorSet.primary(BuildContext context) {
    final colors = context.colors;
    return ButtonColorSet(
      backgroundColor: colors.button.primary,
      foregroundColor: colors.on.button.primary,
      onHoverColor: colors.button.primaryOnHover,
      onClickColor: colors.button.primaryOnClick,
      loadingColor: colors.button.primaryLoading,
      disabledColor: colors.button.primaryDisabled,
    );
  }

  factory ButtonColorSet.primaryDisabled(BuildContext context) {
    final colors = context.colors;
    final primaryDisabled = colors.button.primaryDisabled;
    return ButtonColorSet(
      backgroundColor: primaryDisabled,
      foregroundColor: colors.on.button.primaryDisabled,
      onHoverColor: primaryDisabled,
      onClickColor: primaryDisabled,
      loadingColor: primaryDisabled,
      disabledColor: primaryDisabled,
    );
  }

  factory ButtonColorSet.secondary(BuildContext context) {
    final colors = context.colors;
    return ButtonColorSet(
      backgroundColor: colors.button.secondary,
      foregroundColor: colors.on.button.secondary,
      onHoverColor: colors.button.secondaryOnHover,
      onClickColor: colors.button.secondaryOnClick,
      loadingColor: colors.button.secondaryLoading,
      disabledColor: colors.button.secondaryDisabled,
    );
  }

  factory ButtonColorSet.secondaryDisabled(BuildContext context) {
    final colors = context.colors;
    final secondaryDisabled = colors.button.secondaryDisabled;
    return ButtonColorSet(
      backgroundColor: secondaryDisabled,
      foregroundColor: colors.on.button.secondaryDisabled,
      onHoverColor: secondaryDisabled,
      onClickColor: secondaryDisabled,
      loadingColor: secondaryDisabled,
      disabledColor: secondaryDisabled,
    );
  }

  factory ButtonColorSet.brand(BuildContext context) {
    final colors = context.colors;
    return ButtonColorSet(
      backgroundColor: colors.button.brand,
      foregroundColor: colors.on.button.brand,
      onHoverColor: colors.button.brandOnHover,
      onClickColor: colors.button.brandOnClick,
      loadingColor: colors.button.brandLoading,
      disabledColor: colors.button.brandDisabled,
    );
  }

  factory ButtonColorSet.brandDisabled(BuildContext context) {
    final colors = context.colors;
    final brandDisabled = colors.button.brandDisabled;
    return ButtonColorSet(
      backgroundColor: brandDisabled,
      foregroundColor: colors.on.button.brandDisabled,
      onHoverColor: brandDisabled,
      onClickColor: brandDisabled,
      loadingColor: brandDisabled,
      disabledColor: brandDisabled,
    );
  }

  factory ButtonColorSet.destructive(BuildContext context) {
    final colors = context.colors;
    return ButtonColorSet(
      backgroundColor: colors.button.destructive,
      foregroundColor: colors.on.button.destructive,
      onHoverColor: colors.button.destructiveOnHover,
      onClickColor: colors.button.destructiveOnClick,
      loadingColor: colors.button.destructiveLoading,
      disabledColor: colors.button.destructiveDisabled,
    );
  }

  factory ButtonColorSet.destructiveDisabled(BuildContext context) {
    final colors = context.colors;
    final destructiveDisabled = colors.button.destructiveDisabled;
    return ButtonColorSet(
      backgroundColor: destructiveDisabled,
      foregroundColor: colors.on.button.destructiveDisabled,
      onHoverColor: destructiveDisabled,
      onClickColor: destructiveDisabled,
      loadingColor: destructiveDisabled,
      disabledColor: destructiveDisabled,
    );
  }

  factory ButtonColorSet.filter(BuildContext context) {
    final colors = context.colors;
    final filter = colors.button.filter;
    final filterSelected = colors.button.filterSelected;
    final onFilter = colors.on.button.filter;

    return ButtonColorSet(
      backgroundColor: filter,
      foregroundColor: onFilter,
      onHoverColor: colors.button.filterSelected,
      onClickColor: filterSelected,
      loadingColor: filter,
      disabledColor: filter,
    );
  }

  factory ButtonColorSet.filterDisabled(BuildContext context) {
    final colors = context.colors;
    final filter = colors.button.filter;
    final onFilter = colors.on.button.filter;

    return ButtonColorSet(
      backgroundColor: filter,
      foregroundColor: onFilter,
      onHoverColor: filter,
      onClickColor: filter,
      loadingColor: filter,
      disabledColor: filter,
    );
  }

  factory ButtonColorSet.inverted(BuildContext context) {
    final colors = context.colors;
    final inverted = colors.button.invertedOnHover;
    return ButtonColorSet(
      backgroundColor: Colors.transparent,
      foregroundColor: colors.on.button.inverted,
      onHoverColor: inverted,
      onClickColor: inverted,
      loadingColor: Colors.transparent,
      disabledColor: Colors.transparent,
    );
  }

  factory ButtonColorSet.invertedDisabled(BuildContext context) {
    final colors = context.colors;
    return ButtonColorSet(
      backgroundColor: Colors.transparent,
      foregroundColor: colors.on.button.invertedDisabled,
      onHoverColor: Colors.transparent,
      onClickColor: Colors.transparent,
      loadingColor: Colors.transparent,
      disabledColor: Colors.transparent,
    );
  }

  final Color backgroundColor;
  final Color foregroundColor;
  final Color onHoverColor;
  final Color onClickColor;
  final Color loadingColor;
  final Color disabledColor;
}
