import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'proxied_image_url_provider.dart';

part 'static_image_url_provider.g.dart';

@riverpod
Uri? staticImageUrl(Ref ref, String host, String baseUrl) {
  if (host.isEmpty) {
    return Uri.tryParse(baseUrl);
  }
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

  return ref.watch(proxiedImageUrlProvider(host, urlString, static: true));
}
