import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/button/bhaktimart_base_button.dart';
import 'package:bhaktimart_ui/src/button/button_color_set.dart';
import 'package:flutter/material.dart';

/// BhaktimartButton with different variants and sizes including: Primary, Secondary, Brand, Destructive.
class BhaktimartButton extends StatelessWidget {
  /// Primary medium (default) button with height 48.
  factory BhaktimartButton.primary(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Key? key,
    Widget? leadingIcon,
    Widget? trailingIcon,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.primaryDisabled(context)
        : ButtonColorSet.primary(context),
    height: _defaultButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary extra small button with height 28.
  factory BhaktimartButton.primaryExtraSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    Widget? leadingIcon,
    Widget? trailingIcon,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.primaryDisabled(context)
        : ButtonColorSet.primary(context),
    height: _extraSmallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary small button with height 40.
  factory BhaktimartButton.primarySmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.primaryDisabled(context)
        : ButtonColorSet.primary(context),
    height: _smallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary inverted extra small button with height 28.
  factory BhaktimartButton.primaryInvertedExtraSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    Widget? leadingIcon,
    Widget? trailingIcon,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.invertedDisabled(context)
        : ButtonColorSet.inverted(context),
    height: _extraSmallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary inverted small button with height 40.
  factory BhaktimartButton.primaryInvertedSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.invertedDisabled(context)
        : ButtonColorSet.inverted(context),
    height: _smallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary inverted medium button with height 48.
  factory BhaktimartButton.primaryInvertedMedium(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    Widget? leadingIcon,
    Widget? trailingIcon,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.invertedDisabled(context)
        : ButtonColorSet.inverted(context),
    height: _defaultButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary inverted large button with height 60.
  factory BhaktimartButton.primaryInvertedLarge(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    Widget? leadingIcon,
    Widget? trailingIcon,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.invertedDisabled(context)
        : ButtonColorSet.inverted(context),
    height: _largeButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Primary large button with height 60.
  factory BhaktimartButton.primaryLarge(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.primaryDisabled(context)
        : ButtonColorSet.primary(context),
    height: _largeButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Secondary extra small button with height 28.
  factory BhaktimartButton.secondaryExtraSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.secondaryDisabled(context)
        : ButtonColorSet.secondary(context),
    height: _extraSmallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isInverted: true,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Secondary small button with height 40.
  factory BhaktimartButton.secondarySmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.secondaryDisabled(context)
        : ButtonColorSet.secondary(context),
    height: _smallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Secondary button(default) with height 48.
  factory BhaktimartButton.secondary(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.secondaryDisabled(context)
        : ButtonColorSet.secondary(context),
    height: _defaultButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isInverted: true,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Secondary large button with height 60.
  factory BhaktimartButton.secondaryLarge(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.secondaryDisabled(context)
        : ButtonColorSet.secondary(context),
    height: _largeButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Brand extra small button with height 28.
  factory BhaktimartButton.brandExtraSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.brandDisabled(context)
        : ButtonColorSet.brand(context),
    height: _extraSmallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Brand small button with height 40.
  factory BhaktimartButton.brandSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.brandDisabled(context)
        : ButtonColorSet.brand(context),
    height: _smallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Brand button (default) with height 48.
  factory BhaktimartButton.brand(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.brandDisabled(context)
        : ButtonColorSet.brand(context),
    height: _defaultButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Brand large button with height 60.
  factory BhaktimartButton.brandLarge(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.brandDisabled(context)
        : ButtonColorSet.brand(context),
    height: _largeButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Destructive extra small button with height 28.
  factory BhaktimartButton.destructiveExtraSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.destructiveDisabled(context)
        : ButtonColorSet.destructive(context),
    height: _extraSmallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Destructive small button with height 40.
  factory BhaktimartButton.destructiveSmall(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.destructiveDisabled(context)
        : ButtonColorSet.destructive(context),
    height: _smallButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Destructive button (default) with height 48.
  factory BhaktimartButton.destructive(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.destructiveDisabled(context)
        : ButtonColorSet.destructive(context),
    height: _defaultButtonsHeight,
    width: width,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    isInverted: true,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  /// Destructive large button with height 60.
  factory BhaktimartButton.destructiveLarge(
    BuildContext context, {
    required Widget child,
    required VoidCallback? onPressed,
    bool isBusy = false,
    bool isDisabled = false,
    // Null used here to define sizing to fit content.
    // ignore: avoid-nullable-parameters-with-default-values
    double? width = double.infinity,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Key? key,
  }) => BhaktimartButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? ButtonColorSet.destructiveDisabled(context)
        : ButtonColorSet.destructive(context),
    height: _largeButtonsHeight,
    width: width,
    key: key,
    isInverted: true,
    isBusy: isBusy,
    isDisabled: isDisabled,
    leadingIcon: leadingIcon,
    trailingIcon: trailingIcon,
    child: child,
  );

  const BhaktimartButton._({
    required this.child,
    required this.onPressed,
    required this.colorSet,
    this.isBusy = false,
    this.isDisabled = false,
    this.width = double.infinity,
    this.height,
    this.isInverted = false,
    this.leadingIcon,
    this.trailingIcon,
    super.key,
  });

  static const _largeButtonsHeight = 60.0;
  static const _defaultButtonsHeight = 48.0;
  static const _smallButtonsHeight = 40.0;
  static const _extraSmallButtonsHeight = 28.0;

  final Widget child;
  final VoidCallback? onPressed;
  final ButtonColorSet colorSet;
  final double? width;
  final double? height;
  final bool isBusy;
  final bool isDisabled;
  final bool isInverted;
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  @override
  Widget build(BuildContext context) {
    final (:dimensions, colors: _, :fonts) = context.resources;

    final textStyle = switch (height) {
      _extraSmallButtonsHeight => fonts.captionM,
      _smallButtonsHeight => fonts.labelM,
      _ => fonts.labelL,
    }.copyWith(overflow: TextOverflow.ellipsis);

    final hasLeadingIcon = leadingIcon != null;
    final hasTrailingIcon = trailingIcon != null;

    final defaultPadding = switch (height) {
      _extraSmallButtonsHeight => dimensions.spacingM1,
      _smallButtonsHeight => dimensions.spacingM2,
      _largeButtonsHeight => dimensions.spacingM4,
      _ => dimensions.spacingM3,
    };

    final reducedPadding = switch (height) {
      _extraSmallButtonsHeight => dimensions.spacingS3,
      _smallButtonsHeight => dimensions.spacingM1,
      _largeButtonsHeight => dimensions.spacingM3,
      _ => dimensions.spacingM2,
    };

    final leftPadding = width == null
        ? (hasLeadingIcon ? reducedPadding : defaultPadding)
        : null;
    final rightPadding = width == null
        ? (hasTrailingIcon ? reducedPadding : defaultPadding)
        : null;

    return Container(
      width: width,
      constraints: BoxConstraints(minHeight: height ?? _defaultButtonsHeight),
      child: BhaktimartBaseButton(
        isDisabled: isDisabled,
        isBusy: isBusy,
        textStyle: textStyle,
        colorSet: colorSet,
        isInverted: isInverted,
        onPressed: onPressed,
        leadingIcon: leadingIcon,
        trailingIcon: trailingIcon,
        leftPadding: leftPadding,
        rightPadding: rightPadding,
        child: child,
      ),
    );
  }
}
