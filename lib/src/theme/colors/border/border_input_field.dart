import 'package:flutter/material.dart';

class BorderInputField extends ThemeExtension<BorderInputField> {
  const BorderInputField({
    required this.standard,
    required this.selected,
    required this.alert,
  });

  final Color standard;
  final Color selected;
  final Color alert;

  @override
  BorderInputField copyWith({Color? standard, Color? selected, Color? alert}) =>
      BorderInputField(
        standard: standard ?? this.standard,
        selected: selected ?? this.selected,
        alert: alert ?? this.alert,
      );

  @override
  BorderInputField lerp(BorderInputField? other, double t) => other == null
      ? this
      : BorderInputField(
          standard: Color.lerp(standard, other.standard, t)!,
          selected: Color.lerp(selected, other.selected, t)!,
          alert: Color.lerp(alert, other.alert, t)!,
        );
}
