import 'package:flutter/material.dart';

class Tag extends ThemeExtension<Tag> {
  const Tag({
    required this.brand,
    required this.brandA,
    required this.brandB,
    required this.neutral,
    required this.neutralA,
    required this.neutralB,
    required this.neutralC,
    required this.neutralD,
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
  final Color brandB;
  final Color neutral;
  final Color neutralA;
  final Color neutralB;
  final Color neutralC;
  final Color neutralD;
  final Color alert;
  final Color alertA;
  final Color warning;
  final Color confirmation;
  final Color confirmationA;
  final Color confirmationB;
  final Color active;
  final Color modified;

  @override
  Tag copyWith({
    Color? brand,
    Color? brandA,
    Color? brandB,
    Color? neutral,
    Color? neutralA,
    Color? neutralB,
    Color? neutralC,
    Color? neutralD,
    Color? alert,
    Color? alertA,
    Color? warning,
    Color? confirmation,
    Color? confirmationA,
    Color? confirmationB,
    Color? active,
    Color? modified,
  }) => Tag(
    brand: brand ?? this.brand,
    brandA: brandA ?? this.brandA,
    brandB: brandB ?? this.brandB,
    neutral: neutral ?? this.neutral,
    neutralA: neutralA ?? this.neutralA,
    neutralB: neutralB ?? this.neutralB,
    neutralC: neutralC ?? this.neutralC,
    neutralD: neutralD ?? this.neutralD,
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
  Tag lerp(Tag? other, double t) => other == null
      ? this
      : Tag(
          brand: Color.lerp(brand, other.brand, t)!,
          brandA: Color.lerp(brandA, other.brandA, t)!,
          brandB: Color.lerp(brandB, other.brandB, t)!,
          neutral: Color.lerp(neutral, other.neutral, t)!,
          neutralA: Color.lerp(neutralA, other.neutralA, t)!,
          neutralB: Color.lerp(neutralB, other.neutralB, t)!,
          neutralC: Color.lerp(neutralC, other.neutralC, t)!,
          neutralD: Color.lerp(neutralD, other.neutralD, t)!,
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
