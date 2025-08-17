import 'package:flutter/material.dart';

class OnCheckbox extends ThemeExtension<OnCheckbox> {
  const OnCheckbox({
    required this.activeConfirmation,
    required this.activeBrand,
    required this.inactive,
  });

  final Color activeConfirmation;
  final Color activeBrand;
  final Color inactive;

  @override
  OnCheckbox copyWith({
    Color? activeConfirmation,
    Color? activeBrand,
    Color? inactive,
  }) => OnCheckbox(
    activeConfirmation: activeConfirmation ?? this.activeConfirmation,
    activeBrand: activeBrand ?? this.activeBrand,
    inactive: inactive ?? this.inactive,
  );

  @override
  OnCheckbox lerp(OnCheckbox? other, double t) => other == null
      ? this
      : OnCheckbox(
          activeConfirmation: Color.lerp(
            activeConfirmation,
            other.activeConfirmation,
            t,
          )!,
          activeBrand: Color.lerp(activeBrand, other.activeBrand, t)!,
          inactive: Color.lerp(inactive, other.inactive, t)!,
        );
}
