import 'package:flutter/material.dart';

class OnInputField extends ThemeExtension<OnInputField> {
  const OnInputField({
    required this.standard,
    required this.inactive,
    required this.filled,
    required this.alert,
  });

  final Color standard;
  final Color inactive;
  final Color filled;
  final Color alert;

  @override
  OnInputField copyWith({
    Color? standard,
    Color? inactive,
    Color? filled,
    Color? alert,
  }) => OnInputField(
    standard: standard ?? this.standard,
    inactive: inactive ?? this.inactive,
    filled: filled ?? this.filled,
    alert: alert ?? this.alert,
  );

  @override
  OnInputField lerp(OnInputField? other, double t) => other == null
      ? this
      : OnInputField(
          standard: Color.lerp(standard, other.standard, t)!,
          inactive: Color.lerp(inactive, other.inactive, t)!,
          filled: Color.lerp(filled, other.filled, t)!,
          alert: Color.lerp(alert, other.alert, t)!,
        );
}
