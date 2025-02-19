import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_colors.freezed.dart';

@Freezed(toJson: false)
class MisskeyColors with _$MisskeyColors {
  const factory MisskeyColors({
    required String id,
    required String name,
    required bool isDark,
    required Color accent,
    required Color accentDarken,
    required Color accentLighten,
    required Color accentedBg,
    required Color love,
    required Color bg,
    required Color fg,
    required Color fgOnAccent,
    required Color divider,
    required Color panel,
    required Color link,
    required Color hashtag,
    required Color mention,
    required Color mentionMe,
    required Color renote,
    required Color infoBg,
    required Color infoFg,
    required Color infoWarnBg,
    required Color infoWarnFg,
    required Color buttonBg,
    required Color buttonGradateA,
    required Color buttonGradateB,
    required Color driveFolderBg,
    required Color success,
    required Color error,
    required Color warn,
  }) = _MisskeyColors;
}
