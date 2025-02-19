import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'shared_preferences_provider.dart';

part 'user_ids_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class UserIdsNotifier extends _$UserIdsNotifier {
  @override
  Map<Account, String> build() {
    final value = ref.watch(sharedPreferencesProvider).getString(_key);
    if (value != null) {
      final json = jsonDecode(value);
      if (json is Map<String, dynamic>) {
        return json.map(
          (account, userId) =>
              MapEntry(Account.fromString(account), userId as String),
        );
      }
    }
    return {};
  }

  static const _key = 'userIds';

  Future<void> add(Account account, String userId) async {
    if (state[account] != userId) {
      state = {...state, account: userId};
      await ref
          .read(sharedPreferencesProvider)
          .setString(
            _key,
            jsonEncode(
              state.map(
                (account, userId) => MapEntry(account.toString(), userId),
              ),
            ),
          );
    }
  }
}
