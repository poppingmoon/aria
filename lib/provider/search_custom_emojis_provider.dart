import 'package:flutter/foundation.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../util/safe_to_hiragana.dart';
import 'custom_emoji_index_provider.dart';

part 'search_custom_emojis_provider.g.dart';

Set<Emoji> _searchCustomEmojis(
  Map<String, Set<Emoji>> customEmojiIndex,
  String query,
) {
  const maxEmojis = 50;
  final hankakuQuery = query.replaceAllMapped(
    RegExp('[Ａ-Ｚａ-ｚ０-９]'),
    (match) => String.fromCharCode(match[0]!.codeUnitAt(0) - 65248),
  );
  final hiraganaQuery = safeToHiragana(hankakuQuery);
  final result = {
    ...?customEmojiIndex[hankakuQuery],
    ...?customEmojiIndex[hiraganaQuery],
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
      } else if (entry.key.startsWith(hiraganaQuery)) {
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
      } else if (entry.key.contains(hiraganaQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  }

  return result;
}

@Riverpod(keepAlive: true)
FutureOr<Set<Emoji>> searchCustomEmojis(
  SearchCustomEmojisRef ref,
  String host,
  String query,
) {
  if (query.isEmpty) {
    return {};
  }
  final customEmojiIndex =
      ref.watch(customEmojiIndexProvider(host)).valueOrNull;
  if (customEmojiIndex == null) {
    return {};
  }
  return compute(
    (args) => _searchCustomEmojis(args.$1, args.$2),
    (customEmojiIndex, query),
  );
}
