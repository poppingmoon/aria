import 'dart:ui';

import 'package:tinycolor2/tinycolor2.dart';

import '../constant/theme_props.dart';
import '../model/misskey_colors.dart';
import '../model/misskey_theme.dart';

MisskeyColors compileTheme(MisskeyTheme theme) {
  final isDark = theme.base == 'dark';
  final props = {
    ...isDark ? defaultDarkThemeProps : defaultLightThemeProps,
    ...theme.props,
  };

  Color getColor(String val) {
    if (val[0] == '@') {
      return getColor(props[val.substring(1)]!);
    } else if (val[0] == r'$') {
      return getColor(props[val]!);
    } else if (val[0] == ':') {
      final parts = val.split('<');
      final func = parts.removeAt(0).substring(1);
      final arg = double.parse(parts.removeAt(0));
      final color = getColor(parts.join('<'));

      return switch (func) {
        'darken' => color.darken(arg.toInt()),
        'lighten' => color.lighten(arg.toInt()),
        'alpha' => color.withOpacity(arg),
        'hue' => color.spin(arg),
        'saturate' => color.saturate(arg.toInt()),
        _ => color,
      };
    } else {
      final input = val.trim();
      if (input.startsWith('rgb(') && input.endsWith(')')) {
        final rgb = input
            .substring(4, input.length - 1)
            .split(RegExp(r'[,\s]\s*'))
            .map(int.parse)
            .toList();
        return Color.fromRGBO(rgb[0], rgb[1], rgb[2], 1);
      }
      if (input.startsWith('rgba(') && input.endsWith(')')) {
        final rgbo =
            input.substring(5, input.length - 1).split(RegExp(r'[,\s]\s*'));
        final rgb = rgbo.sublist(0, 3).map(int.parse).toList();
        final opacity = double.parse(rgbo[3]);
        return Color.fromRGBO(rgb[0], rgb[1], rgb[2], opacity);
      }
      return TinyColor.fromString(input).toColor();
    }
  }

  return MisskeyColors(
    id: theme.id,
    name: theme.name,
    isDark: isDark,
    accent: getColor(props['accent']!),
    accentDarken: getColor(props['accentDarken']!),
    accentLighten: getColor(props['accentLighten']!),
    accentedBg: getColor(props['accentedBg']!),
    bg: getColor(props['bg']!),
    fg: getColor(props['fg']!),
    fgOnAccent: getColor(props['fgOnAccent']!),
    divider: getColor(props['divider']!),
    panel: getColor(props['panel']!),
    link: getColor(props['link']!),
    hashtag: getColor(props['hashtag']!),
    mention: getColor(props['mention']!),
    mentionMe: getColor(props['mentionMe']!),
    renote: getColor(props['renote']!),
    infoFg: getColor(props['infoFg']!),
    infoBg: getColor(props['infoBg']!),
    infoWarnFg: getColor(props['infoWarnFg']!),
    infoWarnBg: getColor(props['infoWarnBg']!),
    buttonBg: getColor(props['buttonBg']!),
    buttonGradateA: getColor(props['buttonGradateA']!),
    buttonGradateB: getColor(props['buttonGradateB']!),
    driveFolderBg: getColor(props['driveFolderBg']!),
    success: getColor(props['success']!),
    error: getColor(props['error']!),
    warn: getColor(props['warn']!),
  );
}
