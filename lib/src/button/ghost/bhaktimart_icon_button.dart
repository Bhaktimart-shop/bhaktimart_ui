import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/button/ghost/ghost_button_color_set.dart';
import 'package:flutter/material.dart';
import 'package:focusable_control_builder/focusable_control_builder.dart';

/// BhaktimartIconButton displaying icons buttons from [BhaktimartVectorIcon] based on [GhostButtonColorSet] properties.
class BhaktimartIconButton extends StatelessWidget {
  factory BhaktimartIconButton.small({
    required String iconName,
    required VoidCallback? onPressed,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartIconButton._(
    iconName: iconName,
    onPressed: onPressed,
    iconSize: _mediumIconSize,
    isDisabled: isDisabled,
    key: key,
  );

  factory BhaktimartIconButton.medium({
    required String iconName,
    required VoidCallback? onPressed,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartIconButton._(
    iconName: iconName,
    onPressed: onPressed,
    iconSize: _largeIconSize,
    isDisabled: isDisabled,
    key: key,
  );

  factory BhaktimartIconButton.large({
    required String iconName,
    required VoidCallback? onPressed,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartIconButton._(
    iconName: iconName,
    onPressed: onPressed,
    iconSize: _xLargeIconSize,
    isDisabled: isDisabled,
    key: key,
  );

  factory BhaktimartIconButton.invertedLarge({
    required String iconName,
    required VoidCallback? onPressed,
    bool isDisabled = false,
    Key? key,
  }) => BhaktimartIconButton._custom(
    iconName: iconName,
    onPressed: onPressed,
    iconSize: _xLargeIconSize,
    isDisabled: isDisabled,
    colorSetBuilder: isDisabled
        ? GhostButtonColorSet.invertedDisabled
        : GhostButtonColorSet.inverted,
    key: key,
  );

  factory BhaktimartIconButton._custom({
    required String iconName,
    required VoidCallback? onPressed,
    required double iconSize,
    required bool isDisabled,
    required GhostButtonColorSet Function(BuildContext context)?
    colorSetBuilder,
    Key? key,
  }) => BhaktimartIconButton.__(
    iconName: iconName,
    onPressed: onPressed,
    iconSize: iconSize,
    isDisabled: isDisabled,
    colorSetBuilder: colorSetBuilder,
    key: key,
  );

  const BhaktimartIconButton._({
    required this.iconName,
    required this.onPressed,
    required this.iconSize,
    required this.isDisabled,
    super.key,
  }) : colorSetBuilder = null;

  const BhaktimartIconButton.__({
    required this.iconName,
    required this.onPressed,
    required this.iconSize,
    required this.isDisabled,
    required this.colorSetBuilder,
    super.key,
  });

  static const _dimension = 48.0;

  static const _mediumIconSize = 16.0;
  static const _largeIconSize = 24.0;
  static const _xLargeIconSize = 36.0;

  final String iconName;
  final VoidCallback? onPressed;
  final double iconSize;
  final bool isDisabled;
  final GhostButtonColorSet Function(BuildContext context)? colorSetBuilder;

  @override
  Widget build(BuildContext context) {
    final colorSet = colorSetBuilder == null
        ? (isDisabled
              ? GhostButtonColorSet.primaryDisabled(context)
              : GhostButtonColorSet.primary(context))
        : colorSetBuilder!(context);

    final transparentState = WidgetStateProperty.all(Colors.transparent);
    return FocusableControlBuilder(
      builder: (context, control) {
        final foregroundColor = isDisabled
            ? colorSet.disabledColor
            : (control.isHovered || control.isFocused
                  ? colorSet.onHoverColor
                  : colorSet.foregroundColor);

        return SizedBox.square(
          dimension: _dimension,
          child: IconButton(
            padding: EdgeInsets.zero,
            style: ButtonStyle(
              shape: WidgetStateProperty.all(const CircleBorder()),
              overlayColor: transparentState,
              splashFactory: NoSplash.splashFactory,
              backgroundColor: transparentState,
              foregroundColor: WidgetStateProperty.resolveWith(
                (states) => foregroundColor,
              ),
            ),
            onPressed: isDisabled ? null : onPressed,
            icon: BhaktimartVectorIcon(
              iconName,
              size: iconSize,
              color: foregroundColor,
            ),
          ),
        );
      },
    );
  }
}
