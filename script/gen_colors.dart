import 'dart:io';
import 'dart:ui';

import 'package:aria/model/misskey_theme.dart';
import 'package:aria/util/compile_theme.dart';
import 'package:json5/json5.dart';

final themes = [
  'l-light',
  'd-dark',
  'l-coffee',
  'd-persimmon',
  'l-apricot',
  'd-astro',
  'l-rainy',
  'd-future',
  'l-botanical',
  'd-botanical',
  'l-vivid',
  'd-green-lime',
  'l-cherry',
  'd-green-orange',
  'l-sushi',
  'd-cherry',
  'l-u0',
  'd-ice',
  'd-u0',
];

int floatToInt8(double x) {
  return (x * 255.0).round() & 0xff;
}

extension on Color {
  String get hex {
    final value =
        floatToInt8(a) << 24 |
        floatToInt8(r) << 16 |
        floatToInt8(g) << 8 |
        floatToInt8(b) << 0;
    return '0x${value.toRadixString(16).padLeft(8, '0')}';
  }
}

void main() {
  final colors = themes.map(
    (name) => compileTheme(
      MisskeyTheme.fromJson(
        json5Decode(
              File(
                'misskey/packages/frontend-shared/themes/$name.json5',
              ).readAsStringSync(),
            )
            as Map<String, dynamic>,
      ),
    ),
  );
  final colorsString = colors
      .map(
        (colors) => """
  MisskeyColors(
    id: '${colors.id}',
    name: '${colors.name}',
    isDark: ${colors.isDark},
    accent: Color(${colors.accent.hex}),
    accentDarken: Color(${colors.accentDarken.hex}),
    accentLighten: Color(${colors.accentLighten.hex}),
    accentedBg: Color(${colors.accentedBg.hex}),
    love: Color(${colors.love.hex}),
    bg: Color(${colors.bg.hex}),
    fg: Color(${colors.fg.hex}),
    fgOnAccent: Color(${colors.fgOnAccent.hex}),
    divider: Color(${colors.divider.hex}),
    panel: Color(${colors.panel.hex}),
    link: Color(${colors.link.hex}),
    hashtag: Color(${colors.hashtag.hex}),
    mention: Color(${colors.mention.hex}),
    mentionMe: Color(${colors.mentionMe.hex}),
    renote: Color(${colors.renote.hex}),
    infoFg: Color(${colors.infoFg.hex}),
    infoBg: Color(${colors.infoBg.hex}),
    infoWarnFg: Color(${colors.infoWarnFg.hex}),
    infoWarnBg: Color(${colors.infoWarnBg.hex}),
    buttonBg: Color(${colors.buttonBg.hex}),
    buttonGradateA: Color(${colors.buttonGradateA.hex}),
    buttonGradateB: Color(${colors.buttonGradateB.hex}),
    driveFolderBg: Color(${colors.driveFolderBg.hex}),
    success: Color(${colors.success.hex}),
    error: Color(${colors.error.hex}),
    warn: Color(${colors.warn.hex}),
  ),""",
      )
      .join('\n');
  final contents = """
/// Generated file. Do not edit.
///
/// Source: misskey/packages/frontend-shared/themes
/// To regenerate, run: `flutter run script/gen_colors.dart`

import 'package:flutter/material.dart';

import '../model/misskey_colors.dart';

const builtinMisskeyColors = [
$colorsString
];
""";
  final file = File('lib/constant/builtin_misskey_colors.g.dart');
  file.writeAsStringSync(contents);
  // ignore: avoid_print
  print('Successfully generated ${file.path}');
}
