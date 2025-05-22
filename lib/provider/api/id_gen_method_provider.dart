import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/id.dart';
import '../notes_notifier_provider.dart';
import 'i_notifier_provider.dart';
import 'misskey_provider.dart';

part 'id_gen_method_provider.g.dart';

@riverpod
FutureOr<IdGenMethod> idGenMethod(Ref ref, Account account) async {
  final link = ref.keepAlive();
  try {
    final id =
        ref.read(notesNotifierProvider(account)).values.firstOrNull?.id ??
        (await ref.read(iNotifierProvider(account).future))?.id ??
        (await ref
                .read(misskeyProvider(account))
                .users
                .users(const UsersUsersRequest(limit: 1)))
            .first
            .id;
    return Id.parse(id).method;
  } catch (_) {
    link.close();
    rethrow;
  }
}
