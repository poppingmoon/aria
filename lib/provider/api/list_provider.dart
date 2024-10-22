import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'list_provider.g.dart';

@riverpod
FutureOr<UsersListsShowResponse> list(
  Ref ref,
  Account account,
  String listId, {
  bool? forPublic,
}) {
  return ref
      .read(misskeyProvider(account))
      .users
      .list
      .show(UsersListsShowRequest(listId: listId, forPublic: forPublic));
}
