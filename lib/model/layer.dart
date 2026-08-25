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
  @override required final Uint8List data,
  @override final double opacity = 1.0,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$ImageLayer implements Layer;

@freezed
class const TextLayer({
  @override required final String text,
  @override final Color? color,
  @override final Color? backgroundColor,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$TextLayer implements Layer;

@freezed
class const DrawLayer({
  @override final List<Offset?> offsets = const [],
  @override final Color? color,
  @override final double strokeWidth = 1.0,
  @override final Offset offset = Offset.zero,
  @override final double scale = 1.0,
  @override final double angle = 0.0,
  @override final bool flipX = false,
}) with _$DrawLayer implements Layer;
