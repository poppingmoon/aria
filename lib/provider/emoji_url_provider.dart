import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/meta_notifier_provider.dart';
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

  Uri? rawUrl;
  if (url != null) {
    rawUrl = Uri.tryParse(url);
  } else {
    final isLocal = host == null &&
        (customEmojiName.endsWith('@.') || !customEmojiName.contains('@'));
    if (isLocal) {
      rawUrl = ref.watch(emojiProvider(account.host, emoji))?.url;
    }
  }
  rawUrl ??= Uri(
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
  if (!rawUrl.isAbsolute) {
    rawUrl = rawUrl.replace(
      scheme: 'https',
      host: account.host,
    );
  }

  Uri imageUrl = rawUrl;
  final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
  final mediaProxy = meta?.mediaProxy;
  final proxyUrl = (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
      Uri.https(account.host, 'proxy');
  if (imageUrl.host == proxyUrl.host) {
    if (proxyUrl.pathSegments.length <= imageUrl.pathSegments.length &&
        const ListEquality<String>().equals(
          imageUrl.pathSegments.sublist(0, proxyUrl.pathSegments.length),
          proxyUrl.pathSegments,
        )) {
      if (imageUrl.queryParameters['url'] case final url?) {
        if (Uri.tryParse(url) case final url?) {
          imageUrl = url;
        }
      }
    }
  } else if (imageUrl.host == account.host) {
    if (imageUrl.pathSegments.firstOrNull == 'proxy') {
      if (imageUrl.queryParameters['url'] case final url?) {
        if (Uri.tryParse(url) case final url?) {
          imageUrl = url;
        }
      }
    }
  }

  final proxied = proxyUrl.replace(
    pathSegments: [...proxyUrl.pathSegments, 'image.webp'],
    queryParameters: {
      'url': imageUrl.toString(),
      if (!useOriginalSize) 'emoji': '1',
    },
  );
  return (proxied.toString(), imageUrl.toString());
}
