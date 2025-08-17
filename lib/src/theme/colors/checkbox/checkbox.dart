import 'package:flutter/material.dart';

class Checkbox extends ThemeExtension<Checkbox> {
  const Checkbox({
    required this.activeConfirmation,
    required this.activeBrand,
    required this.inactiveConfirmation,
    required this.inactiveBrand,
  });

  final Color activeConfirmation;
  final Color activeBrand;
  final Color inactiveConfirmation;
  final Color inactiveBrand;

  @override
  Checkbox copyWith({
    Color? activeConfirmation,
    Color? activeBrand,
    Color? inactiveConfirmation,
    Color? inactiveBrand,
  }) => Checkbox(
    activeConfirmation: activeConfirmation ?? this.activeConfirmation,
    activeBrand: activeBrand ?? this.activeBrand,
    inactiveConfirmation: inactiveConfirmation ?? this.inactiveConfirmation,
    inactiveBrand: inactiveBrand ?? this.inactiveBrand,
  );

  @override
  Checkbox lerp(Checkbox? other, double t) => other == null
      ? this
      : Checkbox(
          activeConfirmation: Color.lerp(
            activeConfirmation,
            other.activeConfirmation,
            t,
          )!,
          activeBrand: Color.lerp(activeBrand, other.activeBrand, t)!,
          inactiveConfirmation: Color.lerp(
            inactiveConfirmation,
            other.inactiveConfirmation,
            t,
          )!,
          inactiveBrand: Color.lerp(inactiveBrand, other.inactiveBrand, t)!,
        );
}
