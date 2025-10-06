import 'dart:math';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class LineChart extends StatelessWidget {
  const LineChart({super.key, required this.chart});

  final List<int> chart;

  @override
  Widget build(BuildContext context) {
    final maxValue = max(1.0, chart.max);
    final points = chart.reversed
        .mapIndexed(
          (index, value) =>
              (x: index / (chart.length - 1), y: 1 - value / maxValue),
        )
        .toList();

    return CustomPaint(
      painter: _LineChartPainter(
        points: points,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class _LineChartPainter extends CustomPainter {
  const _LineChartPainter({required this.points, required this.color});

  final List<({double x, double y})> points;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final points = this.points
        .map((point) => Offset(size.width * point.x, size.height * point.y))
        .toList();
    final path = Path();
    path.moveTo(points.first.dx, points.first.dy);
    for (final point in points.skip(1)) {
      path.lineTo(point.dx, point.dy);
    }
    canvas.drawPath(
      path,
      Paint()
        ..style = PaintingStyle.stroke
        ..color = color
        ..strokeWidth = 1.0
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawPoints(
      PointMode.points,
      [points.last],
      Paint()
        ..color = color
        ..strokeWidth = 3.0
        ..strokeCap = StrokeCap.round,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    canvas.drawPath(
      path,
      Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color.withValues(alpha: 0.65), color.withValues(alpha: 0.0)],
        ).createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height)),
    );
  }

  @override
  bool shouldRepaint(_LineChartPainter oldDelegate) {
    return oldDelegate.color != color ||
        !const ListEquality<({double x, double y})>().equals(
          oldDelegate.points,
          points,
        );
  }
}
