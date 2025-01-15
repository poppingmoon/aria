import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'api/meta_notifier_provider.dart';

part 'proxied_image_url_provider.g.dart';

@riverpod
Uri? proxiedImageUrl(
  Ref ref,
  String host,
  String baseUrl, {
  bool emoji = false,
  bool preview = false,
  bool static = false,
}) {
  if (host.isEmpty) {
    return Uri.tryParse(baseUrl);
  }
  final url = Uri.tryParse(baseUrl);
  if (url == null) {
    return null;
  }

  Uri imageUrl =
      url.isAbsolute ? url : url.replace(scheme: 'https', host: host);
  final mediaProxy =
      ref.watch(metaNotifierProvider(host)).valueOrNull?.mediaProxy;
  final mediaProxyUrl =
      (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
          Uri.https(host, 'proxy');
  if (imageUrl.host == mediaProxyUrl.host) {
    if (mediaProxyUrl.pathSegments.length <= imageUrl.pathSegments.length &&
        const ListEquality<String>().equals(
          imageUrl.pathSegments.sublist(0, mediaProxyUrl.pathSegments.length),
          mediaProxyUrl.pathSegments,
        )) {
      if (imageUrl.queryParameters['url'] case final url?) {
        if (Uri.tryParse(url) case final url?) {
          imageUrl = url;
        }
      }
    }
  } else if (imageUrl.host == host) {
    if (imageUrl.pathSegments.firstOrNull == 'proxy') {
      if (imageUrl.queryParameters['url'] case final url?) {
        if (Uri.tryParse(url) case final url?) {
          imageUrl = url;
        }
      }
    }
  }

  return mediaProxyUrl.replace(
    pathSegments: [
      ...mediaProxyUrl.pathSegments,
      if (preview)
        'preview.webp'
      else if (static)
        'static.webp'
      else
        'image.webp',
    ],
    queryParameters: {
      'url': imageUrl.toString(),
      if (emoji) 'emoji': '1',
      if (preview) 'preview': '1',
      if (static) 'static': '1',
    },
  );
}
