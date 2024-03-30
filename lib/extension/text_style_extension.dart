import 'package:flutter/material.dart';

extension TextStyleExtension on TextStyle {
  double get lineHeight {
    return (fontSize ?? 14.0) * (height ?? 1.35);
  }
}
