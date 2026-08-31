import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/string_extension.dart';
import '../util/safe_to_katakana.dart';
import 'emojis_notifier_provider.dart';

part 'custom_emoji_index_provider.g.dart';

final _separators = RegExp('[_+-]+');

Map<String, Set<String>> _buildCustomEmojiIndex(
  Iterable<({String name, List<String> aliases})> emojis,
) {
  final index = <String, Set<String>>{};
  for (final emoji in emojis) {
    final name = emoji.name.toLowerCase();
    index.putIfAbsent(name, () => {}).add(emoji.name);
    final kanaName = safeToKatakana(name).replaceAll(_separators, '');
    index.putIfAbsent(kanaName, () => {}).add(emoji.name);
    for (final alias in emoji.aliases) {
      if (alias.isNotEmpty) {
        final hankakuAlias = alias.toHankaku().toLowerCase();
        index.putIfAbsent(hankakuAlias, () => {}).add(emoji.name);
        final kanaAlias = safeToKatakana(hankakuAlias);
        index.putIfAbsent(kanaAlias, () => {}).add(emoji.name);
      }
    }
  }
  return index;
}

@Riverpod(keepAlive: true)
Future<Map<String, Set<String>>> customEmojiIndex(Ref ref, String host) async {
  final emojis = await ref.watch(emojisNotifierProvider(host).future);
  return compute(
    _buildCustomEmojiIndex,
    emojis.values.map((emoji) => (name: emoji.name, aliases: emoji.aliases)),
  );
}
