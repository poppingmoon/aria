import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_colors.freezed.dart';

@freezed
class const MisskeyColors({
  required final String id,
  required final String name,
  required final bool isDark,
  required final Color accent,
  required final Color accentDarken,
  required final Color accentLighten,
  required final Color accentedBg,
  required final Color love,
  required final Color bg,
  required final Color fg,
  required final Color fgOnAccent,
  required final Color divider,
  required final Color panel,
  required final Color link,
  required final Color hashtag,
  required final Color mention,
  required final Color mentionMe,
  required final Color renote,
  required final Color infoBg,
  required final Color infoFg,
  required final Color infoWarnBg,
  required final Color infoWarnFg,
  required final Color buttonBg,
  required final Color buttonGradateA,
  required final Color buttonGradateB,
  required final Color driveFolderBg,
  required final Color success,
  required final Color error,
  required final Color warn,
}) with _$MisskeyColors;
