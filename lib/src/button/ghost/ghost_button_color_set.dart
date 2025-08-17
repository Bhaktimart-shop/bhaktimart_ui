import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

/// Color set defining ghost button colors from Bhaktimart Colors.
class GhostButtonColorSet {
  const GhostButtonColorSet({
    required this.foregroundColor,
    required this.onHoverColor,
    required this.onClickColor,
    required this.disabledColor,
  });

  factory GhostButtonColorSet.primary(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.primary,
      onHoverColor: ghostButton.primaryOnHover,
      onClickColor: ghostButton.primaryOnClick,
      disabledColor: ghostButton.primaryDisabled,
    );
  }

  factory GhostButtonColorSet.primaryDisabled(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.primaryDisabled,
      onHoverColor: ghostButton.primaryDisabled,
      onClickColor: ghostButton.primaryDisabled,
      disabledColor: ghostButton.primaryDisabled,
    );
  }

  factory GhostButtonColorSet.brand(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.brand,
      onHoverColor: ghostButton.brandOnHover,
      onClickColor: ghostButton.brandOnClick,
      disabledColor: ghostButton.brandDisabled,
    );
  }

  factory GhostButtonColorSet.brandDisabled(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.brandDisabled,
      onHoverColor: ghostButton.brandDisabled,
      onClickColor: ghostButton.brandDisabled,
      disabledColor: ghostButton.brandDisabled,
    );
  }

  factory GhostButtonColorSet.destructive(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.destructive,
      onHoverColor: ghostButton.destructiveOnHover,
      onClickColor: ghostButton.destructiveOnClick,
      disabledColor: ghostButton.destructiveDisabled,
    );
  }

  factory GhostButtonColorSet.destructiveDisabled(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.destructiveDisabled,
      onHoverColor: ghostButton.destructiveDisabled,
      onClickColor: ghostButton.destructiveDisabled,
      disabledColor: ghostButton.destructiveDisabled,
    );
  }

  factory GhostButtonColorSet.secondary(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.icon,
      onHoverColor: ghostButton.iconOnHover,
      onClickColor: ghostButton.iconOnClick,
      disabledColor: ghostButton.iconDisabled,
    );
  }

  factory GhostButtonColorSet.secondaryDisabled(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.iconDisabled,
      onHoverColor: ghostButton.iconDisabled,
      onClickColor: ghostButton.iconDisabled,
      disabledColor: ghostButton.iconDisabled,
    );
  }

  factory GhostButtonColorSet.inverted(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.iconInverted,
      onHoverColor: ghostButton.iconInvertedOnHover,
      onClickColor: ghostButton.iconInvertedOnClick,
      disabledColor: ghostButton.iconInvertedDisabled,
    );
  }

  factory GhostButtonColorSet.invertedDisabled(BuildContext context) {
    final ghostButton = Theme.of(
      context,
    ).extension<BhaktimartColors>()!.ghostButton;
    return GhostButtonColorSet(
      foregroundColor: ghostButton.iconInvertedDisabled,
      onHoverColor: ghostButton.iconInvertedDisabled,
      onClickColor: ghostButton.iconInvertedDisabled,
      disabledColor: ghostButton.iconInvertedDisabled,
    );
  }

  final Color foregroundColor;
  final Color onHoverColor;
  final Color onClickColor;
  final Color disabledColor;
}
