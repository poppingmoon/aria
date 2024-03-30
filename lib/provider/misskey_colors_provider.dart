import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/default_misskey_colors.g.dart';
import '../model/misskey_colors.dart';
import 'general_settings_notifier_provider.dart';

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
  return defaultMisskeyColors
          .firstWhereOrNull((colors) => colors.id == themeId) ??
      defaultMisskeyColors.firstWhere(
        (colors) => switch (brightness) {
          Brightness.light => !colors.isDark,
          Brightness.dark => colors.isDark,
        },
      );
}
