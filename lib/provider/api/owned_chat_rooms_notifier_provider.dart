import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'owned_chat_rooms_notifier_provider.g.dart';

@riverpod
class OwnedChatRoomsNotifier extends _$OwnedChatRoomsNotifier {
  @override
  Stream<PaginationState<ChatRoom>> build(Account account) async* {
    final response = await _fetchRooms();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<ChatRoom>> _fetchRooms({String? untilId}) async {
    final rooms = await ref
        .read(misskeyProvider(account))
        .chat
        .rooms
        .owned(ChatRoomsOwnedRequest(untilId: untilId));
    if (untilId != null) {
      return rooms.where((room) => room.id.compareTo(untilId) < 0);
    } else {
      return rooms;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchRooms(untilId: value.items.lastOrNull?.id);
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
