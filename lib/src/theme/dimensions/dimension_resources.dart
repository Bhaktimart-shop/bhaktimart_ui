import 'dart:ui';

import 'package:flutter/material.dart';

/// Contains spacings and radii used in our apps.
/// Spacings are intended to get used as paddings, margins
/// and to express distances between elements.
/// Radii are intended to get used as border radius.
class DimensionResources extends ThemeExtension<DimensionResources> {
  const DimensionResources({
    required this.spacingXS1,
    required this.spacingS1,
    required this.spacingS2,
    required this.spacingS3,
    required this.spacingM1,
    required this.spacingM2,
    required this.spacingM3,
    required this.spacingM4,
    required this.spacingM5,
    required this.spacingL1,
    required this.spacingL2,
    required this.spacingL3,
    required this.spacingL4,
    required this.spacingXL3,
    required this.radiusXS1,
    required this.radiusXS2,
    required this.radiusS1,
    required this.radiusS2,
    required this.radiusS3,
    required this.radiusM1,
    required this.radiusM2,
    required this.radiusM3,
    required this.radiusL1,
  });

  final double spacingXS1;
  final double spacingS1;
  final double spacingS2;
  final double spacingS3;
  final double spacingM1;
  final double spacingM2;
  final double spacingM3;
  final double spacingM4;
  final double spacingM5;
  final double spacingL1;
  final double spacingL2;
  final double spacingL3;
  final double spacingL4;
  final double spacingXL3;

  final double radiusXS1;
  final double radiusXS2;
  final double radiusS1;
  final double radiusS2;
  final double radiusS3;
  final double radiusM1;
  final double radiusM2;
  final double radiusM3;
  final double radiusL1;

  @override
  DimensionResources copyWith({
    double? spacingXS1,
    double? spacingS1,
    double? spacingS2,
    double? spacingS3,
    double? spacingM1,
    double? spacingM2,
    double? spacingM3,
    double? spacingM4,
    double? spacingM5,
    double? spacingL1,
    double? spacingL2,
    double? spacingL3,
    double? spacingL4,
    double? radiusXS1,
    double? radiusXS2,
    double? radiusS1,
    double? radiusS2,
    double? radiusS3,
    double? radiusM1,
    double? radiusM2,
    double? radiusM3,
    double? radiusL1,
    double? spacingXL3,
  }) => DimensionResources(
    spacingXS1: spacingXS1 ?? this.spacingXS1,
    spacingS1: spacingS1 ?? this.spacingS1,
    spacingS2: spacingS2 ?? this.spacingS2,
    spacingS3: spacingS3 ?? this.spacingS3,
    spacingM1: spacingM1 ?? this.spacingM1,
    spacingM2: spacingM2 ?? this.spacingM2,
    spacingM3: spacingM3 ?? this.spacingM3,
    spacingM4: spacingM4 ?? this.spacingM4,
    spacingM5: spacingM5 ?? this.spacingM5,
    spacingL1: spacingL1 ?? this.spacingL1,
    spacingL2: spacingL2 ?? this.spacingL2,
    spacingL3: spacingL3 ?? this.spacingL3,
    spacingL4: spacingL4 ?? this.spacingL4,
    spacingXL3: spacingXL3 ?? this.spacingXL3,
    radiusXS1: radiusXS1 ?? this.radiusXS1,
    radiusXS2: radiusXS2 ?? this.radiusXS2,
    radiusS1: radiusS1 ?? this.radiusS1,
    radiusS2: radiusS2 ?? this.radiusS2,
    radiusS3: radiusS3 ?? this.radiusS3,
    radiusM1: radiusM1 ?? this.radiusM1,
    radiusM2: radiusM2 ?? this.radiusM2,
    radiusM3: radiusM3 ?? this.radiusM3,
    radiusL1: radiusL1 ?? this.radiusL1,
  );

  @override
  DimensionResources lerp(DimensionResources? other, double t) =>
      other is DimensionResources
      ? DimensionResources(
          spacingXS1: lerpDouble(spacingXS1, other.spacingXS1, t)!,
          spacingS1: lerpDouble(spacingS1, other.spacingS1, t)!,
          spacingS2: lerpDouble(spacingS2, other.spacingS2, t)!,
          spacingS3: lerpDouble(spacingS3, other.spacingS3, t)!,
          spacingM1: lerpDouble(spacingM1, other.spacingM1, t)!,
          spacingM2: lerpDouble(spacingM2, other.spacingM2, t)!,
          spacingM3: lerpDouble(spacingM3, other.spacingM3, t)!,
          spacingM4: lerpDouble(spacingM4, other.spacingM4, t)!,
          spacingM5: lerpDouble(spacingM5, other.spacingM5, t)!,
          spacingL1: lerpDouble(spacingL1, other.spacingL1, t)!,
          spacingL2: lerpDouble(spacingL2, other.spacingL2, t)!,
          spacingL3: lerpDouble(spacingL3, other.spacingL3, t)!,
          spacingL4: lerpDouble(spacingL4, other.spacingL4, t)!,
          spacingXL3: lerpDouble(spacingXL3, other.spacingXL3, t)!,
          radiusXS1: lerpDouble(radiusXS1, other.radiusXS1, t)!,
          radiusXS2: lerpDouble(radiusXS2, other.radiusXS2, t)!,
          radiusS1: lerpDouble(radiusS1, other.radiusS1, t)!,
          radiusS2: lerpDouble(radiusS2, other.radiusS2, t)!,
          radiusS3: lerpDouble(radiusS3, other.radiusS3, t)!,
          radiusM1: lerpDouble(radiusM1, other.radiusM1, t)!,
          radiusM2: lerpDouble(radiusM2, other.radiusM2, t)!,
          radiusM3: lerpDouble(radiusM3, other.radiusM3, t)!,
          radiusL1: lerpDouble(radiusL1, other.radiusL1, t)!,
        )
      : this;
}

extension DimensionResourceExtension on ThemeData {
  DimensionResources get dimensionResources => extension<DimensionResources>()!;
}
