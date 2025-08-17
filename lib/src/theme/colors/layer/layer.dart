import 'package:flutter/material.dart';

class Layer extends ThemeExtension<Layer> {
  const Layer({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;

  @override
  Layer copyWith({Color? primary, Color? secondary, Color? tertiary}) => Layer(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
    tertiary: tertiary ?? this.tertiary,
  );

  @override
  Layer lerp(Layer? other, double t) => other == null
      ? this
      : Layer(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          tertiary: Color.lerp(tertiary, other.tertiary, t)!,
        );
}
