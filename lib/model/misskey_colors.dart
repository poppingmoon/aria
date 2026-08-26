import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_colors.freezed.dart';

@freezed
class const MisskeyColors({
  @override required final String id,
  @override required final String name,
  @override required final bool isDark,
  @override required final Color accent,
  @override required final Color accentDarken,
  @override required final Color accentLighten,
  @override required final Color accentedBg,
  @override required final Color love,
  @override required final Color bg,
  @override required final Color fg,
  @override required final Color fgOnAccent,
  @override required final Color divider,
  @override required final Color panel,
  @override required final Color link,
  @override required final Color hashtag,
  @override required final Color mention,
  @override required final Color mentionMe,
  @override required final Color renote,
  @override required final Color infoBg,
  @override required final Color infoFg,
  @override required final Color infoWarnBg,
  @override required final Color infoWarnFg,
  @override required final Color buttonBg,
  @override required final Color buttonGradateA,
  @override required final Color buttonGradateB,
  @override required final Color driveFolderBg,
  @override required final Color success,
  @override required final Color error,
  @override required final Color warn,
}) with _$MisskeyColors;
