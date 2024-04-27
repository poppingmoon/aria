import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/meta_provider.dart';

part 'static_image_url_provider.g.dart';

@riverpod
Uri? staticImageUrl(StaticImageUrlRef ref, String host, String baseUrl) {
  final url = baseUrl.startsWith('http')
      ? Uri.tryParse(baseUrl)
      : Uri.tryParse(
          'https://$host${baseUrl.startsWith('/') ? '' : '/'}$baseUrl',
        );
  if (url == null) {
    return null;
  }
  final urlString = url.toString();
  if (urlString.startsWith('https://$host/emoji/')) {
    return url
        .replace(queryParameters: {...url.queryParameters, 'static': '1'});
  }
  final mediaProxy =
      ref.watch(metaProvider(Account(host: host))).valueOrNull?.mediaProxy ??
          'https://$host/proxy';
  if (urlString.startsWith('$mediaProxy/')) {
    return url
        .replace(queryParameters: {...url.queryParameters, 'static': '1'});
  }
  final mediaProxyUrl = Uri.tryParse(mediaProxy);
  if (mediaProxyUrl == null) {
    return null;
  }
  return mediaProxyUrl.replace(
    pathSegments: [...mediaProxyUrl.pathSegments, 'static.webp'],
    queryParameters: {
      'url': urlString,
      'static': '1',
    },
  );
}
