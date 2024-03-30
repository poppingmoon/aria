import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/meta_provider.dart';
import 'emoji_provider.dart';

part 'emoji_url_provider.g.dart';

@riverpod
(String, String) emojiUrl(
  EmojiUrlRef ref,
  Account account,
  String emoji, {
  String? url,
  String? host,
  bool useOriginalSize = false,
}) {
  assert(emoji.startsWith(':') && emoji.endsWith(':'));
  ref.keepAlive();
  final customEmojiName = emoji.substring(1, emoji.length - 1);
  final isLocal = host == null &&
      (customEmojiName.endsWith('@.') || !customEmojiName.contains('@'));
  final rawUrl = (url != null
          ? Uri.tryParse(url)
          : isLocal
              ? ref.watch(emojiProvider(account.host, emoji))?.url
              : null) ??
      Uri(
        scheme: 'https',
        host: account.host,
        pathSegments: [
          'emoji',
          if (host != null)
            '$customEmojiName@$host.webp'
          else
            '$customEmojiName.webp',
        ],
      );
  final meta = ref.watch(metaProvider(account)).valueOrNull;
  if (meta == null) {
    return (rawUrl.toString(), rawUrl.toString());
  }
  final mediaProxy = meta.mediaProxy;
  final proxyUrl = (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
      Uri.https(account.host, 'proxy');
  final proxied = proxyUrl.replace(
    pathSegments: [...proxyUrl.pathSegments, 'image.webp'],
    queryParameters: {
      'url': rawUrl.toString(),
      if (!useOriginalSize) 'emoji': '1',
    },
  );
  return (proxied.toString(), rawUrl.toString());
}
