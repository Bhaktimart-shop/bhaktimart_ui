// ignore_for_file: no-magic-number

import 'dart:math' as math;

import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';

/// A loading indicator widget that displays a rotating donut with a gradient.
class BhaktimartLoader extends StatefulWidget {
  /// Creates a loader with a specified size and theme.
  ///
  /// The [dimension] parameter specifies both width and height.
  /// The [isInverted] parameter switches between light and dark appearance.
  const BhaktimartLoader({
    required this.dimension,
    this.isInverted = false,
    super.key,
  });

  /// The width and height of the loader.
  final double dimension;

  /// Whether to look best on inverted backgrounds.
  final bool isInverted;

  @override
  State<BhaktimartLoader> createState() => _BhaktimartLoaderState();
}

class _BhaktimartLoaderState extends State<BhaktimartLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return SizedBox(
      width: widget.dimension,
      height: widget.dimension,
      child: RotationTransition(
        turns: Tween<double>(begin: 0, end: 1).animate(_controller),
        child: CustomPaint(
          painter: _LoaderPainter(
            isInverted: widget.isInverted,
            colors: colors,
          ),
          size: Size(widget.dimension, widget.dimension),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _LoaderPainter extends CustomPainter {
  const _LoaderPainter({required this.isInverted, required this.colors});

  final bool isInverted;
  final BhaktimartColors colors;

  double _degToRad(double degrees) => degrees * math.pi / 180;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final thickness = radius * 0.33;
    final centerPoint = radius;

    final gradientColors = isInverted
        ? [Colors.transparent, colors.on.backgroundInverted.primary]
        : [Colors.transparent, colors.on.backgroundPrimary.primary];

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness
      ..strokeCap = StrokeCap.round
      ..shader =
          SweepGradient(
            colors: gradientColors,
            tileMode: TileMode.repeated,
            startAngle: _degToRad(270),
            endAngle: _degToRad(270 + 360.0),
          ).createShader(
            Rect.fromCircle(
              center: Offset(centerPoint, centerPoint),
              radius: 0,
            ),
          );

    final capSize = thickness * 0.7;
    final capToDegree = capSize / centerPoint;

    final startAngle = _degToRad(270) + capToDegree;
    final sweepAngle = _degToRad(360) - (capToDegree * 2);

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - thickness / 2),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_LoaderPainter oldDelegate) =>
      oldDelegate.isInverted != isInverted;
}
