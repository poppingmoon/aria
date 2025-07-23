import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'search_users_by_username_provider.g.dart';

@riverpod
FutureOr<List<UserDetailed>> searchUsersByUsername(
  Ref ref,
  Account account,
  String? username,
  String? host,
) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    final response = await ref
        .read(misskeyProvider(account))
        .users
        .searchByUsernameAndHost(
          UsersSearchByUsernameAndHostRequest(
            username: username,
            host: host,
            limit: 30,
          ),
        );
    return response.whereType<UserDetailed>().toList();
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
