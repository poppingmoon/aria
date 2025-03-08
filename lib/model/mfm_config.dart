import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mfm_config.freezed.dart';

@freezed
abstract class MfmConfig with _$MfmConfig {
  const factory MfmConfig({
    required TextStyle style,
    @Default(false) bool disableNyaize,
    @Default(1.0) double scale,
    @Default(1.0) double opacity,
    TextAlign? align,
  }) = _MfmConfig;
}
