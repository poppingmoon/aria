import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'tag_users_provider.g.dart';

@riverpod
FutureOr<List<UserDetailed>> tagUsers(
  Ref ref,
  Account account,
  String tag, {
  UsersSortType sort = UsersSortType.followerDescendant,
  Origin? userOrigin,
}) async {
  final response = await ref
      .read(misskeyProvider(account))
      .hashtags
      .users(
        HashtagsUsersRequest(
          tag: tag,
          sort: sort,
          origin: userOrigin,
          limit: 30,
        ),
      );
  return response.toList();
}
