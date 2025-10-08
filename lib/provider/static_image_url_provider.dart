import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'proxied_image_url_provider.dart';
import 'server_url_notifier_provider.dart';

part 'static_image_url_provider.g.dart';

@riverpod
Uri? staticImageUrl(Ref ref, String host, String baseUrl) {
  if (host.isEmpty) {
    return Uri.tryParse(baseUrl);
  }
  final serverUrl = ref.watch(serverUrlNotifierProvider(host));
  final Uri url;
  try {
    url = serverUrl.resolve(baseUrl);
  } catch (_) {
    return null;
  }

  if (url.host == serverUrl.host && url.pathSegments.firstOrNull == 'emoji') {
    return url.replace(
      queryParameters: {...url.queryParameters, 'static': '1'},
    );
  }

  return ref.watch(proxiedImageUrlProvider(host, url, static: true));
}
