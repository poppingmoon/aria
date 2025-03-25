import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'dio_provider.dart';
import 'server_url_notifier_provider.dart';

part 'node_info_provider.g.dart';

@riverpod
FutureOr<Map<String, dynamic>> nodeInfo(Ref ref, String host) async {
  final serverUrl = ref.watch(serverUrlNotifierProvider(host));
  final response = await ref
      .read(dioProvider)
      .getUri<Map<String, dynamic>>(
        serverUrl.replace(pathSegments: ['.well-known', 'nodeinfo']),
      );
  final link = (response.data!['links'] as List).first as Map<String, dynamic>;
  final nodeInfo = await ref
      .read(dioProvider)
      .get<Map<String, dynamic>>(link['href'] as String);

  return nodeInfo.data!;
}
