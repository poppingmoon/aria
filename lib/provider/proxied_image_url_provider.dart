import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api/meta_notifier_provider.dart';
import 'server_url_notifier_provider.dart';

part 'proxied_image_url_provider.g.dart';

@riverpod
Uri? proxiedImageUrl(
  Ref ref,
  String host,
  Uri baseUrl, {
  bool emoji = false,
  bool preview = false,
  bool static = false,
}) {
  if (host.isEmpty) {
    return baseUrl;
  }

  final serverUrl = ref.watch(serverUrlNotifierProvider(host));
  Uri imageUrl = baseUrl.hasScheme ? baseUrl : serverUrl.resolveUri(baseUrl);
  final mediaProxy = ref
      .watch(metaNotifierProvider(host))
      .valueOrNull
      ?.mediaProxy;
  final mediaProxyUrl =
      (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
      serverUrl.replace(pathSegments: ['proxy']);
  if (imageUrl.host == mediaProxyUrl.host) {
    if (mediaProxyUrl.pathSegments.length <= imageUrl.pathSegments.length &&
        const ListEquality<String>().equals(
          imageUrl.pathSegments.sublist(0, mediaProxyUrl.pathSegments.length),
          mediaProxyUrl.pathSegments,
        )) {
      return imageUrl.replace(
        queryParameters: {
          ...imageUrl.queryParameters,
          if (emoji) 'emoji': '1',
          if (preview) 'preview': '1',
          if (static) 'static': '1',
        },
      );
    }
  } else if (imageUrl.host == serverUrl.host &&
      imageUrl.pathSegments.firstOrNull == 'proxy') {
    if (imageUrl.queryParameters['url'] case final url?) {
      if (Uri.tryParse(url) case final url?) {
        imageUrl = url;
      }
    }
  }

  return mediaProxyUrl.replace(
    pathSegments: [...mediaProxyUrl.pathSegments, 'image.webp'],
    queryParameters: {
      'url': imageUrl.toString(),
      if (emoji) 'emoji': '1',
      if (preview) 'preview': '1',
      if (static) 'static': '1',
    },
  );
}
