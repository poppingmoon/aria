import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';

const keywords = [
  'assert',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'default',
  'do',
  'else',
  'else',
  'enum',
  'extends',
  'false',
  'final',
  'finally',
  'for',
  'if',
  'in',
  'is',
  'new',
  'null',
  'return',
  'super',
  'switch',
  'this',
  'true',
  'try',
  'var',
  'void',
  'while',
  'with',
];

const languages = [
  'ar-SA',
  'bn-BD',
  'ca-ES',
  'cs-CZ',
  'de-DE',
  'el-GR',
  'en-US',
  'es-ES',
  'fr-FR',
  'id-ID',
  'it-IT',
  'ja-JP',
  'ja-KS',
  'ko-GS',
  'ko-KR',
  'lo-LA',
  'nl-NL',
  'no-NO',
  'pl-PL',
  'pt-PT',
  'ro-RO',
  'ru-RU',
  'sk-SK',
  'sv-SE',
  'th-TH',
  'tr-TR',
  'uk-UA',
  'uz-UZ',
  'vi-VN',
  'zh-CN',
  'zh-TW',
];

extension on String {
  String rotateLeadingUnderscore() {
    if (startsWith('_')) {
      return '${substring(1)}_';
    } else {
      return this;
    }
  }

  String prefixLeadingNumber() {
    if (int.tryParse(this[0]) != null) {
      return 'x$this';
    } else {
      return this;
    }
  }

  String postfixReservedWords() {
    if (keywords.contains(this)) {
      return '${this}_';
    } else {
      return this;
    }
  }

  String replaceSeparators() {
    return replaceAllMapped(
      RegExp('[:-](.)'),
      (match) => match[1]!.toUpperCase(),
    );
  }
}

class Converter {
  const Converter({required this.key, this.params = const {}, this.children});

  final String key;
  final Map<String, String> params;
  final Map<String, Converter>? children;

  factory Converter.fromYamlMap({
    required String key,
    required YamlMap source,
  }) {
    final children = <String, Converter>{};
    for (final e in source.entries) {
      final originalKey = e.key as String;
      final originalValue = e.value;
      final key =
          originalKey
              .rotateLeadingUnderscore()
              .prefixLeadingNumber()
              .postfixReservedWords()
              .replaceSeparators();
      if (originalValue is String) {
        final originalParams = RegExp(
          r'\{([^}]+)}',
        ).allMatches(originalValue).map((match) => match[1]!);
        final params = {
          for (final originalParam in originalParams)
            originalParam:
                originalParam
                    .rotateLeadingUnderscore()
                    .prefixLeadingNumber()
                    .postfixReservedWords()
                    .replaceSeparators(),
        };
        children[originalKey] = Converter(key: key, params: params);
      } else {
        children[originalKey] = Converter.fromYamlMap(
          key: key,
          source: originalValue as YamlMap,
        );
      }
    }
    return Converter(key: key, children: children);
  }

  Map<String, dynamic> convert(YamlMap source) {
    final result = <String, dynamic>{};
    for (final e in source.entries) {
      final originalKey = e.key;
      final converter = children?[originalKey];
      if (converter == null) {
        continue;
      }
      final key = converter.key;
      final originalValue = e.value;
      if (originalValue is String) {
        final params = Map.of(converter.params);
        final invalidParams = <String>[];
        String value = originalValue
            .replaceAllMapped(RegExp(r'\{([^}]+)}'), (match) {
              final originalParam = match[1]!;
              final param =
                  params.remove(originalParam) ??
                  converter.params[originalParam];
              if (param == null) {
                invalidParams.add(originalParam);
                return '{$originalParam}';
              } else {
                return '{$param}';
              }
            })
            .replaceAll('{}', r'\{}');
        for (final originalParam in invalidParams) {
          final param = params.remove(params.keys.firstOrNull);
          value = value.replaceAll(
            '{$originalParam}',
            param != null ? '{$param}' : '',
          );
        }
        final buffer = StringBuffer(value);
        for (final e in params.entries) {
          buffer.write(' {${e.value}}');
        }
        result[key] = buffer.toString();
      } else {
        result[key] = converter.convert(originalValue as YamlMap);
      }
    }
    return result;
  }
}

Map<String, dynamic> merge(
  Map<String, dynamic> input,
  Map<String, dynamic> fallback,
) {
  final merged = <String, dynamic>{};
  for (final e in fallback.entries) {
    final value = input[e.key];
    if (value == null) {
      merged[e.key] = e.value;
    } else if (value is String) {
      merged[e.key] = value;
    } else {
      merged[e.key] = merge(
        value as Map<String, dynamic>,
        e.value as Map<String, dynamic>,
      );
    }
  }
  return merged;
}

List<String> dumpYaml(Map<String, dynamic> input, [int level = 0]) {
  final indent = '  ' * level;
  final lines = <String>[];
  for (final e in input.entries) {
    final key = e.key;
    final value = e.value;
    if (value is String) {
      lines.add('$indent$key: ${jsonEncode(value)}');
    } else {
      lines.add('$indent$key:');
      lines.addAll(dumpYaml(value as Map<String, dynamic>, level + 1));
    }
  }
  return lines;
}

void main() {
  final localization =
      loadYaml(File('misskey/locales/en-US.yml').readAsStringSync()) as YamlMap;

  final converter = Converter.fromYamlMap(key: '', source: localization);
  final converted = {
    for (final language in languages)
      language: converter.convert(
        loadYaml(File('misskey/locales/$language.yml').readAsStringSync())
            as YamlMap,
      ),
  };
  converted['ja-KS'] = merge(converted['ja-KS']!, converted['ja-JP']!);
  converted['ko-GS'] = merge(converted['ko-GS']!, converted['ko-KR']!);
  for (final e in converted.entries) {
    final language = e.key;
    final localization = e.value;
    final lines = dumpYaml(localization);
    final contents = """
# Generated file. Do not edit.
#
# Source: misskey/locales/$language.yml
# To regenerate, run: `dart run script/gen_i18n.dart`

${lines.join('\n')}
""";
    final file =
        language == 'en-US'
            ? File('lib/i18n/misskey/misskey.i18n.yaml')
            : File('lib/i18n/misskey/misskey_$language.i18n.yaml');
    file.writeAsStringSync(contents);
    print('Successfully generated ${file.path}');
  }
}
