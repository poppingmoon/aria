import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'search_users_notifier_provider.g.dart';

@riverpod
class SearchUsersNotifier extends _$SearchUsersNotifier {
  @override
  Stream<PaginationState<UserDetailed>> build(
    Account account,
    String query, {
    Origin? userOrigin,
  }) async* {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchUsers();
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 10) {
        await loadMore();
      }
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Future<Iterable<UserDetailed>> _fetchUsers({int? offset}) async {
    final response = await ref
        .read(misskeyProvider(account))
        .users
        .search(
          UsersSearchRequest(query: query, origin: userOrigin, offset: offset),
        );
    return response.whereType<UserDetailed>();
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchUsers(offset: value.items.length);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }
}
