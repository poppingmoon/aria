import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'average_color_provider.g.dart';

@riverpod
Color averageColor(AverageColorRef ref, String blurHash) {
  final value = blurHash
      .substring(2, 6)
      .split('')
      .map(
        r'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz#$%*+,-.:;=?@[]^_{|}~'
            .indexOf,
      )
      .fold(0, (acc, i) => acc * 83 + i);
  return Color(0xFF000000 | value);
}
