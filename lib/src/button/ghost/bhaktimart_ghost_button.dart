import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/button/ghost/ghost_button_color_set.dart';
import 'package:flutter/material.dart';

/// BhaktimartGhostButton displaying button text, links or trailing & leading icons using [BhaktimartVectorIcon].
class BhaktimartGhostButton extends StatelessWidget {
  /// Primary small ghost button with icon size 12 and caption text.
  BhaktimartGhostButton.primarySmall(
    BuildContext context, {
    required this.label,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    super.key,
  }) : colorSet = isDisabled
           ? GhostButtonColorSet.primaryDisabled(context)
           : GhostButtonColorSet.primary(context),
       iconSize = _smallIconSize,
       textStyle = context.fonts.captionM;

  /// Primary medium ghost button with icon size 16 and label text.
  BhaktimartGhostButton.primaryMedium(
    BuildContext context, {
    required this.label,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    super.key,
  }) : colorSet = isDisabled
           ? GhostButtonColorSet.primaryDisabled(context)
           : GhostButtonColorSet.primary(context),
       iconSize = _mediumIconSize,
       textStyle = context.fonts.labelM;

  /// Brand small ghost button with icon size 12 and caption text.
  BhaktimartGhostButton.brandSmall(
    BuildContext context, {
    required this.label,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    super.key,
  }) : colorSet = isDisabled
           ? GhostButtonColorSet.brandDisabled(context)
           : GhostButtonColorSet.brand(context),
       iconSize = _smallIconSize,
       textStyle = context.fonts.captionM;

  /// Destructive small ghost button with icon size 12 and caption text.
  BhaktimartGhostButton.destructiveSmall(
    BuildContext context, {
    required this.label,
    required this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.isDisabled = false,
    super.key,
  }) : colorSet = isDisabled
           ? GhostButtonColorSet.destructiveDisabled(context)
           : GhostButtonColorSet.destructive(context),
       iconSize = _smallIconSize,
       textStyle = context.fonts.captionM;

  static const _smallIconSize = 12.0;
  static const _mediumIconSize = 16.0;
  static const _height = 48.0;

  final VoidCallback onPressed;
  final String label;
  final String? leadingIcon;
  final String? trailingIcon;
  final double iconSize;
  final bool isDisabled;
  final GhostButtonColorSet colorSet;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    final foregroundColor = isDisabled
        ? colorSet.disabledColor
        : colorSet.foregroundColor;
    final textDecoration = !isDisabled
        ? TextDecoration.underline
        : TextDecoration.none;
    return SizedBox(
      height: _height,

      child: TextButton(
        onPressed: isDisabled ? null : onPressed,
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all(
            textStyle.copyWith(decoration: textDecoration),
          ),
          foregroundColor: WidgetStateProperty.all(foregroundColor),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          padding: WidgetStatePropertyAll(EdgeInsets.zero),
          iconColor: WidgetStateProperty.all(foregroundColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leadingIcon != null) ...[
              BhaktimartVectorIcon(
                leadingIcon!,
                size: iconSize,
                color: foregroundColor,
              ),
              BhaktimartGap.s1(),
            ],
            Text(label),
            if (trailingIcon != null) ...[
              BhaktimartGap.s1(),
              BhaktimartVectorIcon(
                trailingIcon!,
                size: iconSize,
                color: foregroundColor,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
