import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../util/safe_to_hiragana.dart';
import 'emojis_notifier_provider.dart';

part 'custom_emoji_index_provider.g.dart';

final _separators = RegExp('[_+-]+');

Map<String, Set<Emoji>> _buildCustomEmojiIndex(Iterable<Emoji> emojis) {
  final index = <String, Set<Emoji>>{};
  for (final emoji in emojis) {
    index.putIfAbsent(emoji.name, () => {}).add(emoji);
    final kanaName = safeToHiragana(emoji.name.replaceAll(_separators, ''));
    index.putIfAbsent(kanaName, () => {}).add(emoji);
    for (final alias in emoji.aliases) {
      if (alias.isNotEmpty) {
        index.putIfAbsent(alias, () => {}).add(emoji);
        final kanaAlias = safeToHiragana(alias.replaceAll(_separators, ''));
        index.putIfAbsent(kanaAlias, () => {}).add(emoji);
      }
    }
  }
  return index;
}

@Riverpod(keepAlive: true)
Future<Map<String, Set<Emoji>>> customEmojiIndex(Ref ref, String host) async {
  final emojis = await ref.watch(emojisNotifierProvider(host).future);
  final index = await compute(_buildCustomEmojiIndex, emojis.values);
  return index;
}
