import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/button/fab/bhaktimart_fab_button_color_set.dart';
import 'package:flutter/material.dart';

class BhaktimartFabButton extends StatelessWidget {
  /// Primary Medium (default) FAB with 48x48 and icon size 20.
  factory BhaktimartFabButton.primary(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String iconName,
    bool isBusy = false,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? BhaktimartFabButtonColorSet.primaryDisabled(context)
        : BhaktimartFabButtonColorSet.primary(context),
    iconName: iconName,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    iconSize: _iconSize,
    buttonSize: _mediumButtonSize,
  );

  /// Primary Small FAB with size 40x40 and icon size 20.
  factory BhaktimartFabButton.primarySmall(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String iconName,
    bool isBusy = false,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? BhaktimartFabButtonColorSet.primaryDisabled(context)
        : BhaktimartFabButtonColorSet.primary(context),
    iconName: iconName,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    iconSize: _iconSize,
    buttonSize: _primarySmallButtonSize,
  );

  /// Secondary Small FAB with size 20x20 and icon size 12.
  factory BhaktimartFabButton.secondary(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String iconName,
    bool isBusy = false,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? BhaktimartFabButtonColorSet.secondaryDisabled(context)
        : BhaktimartFabButtonColorSet.secondary(context),
    iconName: iconName,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    iconSize: _smallIconSize,
    buttonSize: _smallButtonSize,
    padding: EdgeInsets.all(context.dimensions.spacingS3),
  );

  /// Secondary Brand Small FAB with size 20x20 and icon size 12.
  factory BhaktimartFabButton.secondaryBrandSmall(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String iconName,
    bool isBusy = false,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? BhaktimartFabButtonColorSet.secondaryBrandDisabled(context)
        : BhaktimartFabButtonColorSet.secondaryBrand(context),
    iconName: iconName,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    iconSize: _smallIconSize,
    buttonSize: _smallButtonSize,
    padding: EdgeInsets.all(context.dimensions.spacingS3),
  );

  /// Text FAB with secondary brand colors for text displays use cases eg. pagination.
  factory BhaktimartFabButton.textSecondaryBrand(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String text,
    bool isBusy = false,
    bool isDisabled = false,
    double? buttonSize,
    TextStyle? textStyle,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: isDisabled
        ? BhaktimartFabButtonColorSet.secondaryBrandDisabled(context)
        : BhaktimartFabButtonColorSet.secondaryBrand(context),
    text: text,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    buttonSize: buttonSize ?? _defaultTextButtonSize,
    textStyle: textStyle,
  );

  /// Text FAB for transparent background with secondary neutral colors.
  factory BhaktimartFabButton.textSecondaryNeutral(
    BuildContext context, {
    required VoidCallback? onPressed,
    required String text,
    bool isBusy = false,
    bool isDisabled = false,
    double? buttonSize,
    TextStyle? textStyle,
    Key? key,
  }) => BhaktimartFabButton._(
    onPressed: onPressed,
    colorSet: BhaktimartFabButtonColorSet.secondaryNeutral(context),
    text: text,
    key: key,
    isBusy: isBusy,
    isDisabled: isDisabled,
    buttonSize: buttonSize ?? _defaultTextButtonSize,
    textStyle: textStyle,
  );

  const BhaktimartFabButton._({
    required this.onPressed,
    required this.colorSet,
    required this.buttonSize,
    this.iconName,
    this.text,
    this.iconSize,
    this.isBusy = false,
    this.isDisabled = false,
    this.padding = EdgeInsets.zero,
    this.textStyle,
    super.key,
  });

  final VoidCallback? onPressed;
  final BhaktimartFabButtonColorSet colorSet;
  final String? iconName;
  final String? text;
  final bool isBusy;
  final bool isDisabled;
  final double? iconSize;
  final double buttonSize;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  static const _iconSize = 20.0;
  static const _smallIconSize = 12.0;

  static const _mediumButtonSize = 48.0;
  static const _smallButtonSize = 48.0;
  static const _primarySmallButtonSize = 40.0;
  static const _defaultTextButtonSize = 32.0;

  bool get _hasIcon => iconName != null;
  bool get _hasText => text != null;

  @override
  Widget build(BuildContext context) => Container(
    width: buttonSize,
    height: buttonSize,
    padding: padding,
    child: Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          color: colorSet.backgroundColor,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: isDisabled ? null : onPressed,
          customBorder: const CircleBorder(),
          hoverColor: colorSet.onHoverColor,
          splashColor: colorSet.onClickColor,
          child: isBusy
              ? Center(
                  child: SizedBox.square(
                    dimension: iconSize ?? _iconSize,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        colorSet.loadingColor,
                      ),
                    ),
                  ),
                )
              : Center(
                  child: _hasIcon
                      ? BhaktimartVectorIcon(
                          iconName!,
                          size: iconSize ?? _iconSize,
                          color: colorSet.foregroundColor,
                        )
                      : _hasText
                      ? Text(
                          text!,
                          style: (textStyle ?? context.fonts.labelM.semiBold)
                              .copyWith(color: colorSet.foregroundColor),
                          textAlign: TextAlign.center,
                        )
                      : const SizedBox.shrink(),
                ),
        ),
      ),
    ),
  );
}
