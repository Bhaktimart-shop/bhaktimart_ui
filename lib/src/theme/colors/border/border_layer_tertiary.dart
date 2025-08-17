import 'package:flutter/material.dart';

class BorderLayerTertiary extends ThemeExtension<BorderLayerTertiary> {
  const BorderLayerTertiary({required this.primary});

  final Color primary;

  @override
  BorderLayerTertiary copyWith({Color? primary}) =>
      BorderLayerTertiary(primary: primary ?? this.primary);

  @override
  BorderLayerTertiary lerp(BorderLayerTertiary? other, double t) =>
      other == null
      ? this
      : BorderLayerTertiary(primary: Color.lerp(primary, other.primary, t)!);
}
