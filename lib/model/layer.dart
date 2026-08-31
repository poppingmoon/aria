import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'layer.freezed.dart';

sealed class Layer {
  Offset get offset;
  double get scale;
  double get angle;
  bool get flipX;
}

@freezed
class const ImageLayer({
  required final Uint8List data,
  final double opacity = 1.0,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$ImageLayer implements Layer;

@freezed
class const TextLayer({
  required final String text,
  final Color? color,
  final Color? backgroundColor,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$TextLayer implements Layer;

@freezed
class const DrawLayer({
  final List<Offset?> offsets = const [],
  final Color? color,
  final double strokeWidth = 1.0,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$DrawLayer implements Layer;
