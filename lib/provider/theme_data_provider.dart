import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../gen/fonts.gen.dart';
import 'general_settings_notifier_provider.dart';
import 'misskey_colors_provider.dart';

part 'theme_data_provider.g.dart';

@riverpod
ThemeData themeData(Ref ref, Brightness brightness) {
  final colors = ref.watch(misskeyColorsProvider(brightness));
  final fontSize = ref.watch(
    generalSettingsNotifierProvider.select((settings) => settings.fontSize),
  );
  final fontFamily = ref.watch(
    generalSettingsNotifierProvider.select((settings) => settings.fontFamily),
  );
  final height = ref.watch(
    generalSettingsNotifierProvider.select((settings) => settings.lineHeight),
  );
  final enablePredictiveBack = ref.watch(
    generalSettingsNotifierProvider
        .select((settings) => settings.enablePredictiveBack),
  );

  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: colors.accent,
      brightness: colors.isDark ? Brightness.dark : Brightness.light,
      primary: colors.accent,
      onPrimary: colors.fgOnAccent,
      surface: colors.panel,
      onSurface: colors.fg,
      onSurfaceVariant: colors.fg,
      error: colors.error,
      outlineVariant: colors.divider,
    ),
    primaryColor: colors.accent,
    dividerColor: colors.divider,
    canvasColor: colors.bg,
    scaffoldBackgroundColor: colors.bg,
    textTheme: ThemeData(brightness: brightness)
        .textTheme
        .merge(
          TextTheme(
            titleMedium: TextStyle(fontSize: fontSize + 2.0),
            bodyLarge: TextStyle(fontSize: fontSize + 2.0),
            bodyMedium: TextStyle(fontSize: fontSize, height: height),
          ),
        )
        .apply(
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamily != null
              ? [
                  FontFamily.bIZUDGothic,
                  FontFamily.notoSansJP,
                  FontFamily.notoSansKR,
                  FontFamily.notoSansSC,
                  FontFamily.notoSansTC,
                ]
              : null,
          displayColor: colors.fg,
          bodyColor: colors.fg,
          decorationColor: colors.fg,
        ),
    iconTheme: IconThemeData(color: colors.fg),
    inputDecorationTheme: InputDecorationTheme(
      helperMaxLines: 100,
      hintStyle: TextStyle(color: colors.fg.withValues(alpha: 0.5)),
      filled: true,
      fillColor: colors.panel,
      enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: colors.divider),
        borderRadius: BorderRadius.circular(6.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: colors.fgOnAccent,
        backgroundColor: colors.accent,
        iconColor: colors.fgOnAccent,
        textStyle: TextStyle(fontSize: fontSize),
        minimumSize: Size(64.0, fontSize * 3),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: colors.divider),
        textStyle: TextStyle(fontSize: fontSize),
        minimumSize: Size(64.0, fontSize * 3),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: fontSize),
        minimumSize: Size(64.0, fontSize * 3),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: colors.fgOnAccent,
      backgroundColor: colors.accent,
    ),
    sliderTheme:
        const SliderThemeData(showValueIndicator: ShowValueIndicator.always),
    pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.android: enablePredictiveBack
            ? const PredictiveBackPageTransitionsBuilder()
            : const ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: const CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: const CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
