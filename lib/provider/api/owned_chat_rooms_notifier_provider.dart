import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'owned_chat_rooms_notifier_provider.g.dart';

@riverpod
class OwnedChatRoomsNotifier extends _$OwnedChatRoomsNotifier {
  @override
  FutureOr<PaginationState<ChatRoom>> build(Account account) async {
    final response = await _fetchRooms();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<ChatRoom>> _fetchRooms({String? untilId}) {
    return ref
        .read(misskeyProvider(account))
        .chat
        .rooms
        .owned(ChatRoomsOwnedRequest(untilId: untilId));
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchRooms(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
