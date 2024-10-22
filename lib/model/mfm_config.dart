import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'misskey_colors.dart';

part 'mfm_config.freezed.dart';

@freezed
class MfmConfig with _$MfmConfig {
  const factory MfmConfig({
    required MisskeyColors colors,
    required bool simple,
    required TextStyle style,
    required Widget Function(
      String name,
      double scale,
      double opacity,
      TextStyle fallbackTextStyle,
    ) customEmojiBuilder,
    required Widget Function(String emoji, TextStyle style) unicodeEmojiBuilder,
    required Widget Function(
      String username,
      String? host,
      double scale,
      double opacity,
    ) mentionBuilder,
    void Function(String emoji)? onTapEmoji,
    void Function(String url)? onLinkTap,
    void Function(String url)? onLinkLongPress,
    void Function(String hashtag)? onHashtagTap,
    void Function(String clickEv)? onClickEv,
    @Default(false) bool shouldNyaize,
    @Default(true) bool useAdvanced,
    @Default(false) bool useAnimation,
    @Default(1.0) double scale,
    @Default(1.0) double opacity,
    TextAlign? align,
    TextOverflow? overflow,
    int? maxLines,
  }) = _MfmConfig;
}
