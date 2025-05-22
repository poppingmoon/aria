import 'package:flutter/material.dart';

class CatEar extends AnimatedWidget {
  const CatEar({
    super.key,
    required super.listenable,
    required this.color,
    required this.height,
    this.flipped = false,
  });

  final Color color;
  final double height;
  final bool flipped;

  // pi - 2 * atan2(2, 3)
  static const double _angleOffset = 1.96558744;

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: height),
      child: RepaintBoundary(
        child: CustomPaint(
          painter: CatEarPainter(
            color: color,
            animation: flipped
                ? _angleOffset - animation.value
                : animation.value,
          ),
        ),
      ),
    );
  }
}

class CatEarPainter extends CustomPainter {
  const CatEarPainter({required this.color, required this.animation});

  final Color color;
  final double animation;

  // pi / 6
  static const double _sx = 0.52359877;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.rotate(animation);
    canvas.skew(_sx, 0);
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        -size.height * 0.5,
        -size.height * 0.5,
        size.height * 0.5,
        size.height * 0.5,
        topLeft: Radius.circular(size.height * 0.25),
        topRight: Radius.circular(size.height * 0.75),
        bottomLeft: Radius.circular(size.height * 0.75),
        bottomRight: Radius.circular(size.height * 0.75),
      ),
      Paint()..color = color,
    );
    canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        -size.height * 0.3,
        -size.height * 0.3,
        size.height * 0.3,
        size.height * 0.3,
        topLeft: Radius.circular(size.height * 0.15),
        topRight: Radius.circular(size.height * 0.45),
        bottomLeft: Radius.circular(size.height * 0.45),
        bottomRight: Radius.circular(size.height * 0.45),
      ),
      Paint()..color = const Color(0xffdf548f),
    );
  }

  @override
  bool shouldRepaint(CatEarPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.animation != animation;
  }
}
