import 'dart:ui';

import 'package:tinycolor2/tinycolor2.dart';

import '../constant/theme_props.dart';
import '../model/misskey_colors.dart';
import '../model/misskey_theme.dart';

class CompileThemeException implements Exception {}

class CompileThemeReferenceLimitException implements CompileThemeException {
  const CompileThemeReferenceLimitException();

  @override
  String toString() {
    return 'Theme reference limit exceeded';
  }
}

class CompileThemeCircularReferenceException implements CompileThemeException {
  const CompileThemeCircularReferenceException();

  @override
  String toString() {
    return 'Theme contains circular references';
  }
}

class CompileThemeMissingPropertyException implements CompileThemeException {
  const CompileThemeMissingPropertyException(this.key);

  final String key;

  @override
  String toString() {
    return 'Theme references missing property: $key';
  }
}

const _maxThemeReferenceDepth = 8;

Color _getThemeReferenceColor(
  Map<String, String> props,
  String key,
  List<String> stack,
  int depth,
) {
  if (depth >= _maxThemeReferenceDepth) {
    throw const CompileThemeReferenceLimitException();
  }

  if (stack.contains(key)) {
    throw const CompileThemeCircularReferenceException();
  }

  final nextValue = props[key];
  if (nextValue == null) {
    throw CompileThemeMissingPropertyException(key);
  }

  return _getColor(props, nextValue, [...stack, key], depth + 1);
}

Color _getColor(
  Map<String, String> props,
  String val,
  List<String> stack,
  int depth,
) {
  if (val[0] == '@') {
    return _getThemeReferenceColor(props, val.substring(1), stack, depth);
  } else if (val[0] == r'$') {
    return _getThemeReferenceColor(props, val, stack, depth);
  } else if (val[0] == ':') {
    if (depth >= _maxThemeReferenceDepth) {
      throw const CompileThemeReferenceLimitException();
    }
    final parts = val.split('<');
    final func = parts.removeAt(0).substring(1);
    final arg = double.parse(parts.removeAt(0));
    final color = _getColor(props, parts.join('<'), stack, depth + 1);

    switch (func) {
      case 'darken':
        return color.darken(arg.toInt());
      case 'lighten':
        return color.lighten(arg.toInt());
      case 'alpha':
        return color.withValues(alpha: arg);
      case 'hue':
        return color.spin(arg);
      case 'saturate':
        return color.saturate(arg.toInt());
    }
  }

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
    final rgbo = input
        .substring(5, input.length - 1)
        .split(RegExp(r'[,\s]\s*'));
    final rgb = rgbo.sublist(0, 3).map(int.parse).toList();
    final opacity = double.parse(rgbo[3]);
    return Color.fromRGBO(rgb[0], rgb[1], rgb[2], opacity);
  }
  return TinyColor.fromString(input).toColor();
}

MisskeyColors compileTheme(MisskeyTheme theme) {
  final isDark = theme.base == 'dark';
  final props = {
    ...isDark ? defaultDarkThemeProps : defaultLightThemeProps,
    ...theme.props,
  };

  return MisskeyColors(
    id: theme.id,
    name: theme.name,
    isDark: isDark,
    accent: _getThemeReferenceColor(props, 'accent', [], 0),
    accentDarken: _getThemeReferenceColor(props, 'accentDarken', [], 0),
    accentLighten: _getThemeReferenceColor(props, 'accentLighten', [], 0),
    accentedBg: _getThemeReferenceColor(props, 'accentedBg', [], 0),
    love: _getThemeReferenceColor(props, 'love', [], 0),
    bg: _getThemeReferenceColor(props, 'bg', [], 0),
    fg: _getThemeReferenceColor(props, 'fg', [], 0),
    fgOnAccent: _getThemeReferenceColor(props, 'fgOnAccent', [], 0),
    divider: _getThemeReferenceColor(props, 'divider', [], 0),
    panel: _getThemeReferenceColor(props, 'panel', [], 0),
    link: _getThemeReferenceColor(props, 'link', [], 0),
    hashtag: _getThemeReferenceColor(props, 'hashtag', [], 0),
    mention: _getThemeReferenceColor(props, 'mention', [], 0),
    mentionMe: _getThemeReferenceColor(props, 'mentionMe', [], 0),
    renote: _getThemeReferenceColor(props, 'renote', [], 0),
    infoFg: _getThemeReferenceColor(props, 'infoFg', [], 0),
    infoBg: _getThemeReferenceColor(props, 'infoBg', [], 0),
    infoWarnFg: _getThemeReferenceColor(props, 'infoWarnFg', [], 0),
    infoWarnBg: _getThemeReferenceColor(props, 'infoWarnBg', [], 0),
    buttonBg: _getThemeReferenceColor(props, 'buttonBg', [], 0),
    buttonGradateA: _getThemeReferenceColor(props, 'buttonGradateA', [], 0),
    buttonGradateB: _getThemeReferenceColor(props, 'buttonGradateB', [], 0),
    driveFolderBg: _getThemeReferenceColor(props, 'driveFolderBg', [], 0),
    success: _getThemeReferenceColor(props, 'success', [], 0),
    error: _getThemeReferenceColor(props, 'error', [], 0),
    warn: _getThemeReferenceColor(props, 'warn', [], 0),
  );
}
