import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'role_provider.g.dart';

@riverpod
FutureOr<RolesListResponse> role(RoleRef ref, Account account, String roleId) {
  return ref
      .watch(misskeyProvider(account))
      .roles
      .show(RolesShowRequest(roleId: roleId));
}
