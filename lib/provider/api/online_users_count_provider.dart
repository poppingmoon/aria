import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'online_users_count_provider.g.dart';

@riverpod
FutureOr<int> onlineUsersCount(OnlineUsersCountRef ref, Account account) async {
  final response =
      await ref.read(misskeyProvider(account)).getOnlineUsersCount();
  return response.count;
}
