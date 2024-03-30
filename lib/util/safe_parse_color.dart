import 'dart:ui';

import 'package:tinycolor2/tinycolor2.dart';

Color? safeParseColor(dynamic value) {
  if (value is String) {
    try {
      return TinyColor.fromString(value).toColor();
    } catch (_) {}
  }
  return null;
}
