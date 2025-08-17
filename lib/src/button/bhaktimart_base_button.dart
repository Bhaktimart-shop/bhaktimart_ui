import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:bhaktimart_ui/src/button/button_color_set.dart';
import 'package:flutter/material.dart';

/// Base button, abstracting shared behavior of all our button properties.
/// Not intended to be used directly.
class BhaktimartBaseButton extends StatelessWidget {
  const BhaktimartBaseButton({
    required this.child,
    required this.isDisabled,
    required this.isBusy,
    required this.textStyle,
    required this.colorSet,
    required this.onPressed,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.isInverted,
    required this.leftPadding,
    required this.rightPadding,
    super.key,
  });

  static const _enabledOpacity = 1.0;
  static const _disabledOpacity = 0.5;
  static const _loadingIndicatorSize = 20.0;

  final Widget child;
  final bool isDisabled;
  final bool isBusy;
  final VoidCallback? onPressed;
  final ButtonColorSet colorSet;
  final TextStyle textStyle;

  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final bool isInverted;

  final double? leftPadding;
  final double? rightPadding;

  bool get _hasLeadingIcon => leadingIcon != null;
  bool get _hasTrailingIcon => trailingIcon != null;

  Color _getOverlayColor(Set<WidgetState> states) => switch (states) {
    _ when states.contains(WidgetState.pressed) => colorSet.onClickColor,
    _ when states.contains(WidgetState.hovered) => colorSet.onHoverColor,
    _ => Colors.transparent,
  };

  Color _getBackgroundColor() => switch ((isDisabled, isBusy)) {
    (true, _) => colorSet.disabledColor,
    (_, true) => colorSet.loadingColor,
    _ => colorSet.backgroundColor,
  };

  @override
  Widget build(BuildContext context) {
    final overlayColorResolver = WidgetStateProperty.resolveWith(
      _getOverlayColor,
    );
    final backgroundColor = _getBackgroundColor();
    final foregroundColor = colorSet.foregroundColor;
    final defaultHorizontalPadding = context.dimensions.spacingM2;

    final shape = StadiumBorder(
      side: isInverted
          ? BorderSide(color: colorSet.foregroundColor)
          : BorderSide.none,
    );

    final content = Row(
      spacing: context.dimensions.spacingS1,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_hasLeadingIcon) leadingIcon!,
        Flexible(child: child),
        if (_hasTrailingIcon) trailingIcon!,
      ],
    );

    final buttonChild = Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Visibility.maintain(visible: !isBusy, child: content),
        Visibility(
          visible: isBusy,
          child: SizedBox.square(
            dimension: _loadingIndicatorSize,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(foregroundColor),
              strokeWidth: 2,
            ),
          ),
        ),
      ],
    );

    final decoratedBox = DecoratedBox(
      decoration: ShapeDecoration(shape: shape),
      child: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: Theme.of(
            context,
          ).iconTheme.copyWith(color: foregroundColor),
        ),
        child: TextButton(
          onPressed: isDisabled || isBusy ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
            disabledForegroundColor: foregroundColor,
            disabledBackgroundColor: backgroundColor,
            textStyle: textStyle,
            padding: EdgeInsets.only(
              left: leftPadding ?? defaultHorizontalPadding,
              right: rightPadding ?? defaultHorizontalPadding,
            ),
            shape: shape,
            splashFactory: NoSplash.splashFactory,
          ).copyWith(overlayColor: overlayColorResolver),
          child: buttonChild,
        ),
      ),
    );

    return IgnorePointer(
      ignoring: isDisabled,
      child: isInverted
          ? Opacity(
              opacity: isDisabled ? _disabledOpacity : _enabledOpacity,
              child: decoratedBox,
            )
          : decoratedBox,
    );
  }
}
