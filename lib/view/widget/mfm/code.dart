import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/atelier-cave-light.dart';
import 'package:flutter_highlighting/themes/atom-one-dark.dart';
import 'package:highlighting/languages/all.dart';

import '../../../constant/fonts.dart';
import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../util/copy_text.dart';

class Code extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final languageId = allLanguages[language]?.id ?? 'javascript';
    final theme = switch (Theme.of(context).brightness) {
      Brightness.light => atelierCaveLightTheme,
      Brightness.dark => atomOneDarkTheme,
    };

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
                  code,
                  languageId: languageId,
                  theme: theme,
                  padding:
                      inline
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
