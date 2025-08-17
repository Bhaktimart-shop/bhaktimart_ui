import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class BhaktimartVectorIcon extends StatelessWidget {
  const BhaktimartVectorIcon(this.iconName, {this.size, this.color, super.key});

  final String iconName;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) => VectorGraphic(
    loader: AssetBytesLoader(iconName),
    width: size,
    height: size,
    colorFilter: color == null
        ? null
        : ColorFilter.mode(color!, BlendMode.srcIn),
  );
}
