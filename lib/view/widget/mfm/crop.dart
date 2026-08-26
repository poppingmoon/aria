import 'dart:math';

import 'package:material_ui/material_ui.dart';

import '../../../util/safe_parse_double.dart';

class const Crop({
  super.key,
  required final Map<String, dynamic> args,
  required final Widget child,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final top = safeParseDouble(args['top']) ?? 0.0;
    final right = safeParseDouble(args['right']) ?? 0.0;
    final bottom = safeParseDouble(args['bottom']) ?? 0.0;
    final left = safeParseDouble(args['left']) ?? 0.0;

    return ClipRect(
      clipper: _InsetClipper(
        left: left * 0.01,
        top: top * 0.01,
        right: right * 0.01,
        bottom: bottom * 0.01,
      ),
      child: child,
    );
  }
}

class const _InsetClipper({
  required final double left,
  required final double top,
  required final double right,
  required final double bottom,
}) extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    final left = size.width * this.left;
    final top = size.height * this.top;
    final right = size.width * (1 - this.right);
    final bottom = size.height * (1 - this.bottom);

    return Rect.fromLTRB(left, top, max(left, right), max(top, bottom));
  }

  @override
  bool shouldReclip(_InsetClipper oldClipper) {
    return left != oldClipper.left ||
        top != oldClipper.top ||
        right != oldClipper.right ||
        bottom != oldClipper.bottom;
  }
}
