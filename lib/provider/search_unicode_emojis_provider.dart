import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/unicode_emoji_index.g.dart';

part 'search_unicode_emojis_provider.g.dart';

Set<String> _searchUnicodeEmojis(String query) {
  const maxEmojis = 50;
  final result = {...?unicodeEmojiIndex[query]};
  if (result.length >= maxEmojis) {
    return result;
  }
  if (query.length == 1) {
    for (final entry in unicodeEmojiIndex.entries) {
      if (entry.key.startsWith(query)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  } else {
    for (final entry in unicodeEmojiIndex.entries) {
      if (entry.key.contains(query)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  }
  return result;
}

@riverpod
FutureOr<Set<String>> searchUnicodeEmojis(
  SearchUnicodeEmojisRef ref,
  String query,
) {
  if (query.isEmpty) {
    return {};
  }
  return compute(_searchUnicodeEmojis, query);
}
