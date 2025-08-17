import 'package:flutter/material.dart';

class Overlay extends ThemeExtension<Overlay> {
  const Overlay({required this.primary, required this.secondary});

  final Color primary;
  final Color secondary;

  @override
  Overlay copyWith({Color? primary, Color? secondary}) => Overlay(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
  );

  @override
  Overlay lerp(Overlay? other, double t) => other == null
      ? this
      : Overlay(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
        );
}
