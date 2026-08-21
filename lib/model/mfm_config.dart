import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'mfm_config.freezed.dart';

@freezed
abstract class MfmConfig with _$MfmConfig {
  const factory({
    required TextStyle style,
    @Default(false) bool disableNyaize,
    @Default(1.0) double scale,
    @Default(1.0) double opacity,
    TextAlign? align,
    @Default(0) int xNest,
    int? linkId,
  }) = _MfmConfig;
}
