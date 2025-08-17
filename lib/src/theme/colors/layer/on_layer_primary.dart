import 'package:flutter/material.dart';

class OnLayerPrimary extends ThemeExtension<OnLayerPrimary> {
  const OnLayerPrimary({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.shade,
    required this.brand,
    required this.alert,
    required this.warning,
    required this.confirmation,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color shade;
  final Color brand;
  final Color alert;
  final Color warning;
  final Color confirmation;

  @override
  OnLayerPrimary copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? shade,
    Color? brand,
    Color? alert,
    Color? warning,
    Color? confirmation,
  }) => OnLayerPrimary(
    primary: primary ?? this.primary,
    secondary: secondary ?? this.secondary,
    tertiary: tertiary ?? this.tertiary,
    shade: shade ?? this.shade,
    brand: brand ?? this.brand,
    alert: alert ?? this.alert,
    warning: warning ?? this.warning,
    confirmation: confirmation ?? this.confirmation,
  );

  @override
  OnLayerPrimary lerp(OnLayerPrimary? other, double t) => other == null
      ? this
      : OnLayerPrimary(
          primary: Color.lerp(primary, other.primary, t)!,
          secondary: Color.lerp(secondary, other.secondary, t)!,
          tertiary: Color.lerp(tertiary, other.tertiary, t)!,
          shade: Color.lerp(shade, other.shade, t)!,
          brand: Color.lerp(brand, other.brand, t)!,
          alert: Color.lerp(alert, other.alert, t)!,
          warning: Color.lerp(warning, other.warning, t)!,
          confirmation: Color.lerp(confirmation, other.confirmation, t)!,
        );
}
