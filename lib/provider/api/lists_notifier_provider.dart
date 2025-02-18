import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'lists_notifier_provider.g.dart';

@riverpod
class ListsNotifier extends _$ListsNotifier {
  @override
  FutureOr<List<UsersList>> build(Account account) async {
    final response = await _misskey.users.list.list();
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> create(String name) async {
    final list = await _misskey.users.list.create(
      UsersListsCreateRequest(name: name),
    );
    state = AsyncValue.data([list, ...?state.valueOrNull]);
  }

  Future<void> updateList(String listId, {String? name, bool? isPublic}) async {
    final updated = await _misskey.users.list.update(
      UsersListsUpdateRequest(listId: listId, name: name, isPublic: isPublic),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map((list) => list.id == listId ? updated : list),
    ]);
  }

  Future<void> delete(String listId) async {
    await _misskey.users.list.delete(UsersListsDeleteRequest(listId: listId));
    state = AsyncValue.data([
      ...?state.valueOrNull?.where((list) => list.id != listId),
    ]);
  }

  Future<void> addUser(String listId, String userId) async {
    await _misskey.users.list.push(
      UsersListsPushRequest(listId: listId, userId: userId),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map(
        (list) =>
            list.id == listId
                ? list.copyWith(userIds: [...list.userIds, userId])
                : list,
      ),
    ]);
  }

  Future<void> removeUser(String listId, String userId) async {
    await _misskey.users.list.pull(
      UsersListsPullRequest(listId: listId, userId: userId),
    );
    state = AsyncValue.data([
      ...?state.valueOrNull?.map(
        (list) =>
            list.id == listId
                ? list.copyWith(
                  userIds: list.userIds.where((id) => id != userId).toList(),
                )
                : list,
      ),
    ]);
  }
}
