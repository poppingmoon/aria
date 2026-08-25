import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_ui/material_ui.dart';

part 'mfm_config.freezed.dart';

@freezed
class const MfmConfig({
  @override required final TextStyle style,
  @override final bool disableNyaize = false,
  @override final double scale = 1.0,
  @override final double opacity = 1.0,
  @override final TextAlign? align,
  @override final int xNest = 0,
  @override final int? linkId,
}) with _$MfmConfig;
