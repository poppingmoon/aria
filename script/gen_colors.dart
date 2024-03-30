import 'dart:io';

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

void main() {
  final colors = themes.map(
    (name) => compileTheme(
      MisskeyTheme.fromJson(
        json5Decode(
          File(
            'misskey/packages/frontend/src/themes/$name.json5',
          ).readAsStringSync(),
        ) as Map<String, dynamic>,
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
    accent: ${colors.accent},
    accentDarken: ${colors.accentDarken},
    accentLighten: ${colors.accentLighten},
    accentedBg: ${colors.accentedBg},
    bg: ${colors.bg},
    fg: ${colors.fg},
    fgOnAccent: ${colors.fgOnAccent},
    divider: ${colors.divider},
    panel: ${colors.panel},
    link: ${colors.link},
    hashtag: ${colors.hashtag},
    mention: ${colors.mention},
    mentionMe: ${colors.mentionMe},
    renote: ${colors.renote},
    infoFg: ${colors.infoFg},
    infoBg: ${colors.infoBg},
    infoWarnFg: ${colors.infoWarnFg},
    infoWarnBg: ${colors.infoWarnBg},
    buttonBg: ${colors.buttonBg},
    buttonGradateA: ${colors.buttonGradateA},
    buttonGradateB: ${colors.buttonGradateB},
    driveFolderBg: ${colors.driveFolderBg},
    success: ${colors.success},
    error: ${colors.error},
    warn: ${colors.warn},
  ),""",
      )
      .join('\n');
  final contents = """
/// Generated file. Do not edit.
///
/// Source: misskey/packages/frontend/src/themes
/// To regenerate, run: `flutter run script/gen_colors.dart`

import 'package:flutter/material.dart';

import '../model/misskey_colors.dart';

const defaultMisskeyColors = [
$colorsString
];
""";
  final file = File('lib/constant/default_misskey_colors.g.dart');
  file.writeAsStringSync(contents);
  // ignore: avoid_print
  print('Successfully generated ${file.path}');
}
