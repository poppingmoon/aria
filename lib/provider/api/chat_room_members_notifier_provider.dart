import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_room_members_notifier_provider.g.dart';

@riverpod
class ChatRoomMembersNotifier extends _$ChatRoomMembersNotifier {
  @override
  Stream<PaginationState<ChatJoining>> build(
    Account account,
    String roomId,
  ) async* {
    final response = await _fetchMemberships();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<ChatJoining>> _fetchMemberships({String? untilId}) async {
    final memberships = await ref
        .read(misskeyProvider(account))
        .chat
        .rooms
        .members(
          ChatRoomsMembersRequest(roomId: roomId, untilId: untilId, limit: 20),
        );
    if (untilId != null) {
      return memberships.where(
        (membership) => membership.id.compareTo(untilId) < 0,
      );
    } else {
      return memberships;
    }
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
      final response = await _fetchMemberships(
        untilId: value.items.lastOrNull?.id,
      );
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
