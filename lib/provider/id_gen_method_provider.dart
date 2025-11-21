import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/id.dart';
import 'api/i_notifier_provider.dart';
import 'api/misskey_provider.dart';
import 'shared_preferences_provider.dart';

part 'id_gen_method_provider.g.dart';

@riverpod
FutureOr<IdGenMethod> idGenMethod(Ref ref, Account account) async {
  final prefs = ref.watch(sharedPreferencesProvider);
  final key = '${account.host}/idGenMethod';
  final value = prefs.getString(key);
  if (value != null) {
    return IdGenMethod.values.firstWhere((method) => method.name == value);
  } else {
    final id =
        (await ref.read(iNotifierProvider(account).future))?.id ??
        (await ref
                .read(misskeyProvider(account))
                .users
                .users(
                  const UsersUsersRequest(
                    limit: 1,
                    sort: UsersSortType.createdAtDescendant,
                  ),
                ))
            .first
            .id;
    final method = Id.parse(id).method;
    await prefs.setString(key, method.name);
    return method;
  }
}
