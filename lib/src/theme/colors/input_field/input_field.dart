import 'package:flutter/material.dart';

class InputField extends ThemeExtension<InputField> {
  const InputField({required this.active, required this.inactive});

  final Color active;
  final Color inactive;

  @override
  InputField copyWith({Color? active, Color? inactive}) => InputField(
    active: active ?? this.active,
    inactive: inactive ?? this.inactive,
  );

  @override
  InputField lerp(InputField? other, double t) => other == null
      ? this
      : InputField(
          active: Color.lerp(active, other.active, t)!,
          inactive: Color.lerp(inactive, other.inactive, t)!,
        );
}
