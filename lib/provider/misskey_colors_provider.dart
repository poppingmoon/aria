import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/builtin_misskey_colors.g.dart';
import '../model/misskey_colors.dart';
import 'general_settings_notifier_provider.dart';
import 'installed_misskey_colors_provider.dart';

part 'misskey_colors_provider.g.dart';

@riverpod
MisskeyColors misskeyColors(MisskeyColorsRef ref, Brightness brightness) {
  final themeId = ref.watch(
    generalSettingsNotifierProvider.select(
      (settings) => switch (brightness) {
        Brightness.light => settings.lightThemeId,
        Brightness.dark => settings.darkThemeId,
      },
    ),
  );
  final colors =
      builtinMisskeyColors.firstWhereOrNull((colors) => colors.id == themeId);
  if (colors != null) {
    return colors;
  }
  final installedMisskeyColors = ref.watch(installedMisskeyColorsProvider);
  return installedMisskeyColors
          .firstWhereOrNull((colors) => colors.id == themeId) ??
      builtinMisskeyColors.firstWhere(
        (colors) => switch (brightness) {
          Brightness.light => !colors.isDark,
          Brightness.dark => colors.isDark,
        },
      );
}
