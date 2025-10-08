import 'dart:convert';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tinycolor2/tinycolor2.dart';

import '../model/misskey_colors.dart';
import 'shared_preferences_provider.dart';

part 'dynamic_color_provider.g.dart';

const lightDynamicColorThemeId = 'f2c83dbc-f3c5-493d-9f46-5ad7c32d7b9f';
const darkDynamicColorThemeId = 'c4143574-f085-4024-b9ca-5a33dd272d32';

@riverpod
class CorePaletteNotifier extends _$CorePaletteNotifier {
  @override
  CorePalette? build() {
    Future(update);
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      try {
        final json = jsonDecode(value);
        if (json is List) {
          return CorePalette.fromList(json.whereType<int>().toList());
        }
      } catch (_) {}
    }
    return null;
  }

  static const _key = 'corePalette';

  Future<void> update() async {
    final palette = await DynamicColorPlugin.getCorePalette();
    if (palette != null) {
      state = palette;
      await ref
          .read(sharedPreferencesProvider)
          .setString(_key, jsonEncode(palette.asList()));
    }
  }
}

@riverpod
class _AccentColorNotifier extends _$AccentColorNotifier {
  @override
  Color? build() {
    Future(update);
    final value = ref.watch(sharedPreferencesProvider).getInt(_key);
    if (value != null) {
      return Color(value);
    }
    return null;
  }

  static const _key = 'accentColor';

  Future<void> update() async {
    final color = await DynamicColorPlugin.getAccentColor();
    if (color != null) {
      state = color;
      await ref.read(sharedPreferencesProvider).setInt(_key, color.toARGB32());
    }
  }
}

extension on Color {
  ColorScheme toColorScheme({Brightness brightness = Brightness.light}) {
    return ColorScheme.fromSeed(seedColor: this, brightness: brightness);
  }
}

@riverpod
MisskeyColors? dynamicColor(Ref ref, Brightness brightness) {
  final colorScheme = switch (defaultTargetPlatform) {
    TargetPlatform.android =>
      ref
          .watch(corePaletteNotifierProvider)
          ?.toColorScheme(brightness: brightness),
    TargetPlatform.windows || TargetPlatform.macOS || TargetPlatform.linux =>
      ref
          .watch(_accentColorNotifierProvider)
          ?.toColorScheme(brightness: brightness),
    _ => null,
  };
  if (colorScheme == null) {
    return null;
  }
  return MisskeyColors(
    id: switch (brightness) {
      Brightness.light => lightDynamicColorThemeId,
      Brightness.dark => darkDynamicColorThemeId,
    },
    name: 'Dynamic Color',
    isDark: brightness == Brightness.dark,
    accent: colorScheme.primary,
    accentDarken: colorScheme.primary.darken(),
    accentLighten: colorScheme.primary.lighten(),
    accentedBg: colorScheme.primary.withValues(alpha: 0.15),
    love: const Color(0xffdd2e44).harmonizeWith(colorScheme.primary),
    bg: switch (brightness) {
      Brightness.light => colorScheme.surface.shade(3),
      Brightness.dark => colorScheme.surface,
    },
    fg: colorScheme.onSurfaceVariant,
    fgOnAccent: colorScheme.onPrimary,
    divider: colorScheme.outlineVariant,
    panel: switch (brightness) {
      Brightness.light => colorScheme.surface,
      Brightness.dark => colorScheme.surface.tint(3),
    },
    link: colorScheme.secondary,
    hashtag: colorScheme.tertiary,
    mention: colorScheme.secondary,
    mentionMe: colorScheme.primary,
    renote: colorScheme.primary,
    infoBg: switch (brightness) {
      Brightness.light => const Color(0xffe5f5ff),
      Brightness.dark => const Color(0xff253142),
    }.harmonizeWith(colorScheme.primary),
    infoFg: switch (brightness) {
      Brightness.light => const Color(0xff72818a),
      Brightness.dark => const Color(0xffffffff),
    }.harmonizeWith(colorScheme.primary),
    infoWarnBg: switch (brightness) {
      Brightness.light => const Color(0xfffff0db),
      Brightness.dark => const Color(0xff42321c),
    }.harmonizeWith(colorScheme.primary),
    infoWarnFg: switch (brightness) {
      Brightness.light => const Color(0xff8f6e31),
      Brightness.dark => const Color(0xffffbd3e),
    }.harmonizeWith(colorScheme.primary),
    buttonBg: colorScheme.surfaceContainer.shade(5),
    buttonGradateA: colorScheme.primary,
    buttonGradateB: colorScheme.tertiary,
    driveFolderBg: colorScheme.primary.withValues(alpha: 0.3),
    success: const Color(0xff86b300).harmonizeWith(colorScheme.primary),
    error: colorScheme.error.harmonizeWith(colorScheme.primary),
    warn: const Color(0xffecb637).harmonizeWith(colorScheme.primary),
  );
}
