import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constant/unicode_emoji_index.g.dart';
import '../extension/string_extension.dart';

part 'search_unicode_emojis_provider.g.dart';

@riverpod
Set<String> searchUnicodeEmojis(Ref ref, String query) {
  if (query.isEmpty) {
    return {};
  }
  const maxEmojis = 50;
  final hankakuQuery = query.toHankaku();
  final result = {...?unicodeEmojiIndex[hankakuQuery]};
  if (result.length >= maxEmojis) {
    return result;
  }
  if (hankakuQuery.length == 1) {
    for (final entry in unicodeEmojiIndex.entries) {
      if (entry.key.startsWith(hankakuQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  } else {
    for (final entry in unicodeEmojiIndex.entries) {
      if (entry.key.contains(hankakuQuery)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  }
  return result;
}
