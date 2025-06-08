import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/string_extension.dart';
import '../util/safe_to_katakana.dart';
import 'custom_emoji_index_provider.dart';

part 'search_custom_emojis_provider.g.dart';

@Riverpod(keepAlive: true)
Set<Emoji> searchCustomEmojis(Ref ref, String host, String query) {
  if (query.isEmpty) {
    return {};
  }
  final customEmojiIndex = ref
      .watch(customEmojiIndexProvider(host))
      .valueOrNull;
  if (customEmojiIndex == null) {
    return {};
  }
  const maxEmojis = 50;
  final hankakuQuery = query.toHankaku().toLowerCase();
  final kanaQuery = safeToKatakana(hankakuQuery);
  final result = {
    ...?customEmojiIndex[hankakuQuery],
    ...?customEmojiIndex[kanaQuery],
  };
  if (result.length >= maxEmojis) {
    return result;
  }
  if (hankakuQuery.length == 1) {
    for (final entry in customEmojiIndex.entries) {
      if (entry.key.startsWith(hankakuQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      } else if (entry.key.startsWith(kanaQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  } else {
    for (final entry in customEmojiIndex.entries) {
      if (entry.key.contains(hankakuQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      } else if (entry.key.contains(kanaQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  }

  return result;
}
