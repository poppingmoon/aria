import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/note_channel_info_extension.dart';

class ChannelColorBarBox extends StatelessWidget {
  const ChannelColorBarBox({
    super.key,
    required this.note,
    this.barBottomPadding = 0.0,
    required this.child,
  });

  final Note? note;
  final double barBottomPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final color = note?.channel?.toColor();

    if (color == null) {
      return child;
    } else {
      return ColorBarBox(
        color: color,
        width: 4.0,
        barBottomPadding: barBottomPadding,
        child: child,
      );
    }
  }
}

class ColorBarBox extends StatelessWidget {
  const ColorBarBox({
    super.key,
    required this.color,
    required this.width,
    this.barBottomPadding = 0.0,
    required this.child,
  });

  final Color color;
  final double width;
  final double barBottomPadding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ColorBarPainter(
        color: color,
        width: width,
        direction: Directionality.of(context),
        bottomPadding: barBottomPadding,
      ),
      child: child,
    );
  }
}

class _ColorBarPainter extends CustomPainter {
  const _ColorBarPainter({
    required this.color,
    required this.width,
    required this.direction,
    required this.bottomPadding,
  });

  final Color color;
  final double width;
  final TextDirection direction;
  final double bottomPadding;

  @override
  void paint(Canvas canvas, Size size) {
    final halfWidth = width * 0.5;
    final x = switch (direction) {
      TextDirection.rtl => size.width - halfWidth,
      TextDirection.ltr => halfWidth,
    };
    canvas.drawLine(
      Offset(x, halfWidth),
      Offset(x, size.height - halfWidth - bottomPadding),
      Paint()
        ..color = color
        ..strokeWidth = width
        ..strokeCap = StrokeCap.round,
    );
  }

  @override
  bool shouldRepaint(_ColorBarPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.width != width ||
        oldDelegate.direction != direction ||
        oldDelegate.bottomPadding != bottomPadding;
  }
}
