import 'package:bhaktimart_ui/src/theme/colors/color_tuple.dart';
import 'package:flutter/material.dart';

class OnTag extends ThemeExtension<OnTag> {
  const OnTag({
    required this.brand,
    required this.brandA,
    required this.brandB,
    required this.neutral,
    required this.neutralA,
    required this.neutralB,
    required this.neutralC,
    required this.alert,
    required this.alertA,
    required this.warning,
    required this.confirmation,
    required this.confirmationA,
    required this.confirmationB,
    required this.active,
    required this.modified,
  });

  final Color brand;
  final Color brandA;
  final ColorTuple brandB;
  final Color neutral;
  final Color neutralA;
  final Color neutralB;
  final ColorTuple neutralC;
  final Color alert;
  final Color alertA;
  final Color warning;
  final Color confirmation;
  final Color confirmationA;
  final Color confirmationB;
  final Color active;
  final Color modified;

  @override
  OnTag copyWith({
    Color? brand,
    Color? brandA,
    ColorTuple? brandB,
    Color? neutral,
    Color? neutralA,
    Color? neutralB,
    ColorTuple? neutralC,
    Color? alert,
    Color? alertA,
    Color? warning,
    Color? confirmation,
    Color? confirmationA,
    Color? confirmationB,
    Color? active,
    Color? modified,
  }) => OnTag(
    brand: brand ?? this.brand,
    brandA: brandA ?? this.brandA,
    brandB: brandB ?? this.brandB,
    neutral: neutral ?? this.neutral,
    neutralA: neutralA ?? this.neutralA,
    neutralB: neutralB ?? this.neutralB,
    neutralC: neutralC ?? this.neutralC,
    alert: alert ?? this.alert,
    alertA: alertA ?? this.alertA,
    warning: warning ?? this.warning,
    confirmation: confirmation ?? this.confirmation,
    confirmationA: confirmationA ?? this.confirmationA,
    confirmationB: confirmationB ?? this.confirmationB,
    active: active ?? this.active,
    modified: modified ?? this.modified,
  );

  @override
  OnTag lerp(OnTag? other, double t) => other == null
      ? this
      : OnTag(
          brand: Color.lerp(brand, other.brand, t)!,
          brandA: Color.lerp(brandA, other.brandA, t)!,
          brandB: brandB.lerp(other.brandB, t),
          neutral: Color.lerp(neutral, other.neutral, t)!,
          neutralA: Color.lerp(neutralA, other.neutralA, t)!,
          neutralB: Color.lerp(neutralB, other.neutralB, t)!,
          neutralC: neutralC.lerp(other.neutralC, t),
          alert: Color.lerp(alert, other.alert, t)!,
          alertA: Color.lerp(alertA, other.alertA, t)!,
          warning: Color.lerp(warning, other.warning, t)!,
          confirmation: Color.lerp(confirmation, other.confirmation, t)!,
          confirmationA: Color.lerp(confirmationA, other.confirmationA, t)!,
          confirmationB: Color.lerp(confirmationB, other.confirmationB, t)!,
          active: Color.lerp(active, other.active, t)!,
          modified: Color.lerp(modified, other.modified, t)!,
        );
}
