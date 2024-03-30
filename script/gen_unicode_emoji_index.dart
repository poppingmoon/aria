import 'dart:collection';
import 'dart:convert';
import 'dart:io';

void main() {
  const categories = [
    'face',
    'people',
    'animals_and_nature',
    'food_and_drink',
    'activity',
    'travel_and_places',
    'objects',
    'symbols',
    'flags',
  ];
  final categorized = <String, List<String>>{};
  final textToEmoji = SplayTreeMap<String, Set<String>>();
  final emojis = jsonDecode(
    File(
      'misskey/packages/frontend/src/emojilist.json',
    ).readAsStringSync(),
  ) as List;
  for (final emoji in emojis) {
    final char = (emoji as List)[0] as String;
    final name = emoji[1] as String;
    final category = categories[emoji[2] as int];
    categorized.putIfAbsent(category, () => []).add(char);
    textToEmoji.putIfAbsent(name, () => {}).add(char);
  }
  File('lib/constant/categorized_unicode_emojis.g.dart').writeAsStringSync("""
/// Generated file. Do not edit.
///
/// Source: misskey/packages/frontend/src/emojilist.json
/// To regenerate, run: `flutter run script/gen_unicode_emoji_index.dart`

const categorizedUnicodeEmojis = ${const JsonEncoder.withIndent('  ').convert(categorized)};
""");

  const languages = ['en-US', 'ja-JP', 'ja-JP_hira'];
  for (final language in languages) {
    final emojiToText = jsonDecode(
      File(
        'misskey/packages/frontend/src/unicode-emoji-indexes/$language.json',
      ).readAsStringSync(),
    ) as Map<String, dynamic>;
    for (final entry in emojiToText.entries) {
      for (final text in entry.value as List) {
        textToEmoji.putIfAbsent(text as String, () => {}).add(entry.key);
      }
    }
  }
  final file = File('lib/constant/unicode_emoji_index.g.dart');
  file.writeAsStringSync("""
/// Generated file. Do not edit.
///
/// Source: misskey/packages/frontend/src/emojilist.json
/// Source: misskey/packages/frontend/src/unicode-emoji-indexes
/// To regenerate, run: `flutter run script/gen_unicode_emoji_index.dart`

const unicodeEmojiIndex = {
${textToEmoji.entries.map((e) => "  '${e.key.replaceAll("'", r"\'")}': ${jsonEncode(e.value.toList())}").join(',\n')}
};
""");
  // ignore: avoid_print
  print('Successfully generated ${file.path}');
}
