import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class BhaktimartVectorImage extends StatelessWidget {
  const BhaktimartVectorImage(this.name, {this.width, this.height, super.key});

  final String name;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => VectorGraphic(
    loader: AssetBytesLoader(name),
    width: width,
    height: height,
  );
}
