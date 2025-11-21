import 'package:dio/dio.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../dio_provider.dart';
import '../server_url_notifier_provider.dart';
import '../user_agent_provider.dart';

part 'skeb_status_provider.g.dart';

@riverpod
FutureOr<UsersGetSkebStatusResponse> skebStatus(
  Ref ref,
  Account account,
  String userId,
) async {
  final userAgent = await ref.watch(userAgentProvider.future);
  final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
  final response = await ref
      .watch(dioProvider)
      .getUri<Map<String, dynamic>>(
        serverUrl.replace(
          pathSegments: ['api', 'users', 'get-skeb-status'],
          queryParameters: {'userId': userId},
        ),
        options: userAgent != null
            ? Options(headers: {'User-Agent': userAgent})
            : null,
      );

  return UsersGetSkebStatusResponse.fromJson(response.data!);
}
