import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'emoji_provider.dart';
import 'proxied_image_url_provider.dart';
import 'server_url_notifier_provider.dart';

part 'emoji_url_provider.g.dart';

@Riverpod(keepAlive: true)
(String, String) emojiUrl(
  Ref ref,
  Account account,
  String emoji, {
  String? url,
  String? host,
  bool useOriginalSize = false,
}) {
  assert(emoji.startsWith(':') && emoji.endsWith(':'));
  final customEmojiName = emoji.substring(1, emoji.length - 1);

  Uri? rawUrl;
  if (url != null) {
    rawUrl = Uri.tryParse(url);
  } else {
    final isLocal =
        host == null &&
        (customEmojiName.endsWith('@.') || !customEmojiName.contains('@'));
    if (isLocal) {
      rawUrl = ref.watch(emojiProvider(account.host, emoji))?.url;
    }
  }
  final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
  rawUrl ??= serverUrl.replace(
    pathSegments: [
      'emoji',
      if (host != null)
        '$customEmojiName@$host.webp'
      else
        '$customEmojiName.webp',
    ],
  );
  if (!rawUrl.hasScheme) {
    rawUrl = serverUrl.resolveUri(rawUrl);
  }

  // ignore: only_use_keep_alive_inside_keep_alive
  final proxied = ref.watch(
    proxiedImageUrlProvider(account.host, rawUrl, emoji: !useOriginalSize),
  );

  return (proxied.toString(), rawUrl.toString());
}
