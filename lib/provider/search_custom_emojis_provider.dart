import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/string_extension.dart';
import '../util/safe_to_katakana.dart';
import 'custom_emoji_index_provider.dart';

part 'search_custom_emojis_provider.g.dart';

@riverpod
Set<Emoji> searchCustomEmojis(Ref ref, String host, String query) {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 1), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  if (query.isEmpty) {
    return {};
  }
  final customEmojiIndex = ref.watch(customEmojiIndexProvider(host)).value;
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
    final hankakuKeywords = hankakuQuery.split(RegExp(r'\s'));
    final kanaKeywords = kanaQuery.split(RegExp(r'\s'));
    for (final entry in customEmojiIndex.entries) {
      if (hankakuKeywords.every(entry.key.contains)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      } else if (kanaKeywords.every(entry.key.contains)) {
        result.addAll(entry.value);
        if (result.length >= maxEmojis) {
          return result;
        }
      }
    }
  }

  return result;
}
