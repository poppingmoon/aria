import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/experimental/json_persist.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/id.dart';
import '../note_provider.dart';
import '../notes_notifier_provider.dart';
import '../riverpod_storage_provider.dart';
import 'i_notifier_provider.dart';
import 'misskey_provider.dart';

part 'id_gen_method_provider.g.dart';

@Riverpod(keepAlive: true)
@JsonPersist()
class IdGenMethodNotifier extends _$IdGenMethodNotifier {
  @override
  FutureOr<IdGenMethod> build(Account account) async {
    persist(await ref.watch(riverpodStorageProvider.future));
    final id =
        ref.watch(
          notesNotifierProvider(
            account,
          ).select((notes) => notes.keys.firstOrNull),
        ) ??
        (await ref.watch(
          iNotifierProvider(account).selectAsync((i) => i?.id),
        )) ??
        (await ref
                .watch(misskeyProvider(account))
                .users
                .users(const UsersUsersRequest(limit: 1)))
            .first
            .id;
    return Id.parse(id).method;
  }
}
