import 'package:flutter/material.dart';

class BorderCheckbox extends ThemeExtension<BorderCheckbox> {
  const BorderCheckbox({
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
  BorderCheckbox copyWith({
    Color? activeConfirmation,
    Color? activeBrand,
    Color? inactiveConfirmation,
    Color? inactiveBrand,
  }) => BorderCheckbox(
    activeConfirmation: activeConfirmation ?? this.activeConfirmation,
    activeBrand: activeBrand ?? this.activeBrand,
    inactiveConfirmation: inactiveConfirmation ?? this.inactiveConfirmation,
    inactiveBrand: inactiveBrand ?? this.inactiveBrand,
  );

  @override
  BorderCheckbox lerp(BorderCheckbox? other, double t) => other == null
      ? this
      : BorderCheckbox(
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
