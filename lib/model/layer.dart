import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_size_getter/image_size_getter.dart';

part 'layer.freezed.dart';

sealed class Layer {
  Offset get offset;
  double get scale;
  double get angle;
  bool get flipX;
}

@freezed
class ImageLayer with _$ImageLayer implements Layer {
  const factory ImageLayer({
    required Uint8List data,
    required Size size,
    @Default(1.0) double opacity,
    @Default(Offset.zero) Offset offset,
    @Default(1.0) double scale,
    @Default(0.0) double angle,
    @Default(false) bool flipX,
  }) = _ImageLayer;

  factory ImageLayer.fromData(
    Uint8List data, {
    double opacity = 1.0,
    Offset offset = Offset.zero,
    double scale = 1.0,
    double angle = 0.0,
    bool flipX = false,
  }) {
    return ImageLayer(
      data: data,
      size: ImageSizeGetter.getSize(MemoryInput(data)),
      opacity: opacity,
      offset: offset,
      scale: scale,
      angle: angle,
      flipX: flipX,
    );
  }
}

@freezed
class TextLayer with _$TextLayer implements Layer {
  const factory TextLayer({
    required String text,
    Color? color,
    Color? backgroundColor,
    @Default(Offset.zero) Offset offset,
    @Default(1.0) double scale,
    @Default(0.0) double angle,
    @Default(false) bool flipX,
  }) = _TextLayer;
}

@freezed
class DrawLayer with _$DrawLayer implements Layer {
  const factory DrawLayer({
    @Default([]) List<Offset?> offsets,
    Color? color,
    @Default(1.0) double strokeWidth,
    @Default(Offset.zero) Offset offset,
    @Default(1.0) double scale,
    @Default(0.0) double angle,
    @Default(false) bool flipX,
  }) = _DrawLayer;
}
