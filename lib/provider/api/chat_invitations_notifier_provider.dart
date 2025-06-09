import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_invitations_notifier_provider.g.dart';

@riverpod
class ChatInvitationsNotifier extends _$ChatInvitationsNotifier {
  @override
  Stream<PaginationState<ChatJoining>> build(Account account) async* {
    final response = await _fetchInvitations();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<ChatJoining>> _fetchInvitations({String? untilId}) {
    return _misskey.chat.rooms.invitations.inbox(
      ChatRoomsInvitationsInboxRequest(untilId: untilId),
    );
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
      final response = await _fetchInvitations(
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

  Future<void> join(String roomId) async {
    await _misskey.chat.rooms.join(ChatRoomsJoinRequest(roomId: roomId));
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .where((invitation) => invitation.roomId != roomId)
            .toList(),
      ),
    );
  }

  Future<void> ignore(String roomId) async {
    await _misskey.chat.rooms.invitations.ignore(
      ChatRoomsInvitationsIgnoreRequest(roomId: roomId),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .where((invitation) => invitation.roomId != roomId)
            .toList(),
      ),
    );
  }
}
