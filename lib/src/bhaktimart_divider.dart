import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

class BhaktimartDivider extends StatelessWidget {
  const BhaktimartDivider({this.color, this.height = 0.5, super.key});

  final Color? color;
  final double height;

  @override
  Widget build(BuildContext context) => Divider(
    height: height,
    thickness: height,
    color: color ?? context.colors.on.backgroundPrimary.tertiary,
  );
}
