import 'package:flutter/material.dart';

class Primitives extends ThemeExtension<Primitives> {
  const Primitives({
    required this.neutrals10,
    required this.neutrals20,
    required this.neutrals30,
    required this.neutrals40,
    required this.neutrals60,
    required this.neutrals70,
    required this.neutrals90,
    required this.neutrals99,
    required this.neutrals100,
    required this.brand50,
    required this.brand60,
    required this.brand70,
    required this.brand90,
    required this.brand99,
    required this.alert60,
    required this.alert90,
    required this.warning50,
    required this.warning60,
    required this.warning90,
    required this.confirmation50,
    required this.confirmation60,
    required this.confirmation70,
    required this.confirmation90,
  });

  final Color neutrals10;
  final Color neutrals20;
  final Color neutrals30;
  final Color neutrals40;
  final Color neutrals60;
  final Color neutrals70;
  final Color neutrals90;
  final Color neutrals99;
  final Color neutrals100;
  final Color brand50;
  final Color brand60;
  final Color brand70;
  final Color brand90;
  final Color brand99;
  final Color alert60;
  final Color alert90;
  final Color warning50;
  final Color warning60;
  final Color warning90;
  final Color confirmation50;
  final Color confirmation60;
  final Color confirmation70;
  final Color confirmation90;

  @override
  Primitives copyWith({
    Color? neutrals10,
    Color? neutrals20,
    Color? neutrals30,
    Color? neutrals40,
    Color? neutrals60,
    Color? neutrals70,
    Color? neutrals90,
    Color? neutrals99,
    Color? neutrals100,
    Color? brand50,
    Color? brand60,
    Color? brand70,
    Color? brand90,
    Color? brand99,
    Color? alert60,
    Color? alert90,
    Color? warning50,
    Color? warning60,
    Color? warning90,
    Color? confirmation50,
    Color? confirmation60,
    Color? confirmation70,
    Color? confirmation90,
  }) => Primitives(
    neutrals10: neutrals10 ?? this.neutrals10,
    neutrals20: neutrals20 ?? this.neutrals20,
    neutrals30: neutrals30 ?? this.neutrals30,
    neutrals40: neutrals40 ?? this.neutrals40,
    neutrals60: neutrals60 ?? this.neutrals60,
    neutrals70: neutrals70 ?? this.neutrals70,
    neutrals90: neutrals90 ?? this.neutrals90,
    neutrals99: neutrals99 ?? this.neutrals99,
    neutrals100: neutrals100 ?? this.neutrals100,
    brand50: brand50 ?? this.brand50,
    brand60: brand60 ?? this.brand60,
    brand70: brand70 ?? this.brand70,
    brand90: brand90 ?? this.brand90,
    brand99: brand99 ?? this.brand99,
    alert60: alert60 ?? this.alert60,
    alert90: alert90 ?? this.alert90,
    warning50: warning50 ?? this.warning50,
    warning60: warning60 ?? this.warning60,
    warning90: warning90 ?? this.warning90,
    confirmation50: confirmation50 ?? this.confirmation50,
    confirmation60: confirmation60 ?? this.confirmation60,
    confirmation70: confirmation70 ?? this.confirmation70,
    confirmation90: confirmation90 ?? this.confirmation90,
  );

  @override
  Primitives lerp(Primitives? other, double t) => other == null
      ? this
      : Primitives(
          neutrals10: Color.lerp(neutrals10, other.neutrals10, t)!,
          neutrals20: Color.lerp(neutrals20, other.neutrals20, t)!,
          neutrals30: Color.lerp(neutrals30, other.neutrals30, t)!,
          neutrals40: Color.lerp(neutrals40, other.neutrals40, t)!,
          neutrals60: Color.lerp(neutrals60, other.neutrals60, t)!,
          neutrals70: Color.lerp(neutrals70, other.neutrals70, t)!,
          neutrals90: Color.lerp(neutrals90, other.neutrals90, t)!,
          neutrals99: Color.lerp(neutrals99, other.neutrals99, t)!,
          neutrals100: Color.lerp(neutrals100, other.neutrals100, t)!,
          brand50: Color.lerp(brand50, other.brand50, t)!,
          brand60: Color.lerp(brand60, other.brand60, t)!,
          brand70: Color.lerp(brand70, other.brand70, t)!,
          brand90: Color.lerp(brand90, other.brand90, t)!,
          brand99: Color.lerp(brand99, other.brand99, t)!,
          alert60: Color.lerp(alert60, other.alert60, t)!,
          alert90: Color.lerp(alert90, other.alert90, t)!,
          warning50: Color.lerp(warning50, other.warning50, t)!,
          warning60: Color.lerp(warning60, other.warning60, t)!,
          warning90: Color.lerp(warning90, other.warning90, t)!,
          confirmation50: Color.lerp(confirmation50, other.confirmation50, t)!,
          confirmation60: Color.lerp(confirmation60, other.confirmation60, t)!,
          confirmation70: Color.lerp(confirmation70, other.confirmation70, t)!,
          confirmation90: Color.lerp(confirmation90, other.confirmation90, t)!,
        );
}
