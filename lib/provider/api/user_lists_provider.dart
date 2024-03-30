import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'user_lists_provider.g.dart';

@riverpod
FutureOr<List<UsersList>> userLists(
  UserListsRef ref,
  Account account,
  String userId,
) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  try {
    final response = await ref
        .read(misskeyProvider(account))
        .apiService
        .post<List<dynamic>>('users/lists/list', {'userId': userId});
    return response
        .map((e) => UsersList.fromJson(e as Map<String, dynamic>))
        .toList();
  } catch (_) {
    timer?.cancel();
    link.close();
    rethrow;
  }
}
