import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'mfm_config.freezed.dart';

@freezed
class const MfmConfig({
  required final TextStyle style,
  final bool disableNyaize = false,
  final double scale = 1.0,
  final double opacity = 1.0,
  final TextAlign? align,
  final int xNest = 0,
  final int? linkId,
}) with _$MfmConfig;
