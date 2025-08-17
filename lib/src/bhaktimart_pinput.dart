import 'package:bhaktimart_ui/src/bhaktimart_gap.dart';
import 'package:bhaktimart_ui/src/theme/build_context_extensions.dart';
import 'package:bhaktimart_ui/src/theme/fonts/font_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class BhaktimartPinput extends StatelessWidget {
  const BhaktimartPinput({
    required this.length,
    this.textController,
    this.focusNode,
    this.validator,
    this.onChanged,
    this.onCompleted,
    this.onSubmitted,
    this.onTap,
    this.textColor,
    this.disabledTextColor,
    this.backgroundColor,
    this.errorBuilder,
    this.keyboardType,
    this.inputFormatters,
    this.isEnabled = true,
    this.isObscured = false,
    super.key,
  });

  final int length;
  final TextEditingController? textController;
  final FocusNode? focusNode;
  final String? Function(String? value)? validator;
  final void Function(String value)? onChanged;
  final void Function(String value)? onCompleted;
  final void Function(String value)? onSubmitted;
  final void Function()? onTap;
  final Color? textColor;
  final Color? disabledTextColor;
  final Color? backgroundColor;
  final Widget Function(String? errorText, String pin)? errorBuilder;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isEnabled;
  final bool isObscured;

  @override
  Widget build(BuildContext context) {
    final (:colors, :dimensions, :fonts) = context.resources;

    final backgroundInverted = colors.on.backgroundInverted;
    final defaultForegroundColor = backgroundInverted.primary;
    final defaultBackgroundColor = backgroundInverted.shade;

    final pinDecoration = BoxDecoration(
      color: backgroundColor ?? defaultBackgroundColor,
      borderRadius: BorderRadius.all(Radius.circular(dimensions.radiusM2)),
    );

    final defaultPinTheme = PinTheme(
      width: 72,
      height: 84,
      textStyle: fonts.displayS.semiBold.copyWith(
        color: textColor ?? defaultForegroundColor,
      ),
      decoration: pinDecoration,
    );

    final disabledPinTheme = defaultPinTheme.copyWith(
      textStyle: defaultPinTheme.textStyle?.copyWith(
        color: disabledTextColor ?? colors.on.backgroundPrimary.tertiary,
      ),
    );

    final cursor = Container(
      width: 5,
      height: 35,
      decoration: BoxDecoration(
        color: textColor ?? defaultForegroundColor,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );

    return Pinput(
      length: length,
      controller: textController,
      focusNode: focusNode,
      defaultPinTheme: defaultPinTheme,
      disabledPinTheme: disabledPinTheme,
      separatorBuilder: (_) => BhaktimartGap.s3(),
      enabled: isEnabled,
      enableSuggestions: false,
      cursor: cursor,
      validator: validator,
      onChanged: onChanged,
      onCompleted: onCompleted,
      onSubmitted: onSubmitted,
      onTap: onTap,
      keyboardType: keyboardType ?? TextInputType.number,
      inputFormatters: inputFormatters ?? const [],
      obscureText: isObscured,
      errorBuilder: errorBuilder,
    );
  }
}
