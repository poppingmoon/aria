import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as material show Border;

import '../../../util/safe_parse_color.dart';
import '../../../util/safe_parse_double.dart';

enum _BorderStyle {
  hidden,
  dotted,
  dashed,
  solid,
  double,
  groove,
  ridge,
  inset,
  outset,
}

class Border extends StatelessWidget {
  const Border({super.key, required this.args, required this.child});

  final Map<String, dynamic> args;
  final Widget child;

  (Color, Color) _get3DColors(Color color) {
    // https://searchfox.org/mozilla-central/source/layout/base/nsCSSColorUtils.cpp#22
    const darkerScale = 2.0 / 3.0;
    if (color.r == 0 && color.g == 0 && color.b == 0) {
      return (
        Color.fromRGBO(76, 76, 76, color.a),
        Color.fromRGBO(178, 178, 178, color.a),
      );
    } else {
      return (
        Color.from(
          alpha: color.a,
          red: color.r * darkerScale,
          green: color.g * darkerScale,
          blue: color.b * darkerScale,
        ),
        color,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final borderStyle = switch (args['style']) {
      'hidden' => _BorderStyle.hidden,
      'dotted' => _BorderStyle.dotted,
      'dashed' => _BorderStyle.dashed,
      'double' => _BorderStyle.double,
      'groove' => _BorderStyle.groove,
      'ridge' => _BorderStyle.ridge,
      'inset' => _BorderStyle.inset,
      'outset' => _BorderStyle.outset,
      _ => _BorderStyle.solid,
    };
    final color =
        safeParseColor(args['color']) ?? Theme.of(context).colorScheme.primary;
    final width = safeParseDouble(args['width']) ?? 1.0;
    final radius = safeParseDouble(args['radius']) ?? 0.0;
    final noClip = args.containsKey('noclip');
    final child = ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      clipBehavior: noClip ? Clip.none : Clip.hardEdge,
      child: this.child,
    );

    if (width <= 0) {
      return child;
    }
    switch (borderStyle) {
      case _BorderStyle.hidden:
        return child;
      case _BorderStyle.dotted || _BorderStyle.dashed:
        return DottedBorder(
          color: color,
          strokeWidth: width,
          borderType: BorderType.RRect,
          dashPattern: borderStyle == _BorderStyle.dotted
              ? [0, width * 2.0]
              : [width * 2.5, width * 2.5],
          radius: Radius.circular(radius),
          padding: EdgeInsets.all(width / 2),
          strokeCap: borderStyle == _BorderStyle.dotted
              ? StrokeCap.round
              : StrokeCap.butt,
          child: child,
        );
      case _BorderStyle.solid:
        return Container(
          decoration: BoxDecoration(
            border: material.Border.all(color: color, width: width),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: child,
        );
      case _BorderStyle.double:
        return Container(
          decoration: BoxDecoration(
            border: material.Border.all(color: color, width: width / 3),
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: EdgeInsets.all(width / 3),
          child: Container(
            decoration: BoxDecoration(
              border: material.Border.all(color: color, width: width / 3),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: child,
          ),
        );
      case _BorderStyle.groove || _BorderStyle.ridge:
        // A borderRadius can only be given on borders with uniform colors.
        final (darkColor, lightColor) = radius > 0
            ? (color, color)
            : _get3DColors(color);
        final colors = borderStyle == _BorderStyle.groove
            ? (darkColor, lightColor)
            : (lightColor, darkColor);
        return Container(
          decoration: BoxDecoration(
            border: material.Border(
              top: BorderSide(color: colors.$1, width: width / 2),
              right: BorderSide(color: colors.$2, width: width / 2),
              bottom: BorderSide(color: colors.$2, width: width / 2),
              left: BorderSide(color: colors.$1, width: width / 2),
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: material.Border(
                top: BorderSide(color: colors.$2, width: width / 2),
                right: BorderSide(color: colors.$1, width: width / 2),
                bottom: BorderSide(color: colors.$1, width: width / 2),
                left: BorderSide(color: colors.$2, width: width / 2),
              ),
              borderRadius: BorderRadius.circular(radius),
            ),
            child: child,
          ),
        );
      case _BorderStyle.inset || _BorderStyle.outset:
        // A borderRadius can only be given on borders with uniform colors.
        final (darkColor, lightColor) = radius > 0
            ? (color, color)
            : _get3DColors(color);
        final colors = borderStyle == _BorderStyle.inset
            ? (darkColor, lightColor)
            : (lightColor, darkColor);
        return Container(
          decoration: BoxDecoration(
            border: material.Border(
              top: BorderSide(color: colors.$1, width: width),
              right: BorderSide(color: colors.$2, width: width),
              bottom: BorderSide(color: colors.$2, width: width),
              left: BorderSide(color: colors.$1, width: width),
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          child: child,
        );
    }
  }
}
