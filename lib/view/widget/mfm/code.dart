import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/atelier-cave-light.dart';
import 'package:flutter_highlighting/themes/atom-one-dark.dart';
import 'package:highlighting/languages/all.dart';

import '../../../util/copy_text.dart';

class Code extends StatelessWidget {
  const Code({
    super.key,
    required this.code,
    this.language,
    this.inline = false,
    this.fontSize,
  });

  final String code;
  final String? language;
  final bool inline;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    final languageId = allLanguages[language]?.id ?? 'javascript';
    final theme = switch (Theme.of(context).brightness) {
      Brightness.light => atelierCaveLightTheme,
      Brightness.dark => atomOneDarkTheme,
    };

    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(4.0),
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
              padding: inline
                  ? const EdgeInsets.symmetric(horizontal: 2.0)
                  : const EdgeInsets.all(8.0),
              textStyle: TextStyle(
                fontSize: fontSize,
                fontFamilyFallback: const [
                  'Consolas',
                  'Monaco',
                  'Menlo',
                  'Andale Mono',
                  'Ubuntu Mono',
                  'monospace',
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
