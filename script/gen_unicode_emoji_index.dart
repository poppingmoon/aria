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
  const emojilist = [
    ['🇦', 'regional_indicator_a', 7],
    ['🇧', 'regional_indicator_b', 7],
    ['🇨', 'regional_indicator_c', 7],
    ['🇩', 'regional_indicator_d', 7],
    ['🇪', 'regional_indicator_e', 7],
    ['🇫', 'regional_indicator_f', 7],
    ['🇬', 'regional_indicator_g', 7],
    ['🇭', 'regional_indicator_h', 7],
    ['🇮', 'regional_indicator_i', 7],
    ['🇯', 'regional_indicator_j', 7],
    ['🇰', 'regional_indicator_k', 7],
    ['🇱', 'regional_indicator_l', 7],
    ['🇲', 'regional_indicator_m', 7],
    ['🇳', 'regional_indicator_n', 7],
    ['🇴', 'regional_indicator_o', 7],
    ['🇵', 'regional_indicator_p', 7],
    ['🇶', 'regional_indicator_q', 7],
    ['🇷', 'regional_indicator_r', 7],
    ['🇸', 'regional_indicator_s', 7],
    ['🇹', 'regional_indicator_t', 7],
    ['🇺', 'regional_indicator_u', 7],
    ['🇻', 'regional_indicator_v', 7],
    ['🇼', 'regional_indicator_w', 7],
    ['🇽', 'regional_indicator_x', 7],
    ['🇾', 'regional_indicator_y', 7],
    ['🇿', 'regional_indicator_z', 7],
  ];
  final unicodeEmojiIndexes = <String, Map<String, List<String>>>{
    'en-US': {
      '🇦': ['a', 'blue-square', 'alphabet'],
      '🇧': ['b', 'blue-square', 'alphabet'],
      '🇨': ['c', 'blue-square', 'alphabet'],
      '🇩': ['d', 'blue-square', 'alphabet'],
      '🇪': ['e', 'blue-square', 'alphabet'],
      '🇫': ['f', 'blue-square', 'alphabet'],
      '🇬': ['g', 'blue-square', 'alphabet'],
      '🇭': ['h', 'blue-square', 'alphabet'],
      '🇮': ['i', 'blue-square', 'alphabet'],
      '🇯': ['j', 'blue-square', 'alphabet'],
      '🇰': ['k', 'blue-square', 'alphabet'],
      '🇱': ['l', 'blue-square', 'alphabet'],
      '🇲': ['m', 'blue-square', 'alphabet'],
      '🇳': ['n', 'blue-square', 'alphabet'],
      '🇴': ['o', 'blue-square', 'alphabet'],
      '🇵': ['p', 'blue-square', 'alphabet'],
      '🇶': ['q', 'blue-square', 'alphabet'],
      '🇷': ['r', 'blue-square', 'alphabet'],
      '🇸': ['s', 'blue-square', 'alphabet'],
      '🇹': ['t', 'blue-square', 'alphabet'],
      '🇺': ['u', 'blue-square', 'alphabet'],
      '🇻': ['v', 'blue-square', 'alphabet'],
      '🇼': ['w', 'blue-square', 'alphabet'],
      '🇽': ['x', 'blue-square', 'alphabet'],
      '🇾': ['y', 'blue-square', 'alphabet'],
      '🇿': ['z', 'blue-square', 'alphabet'],
    },
    'ja-JP': {
      '🇦': ['a', 'アルファベット'],
      '🇧': ['b', 'アルファベット'],
      '🇨': ['c', 'アルファベット'],
      '🇩': ['d', 'アルファベット'],
      '🇪': ['e', 'アルファベット'],
      '🇫': ['f', 'アルファベット'],
      '🇬': ['g', 'アルファベット'],
      '🇭': ['h', 'アルファベット'],
      '🇮': ['i', 'アルファベット'],
      '🇯': ['j', 'アルファベット'],
      '🇰': ['k', 'アルファベット'],
      '🇱': ['l', 'アルファベット'],
      '🇲': ['m', 'アルファベット'],
      '🇳': ['n', 'アルファベット'],
      '🇴': ['o', 'アルファベット'],
      '🇵': ['p', 'アルファベット'],
      '🇶': ['q', 'アルファベット'],
      '🇷': ['r', 'アルファベット'],
      '🇸': ['s', 'アルファベット'],
      '🇹': ['t', 'アルファベット'],
      '🇺': ['u', 'アルファベット'],
      '🇻': ['v', 'アルファベット'],
      '🇼': ['w', 'アルファベット'],
      '🇽': ['x', 'アルファベット'],
      '🇾': ['y', 'アルファベット'],
      '🇿': ['z', 'アルファベット'],
    },
    'ja-JP_hira': {
      '🇦': ['a', 'あるふぁべっと'],
      '🇧': ['b', 'あるふぁべっと'],
      '🇨': ['c', 'あるふぁべっと'],
      '🇩': ['d', 'あるふぁべっと'],
      '🇪': ['e', 'あるふぁべっと'],
      '🇫': ['f', 'あるふぁべっと'],
      '🇬': ['g', 'あるふぁべっと'],
      '🇭': ['h', 'あるふぁべっと'],
      '🇮': ['i', 'あるふぁべっと'],
      '🇯': ['j', 'あるふぁべっと'],
      '🇰': ['k', 'あるふぁべっと'],
      '🇱': ['l', 'あるふぁべっと'],
      '🇲': ['m', 'あるふぁべっと'],
      '🇳': ['n', 'あるふぁべっと'],
      '🇴': ['o', 'あるふぁべっと'],
      '🇵': ['p', 'あるふぁべっと'],
      '🇶': ['q', 'あるふぁべっと'],
      '🇷': ['r', 'あるふぁべっと'],
      '🇸': ['s', 'あるふぁべっと'],
      '🇹': ['t', 'あるふぁべっと'],
      '🇺': ['u', 'あるふぁべっと'],
      '🇻': ['v', 'あるふぁべっと'],
      '🇼': ['w', 'あるふぁべっと'],
      '🇽': ['x', 'あるふぁべっと'],
      '🇾': ['y', 'あるふぁべっと'],
      '🇿': ['z', 'あるふぁべっと'],
    },
  };
  final categorized = <String, List<String>>{};
  final textToEmoji = SplayTreeMap<String, Set<String>>();
  final emojis = [
    ...jsonDecode(
          File(
            'emojis/packages/emoji-data/src/emojilist.json',
          ).readAsStringSync(),
        )
        as List,
    ...emojilist,
  ];
  for (final emoji in emojis) {
    final char = (emoji as List)[0] as String;
    final name = emoji[1] as String;
    final category = categories[emoji[2] as int];
    categorized.putIfAbsent(category, () => []).add(char);
    textToEmoji.putIfAbsent(name, () => {}).add(char);
  }
  final categorizedEmojisFile = File(
    'lib/constant/categorized_unicode_emojis.g.dart',
  );
  categorizedEmojisFile.writeAsStringSync("""
/// Generated file. Do not edit.
///
/// Source: emojis/packages/emoji-data/src/emojilist.json
/// To regenerate, run: `dart script/gen_unicode_emoji_index.dart`

const categorizedUnicodeEmojis = ${const JsonEncoder.withIndent('  ').convert(categorized)};
""");
  print('Successfully generated ${categorizedEmojisFile.path}');

  const languages = ['en-US', 'ja-JP', 'ja-JP_hira'];
  for (final language in languages) {
    final emojiToText = {
      ...jsonDecode(
            File(
              'emojis/packages/emoji-data/src/indexes/$language.json',
            ).readAsStringSync(),
          )
          as Map<String, dynamic>,
      ...?unicodeEmojiIndexes[language],
    };
    for (final entry in emojiToText.entries) {
      for (final text in entry.value as List) {
        textToEmoji.putIfAbsent(text as String, () => {}).add(entry.key);
      }
    }
  }
  final emojiIndexFile = File('lib/constant/unicode_emoji_index.g.dart');
  emojiIndexFile.writeAsStringSync("""
/// Generated file. Do not edit.
///
/// Source: emojis/packages/emoji-data/src/emojilist.json
/// Source: emojis/packages/emoji-data/src/indexes
/// To regenerate, run: `dart script/gen_unicode_emoji_index.dart`

const unicodeEmojiIndex = {
${textToEmoji.entries.map((e) => "  '${e.key.replaceAll("'", r"\'")}': ${jsonEncode(e.value.toList())}").join(',\n')}
};
""");
  print('Successfully generated ${emojiIndexFile.path}');
}
