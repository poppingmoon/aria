import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../dio_provider.dart';
import '../user_agent_provider.dart';

part 'skeb_status_provider.g.dart';

@riverpod
FutureOr<UsersGetSkebStatusResponse> skebStatus(
  Ref ref,
  Account account,
  String userId,
) async {
  final userAgent = await ref.watch(userAgentProvider.future);
  final response = await ref
      .watch(dioProvider)
      .getUri<Map<String, dynamic>>(
        Uri.https(account.host, 'api/users/get-skeb-status', {
          'userId': userId,
        }),
        options:
            userAgent != null
                ? Options(headers: {'User-Agent': userAgent})
                : null,
      );

  return UsersGetSkebStatusResponse.fromJson(response.data!);
}
