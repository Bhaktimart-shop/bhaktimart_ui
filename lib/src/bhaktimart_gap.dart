import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BhaktimartGap extends StatelessWidget {
  const BhaktimartGap._(this._gapSize);

  factory BhaktimartGap.xs1() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingXS1);
  factory BhaktimartGap.s1() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingS1);
  factory BhaktimartGap.s2() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingS2);
  factory BhaktimartGap.s3() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingS3);
  factory BhaktimartGap.m1() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingM1);
  factory BhaktimartGap.m2() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingM2);
  factory BhaktimartGap.m3() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingM3);
  factory BhaktimartGap.m4() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingM4);
  factory BhaktimartGap.m5() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingM5);
  factory BhaktimartGap.l1() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingL1);
  factory BhaktimartGap.l2() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingL2);
  factory BhaktimartGap.l3() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingL3);
  factory BhaktimartGap.l4() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingL4);
  factory BhaktimartGap.xl3() =>
      const BhaktimartGap._(_BhaktimartGapSize.spacingXL3);

  final _BhaktimartGapSize _gapSize;

  @override
  Widget build(BuildContext context) {
    final dimensions = context.dimensions;
    final spacing = switch (_gapSize) {
      _BhaktimartGapSize.spacingXS1 => dimensions.spacingXS1,
      _BhaktimartGapSize.spacingS1 => dimensions.spacingS1,
      _BhaktimartGapSize.spacingS2 => dimensions.spacingS2,
      _BhaktimartGapSize.spacingS3 => dimensions.spacingS3,
      _BhaktimartGapSize.spacingM1 => dimensions.spacingM1,
      _BhaktimartGapSize.spacingM2 => dimensions.spacingM2,
      _BhaktimartGapSize.spacingM3 => dimensions.spacingM3,
      _BhaktimartGapSize.spacingM4 => dimensions.spacingM4,
      _BhaktimartGapSize.spacingM5 => dimensions.spacingM5,
      _BhaktimartGapSize.spacingL1 => dimensions.spacingL1,
      _BhaktimartGapSize.spacingL2 => dimensions.spacingL2,
      _BhaktimartGapSize.spacingL3 => dimensions.spacingL3,
      _BhaktimartGapSize.spacingL4 => dimensions.spacingL4,
      _BhaktimartGapSize.spacingXL3 => dimensions.spacingXL3,
    };

    return Gap(spacing);
  }
}

enum _BhaktimartGapSize {
  spacingXS1,
  spacingS1,
  spacingS2,
  spacingS3,
  spacingM1,
  spacingM2,
  spacingM3,
  spacingM4,
  spacingM5,
  spacingL1,
  spacingL2,
  spacingL3,
  spacingL4,
  spacingXL3,
}
