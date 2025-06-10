import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/theme_map.dart';
import 'package:flutter_highlighting/themes/atom-one-dark.dart';
import 'package:flutter_highlighting/tm_themes/theme_map.dart';
import 'package:flutter_highlighting/tm_themes/themes/catppuccin-latte.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:highlighting/languages/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/fonts.dart';
import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_themes_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/safe_parse_color.dart';

class Code extends HookConsumerWidget {
  const Code({
    super.key,
    required this.code,
    this.language,
    this.inline = false,
    this.fontSize,
    this.copyOnTap = false,
  });

  final String code;
  final String? language;
  final bool inline;
  final double? fontSize;
  final bool copyOnTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final input = code.replaceAll(RegExp(r'\r?\n$'), '');
    final languageId =
        allLanguages[language]?.id ??
        allLanguages[allAliases[language]]?.id ??
        'javascript';
    final brightness = Theme.of(context).brightness;
    final themeId = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => switch (brightness) {
          Brightness.light => settings.lightThemeId,
          Brightness.dark => settings.darkThemeId,
        },
      ),
    );
    final codeHighlighter = ref.watch(
      misskeyThemesProvider.select(
        (themes) => themes
            .firstWhereOrNull((theme) => theme?.id == themeId)
            ?.codeHighlighter,
      ),
    );
    final theme = useMemoized(() {
      final theme = Map.of(
        tmThemeMap[codeHighlighter?['base']] ??
            themeMap[codeHighlighter?['base']] ??
            switch (brightness) {
              Brightness.light => catppuccinLatteTheme,
              Brightness.dark => atomOneDarkTheme,
            },
      );
      if (codeHighlighter?['overrides']
          case final Map<String, dynamic> overrides) {
        theme['root'] = (theme['root'] ?? const TextStyle()).copyWith(
          color: safeParseColor(overrides['fg']),
          backgroundColor: safeParseColor(overrides['bg']),
        );
        if (overrides['colorReplacements']
            case final Map<String, dynamic> colorReplacements) {
          final colors = colorReplacements.map(
            (key, value) =>
                MapEntry(safeParseColor(key), safeParseColor(value)),
          )..removeWhere((key, value) => key == null || value == null);
          for (final e in theme.entries) {
            if (colors[e.value.color] case final color?) {
              theme[e.key] = (theme[e.key] ?? e.value).copyWith(color: color);
            }
            if (colors[e.value.backgroundColor] case final backgroundColor?) {
              theme[e.key] = (theme[e.key] ?? e.value).copyWith(
                backgroundColor: backgroundColor,
              );
            }
          }
        }
      }
      return theme;
    }, [themeId]);

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(inline ? 4.0 : 8.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(inline ? 4.0 : 8.0),
            onTap: copyOnTap ? () => copyToClipboard(context, code) : null,
            onLongPress: () => copyToClipboard(context, code),
            child: Container(
              width: inline ? null : double.infinity,
              color: theme['root']?.backgroundColor,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HighlightView(
                  input,
                  languageId: languageId,
                  theme: theme,
                  padding: inline
                      ? const EdgeInsets.symmetric(horizontal: 2.0)
                      : const EdgeInsets.all(16.0),
                  textStyle: TextStyle(
                    fontSize: fontSize,
                    fontFamilyFallback: monospaceFallback,
                  ),
                ),
              ),
            ),
          ),
        ),
        if (!inline)
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: IconButton(
              tooltip: t.misskey.copy,
              style: IconButton.styleFrom(
                foregroundColor: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.5),
                minimumSize: Size.zero,
                iconSize: DefaultTextStyle.of(context).style.lineHeight,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => copyToClipboard(context, code),
              icon: const Icon(Icons.copy),
            ),
          ),
      ],
    );
  }
}
