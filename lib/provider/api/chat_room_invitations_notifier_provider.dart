import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_room_invitations_notifier_provider.g.dart';

@riverpod
class ChatRoomInvitationsNotifier extends _$ChatRoomInvitationsNotifier {
  @override
  Stream<PaginationState<ChatJoining>> build(
    Account account,
    String roomId,
  ) async* {
    final response = await _fetchInvitations();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<ChatJoining>> _fetchInvitations({String? untilId}) async {
    final invitations = await _misskey.chat.rooms.invitations.outbox(
      ChatRoomsInvitationsOutboxRequest(
        roomId: roomId,
        untilId: untilId,
        limit: 20,
      ),
    );
    if (untilId != null) {
      return invitations.where(
        (invitation) => invitation.id.compareTo(untilId) < 0,
      );
    } else {
      return invitations;
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

  Future<void> invite(String userId) async {
    final invitation = await _misskey.chat.rooms.invitations.create(
      ChatRoomsInvitationsCreateRequest(roomId: roomId, userId: userId),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(items: [invitation, ...value.items]),
    );
  }
}
