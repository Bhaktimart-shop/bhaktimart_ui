import 'package:flutter/material.dart';

class ColorTuple extends ThemeExtension<ColorTuple> {
  const ColorTuple({required this.primary, required this.secondary});

  final Color primary;
  final Color secondary;

  @override
  ColorTuple copyWith({Color? primary, Color? secondary}) => ColorTuple(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
  );

  @override
  ColorTuple lerp(ColorTuple? other, double t) => other == null
      ? this
      : ColorTuple(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
        );
}
