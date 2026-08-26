import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/note_channel_info_extension.dart';

class const ChannelColorBarBox({
  super.key,
  required final Note? note,
  final double barBottomPadding = 0.0,
  required final Widget child,
}) extends StatelessWidget {
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

class const ColorBarBox({
  super.key,
  required final Color color,
  required final double width,
  final double barBottomPadding = 0.0,
  required final Widget child,
}) extends StatelessWidget {
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

class const _ColorBarPainter({
  required final Color color,
  required final double width,
  required final TextDirection direction,
  required final double bottomPadding,
}) extends CustomPainter {
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
