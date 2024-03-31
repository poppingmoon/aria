import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'skeb_status_provider.g.dart';

@riverpod
FutureOr<UsersGetSkebStatusResponse> skebStatus(
  SkebStatusRef ref,
  Account account,
  String userId,
) {
  return ref
      .watch(misskeyProvider(account))
      .users
      .getSkebStatus(UsersGetSkebStatusRequest(userId: userId));
}
