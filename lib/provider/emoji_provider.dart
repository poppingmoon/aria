import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'emojis_notifier_provider.dart';

part 'emoji_provider.g.dart';

@Riverpod(keepAlive: true)
Emoji? emoji(EmojiRef ref, String host, String code) {
  assert(code.startsWith(':') && code.endsWith(':'));
  final name = code.substring(1, code.length - 1).replaceAll('@.', '');
  return ref.watch(
    emojisNotifierProvider(host).select(
      (emojis) => emojis.valueOrNull?[name],
    ),
  );
}
