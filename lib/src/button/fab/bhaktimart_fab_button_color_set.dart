import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

/// Floating Action Button Color set defining FAB colors from BhaktimartColors.
class BhaktimartFabButtonColorSet {
  const BhaktimartFabButtonColorSet({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onHoverColor,
    required this.onClickColor,
    required this.loadingColor,
    required this.disabledColor,
  });

  factory BhaktimartFabButtonColorSet.primary(BuildContext context) {
    final colors = context.colors;
    final primary = colors.fab.primary;

    return BhaktimartFabButtonColorSet(
      backgroundColor: primary,
      foregroundColor: colors.on.fab.primary,
      onHoverColor: colors.fab.primaryOnHover,
      onClickColor: colors.fab.primaryOnClick,
      loadingColor: primary,
      disabledColor: colors.fab.primaryDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.primaryDisabled(BuildContext context) {
    final colors = context.colors;
    final primaryDisabled = colors.fab.primaryDisabled;
    return BhaktimartFabButtonColorSet(
      backgroundColor: primaryDisabled,
      foregroundColor: colors.on.fab.primaryDisabled,
      onHoverColor: primaryDisabled,
      onClickColor: primaryDisabled,
      loadingColor: primaryDisabled,
      disabledColor: primaryDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.secondary(BuildContext context) {
    final colors = context.colors;
    final secondary = colors.fab.secondary;

    return BhaktimartFabButtonColorSet(
      backgroundColor: secondary,
      foregroundColor: colors.on.fab.secondary,
      onHoverColor: colors.fab.secondaryOnHover,
      onClickColor: colors.fab.secondaryOnClick,
      loadingColor: colors.fab.secondary,
      disabledColor: colors.fab.secondaryDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.secondaryDisabled(BuildContext context) {
    final colors = context.colors;
    final secondaryDisabled = colors.fab.secondaryDisabled;
    return BhaktimartFabButtonColorSet(
      backgroundColor: secondaryDisabled,
      foregroundColor: colors.on.fab.secondaryDisabled,
      onHoverColor: secondaryDisabled,
      onClickColor: secondaryDisabled,
      loadingColor: secondaryDisabled,
      disabledColor: secondaryDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.secondaryBrand(BuildContext context) {
    final colors = context.colors;
    final secondaryBrand = colors.fab.secondaryBrand;

    return BhaktimartFabButtonColorSet(
      backgroundColor: secondaryBrand,
      foregroundColor: colors.on.fab.secondaryBrand,
      onHoverColor: colors.fab.secondaryBrandOnHover,
      onClickColor: colors.fab.secondaryBrandOnClick,
      loadingColor: secondaryBrand,
      disabledColor: colors.fab.secondaryBrandDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.secondaryBrandDisabled(
    BuildContext context,
  ) {
    final colors = context.colors;
    final secondaryBrandDisabled = colors.fab.secondaryBrandDisabled;
    return BhaktimartFabButtonColorSet(
      backgroundColor: secondaryBrandDisabled,
      foregroundColor: colors.on.fab.secondaryBrandDisabled,
      onHoverColor: secondaryBrandDisabled,
      onClickColor: secondaryBrandDisabled,
      loadingColor: secondaryBrandDisabled,
      disabledColor: secondaryBrandDisabled,
    );
  }

  factory BhaktimartFabButtonColorSet.secondaryNeutral(BuildContext context) {
    final colors = context.colors;
    return BhaktimartFabButtonColorSet(
      backgroundColor: Colors.transparent,
      foregroundColor: colors.on.backgroundPrimary.secondary,
      onHoverColor: colors.layer.secondary,
      onClickColor: colors.layer.primary,
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
