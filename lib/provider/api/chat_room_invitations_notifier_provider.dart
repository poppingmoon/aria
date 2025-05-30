import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_room_invitations_notifier_provider.g.dart';

@riverpod
class ChatRoomInvitationsNotifier extends _$ChatRoomInvitationsNotifier {
  @override
  FutureOr<PaginationState<ChatJoining>> build(
    Account account,
    String roomId,
  ) async {
    final response = await _fetchInvitations();
    return PaginationState.fromIterable(response);
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<ChatJoining>> _fetchInvitations({String? untilId}) {
    return _misskey.chat.rooms.invitations.outbox(
      ChatRoomsInvitationsOutboxRequest(
        roomId: roomId,
        untilId: untilId,
        limit: 20,
      ),
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
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchInvitations(
        untilId: value.items.lastOrNull?.id,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
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
