import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_memberships_notifier_provider.g.dart';

@riverpod
class ChatMembershipsNotifier extends _$ChatMembershipsNotifier {
  @override
  FutureOr<PaginationState<ChatJoining>> build(Account account) async {
    final response = await _fetchMemberships();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<ChatJoining>> _fetchMemberships({String? untilId}) {
    return ref
        .read(misskeyProvider(account))
        .chat
        .rooms
        .joining(ChatRoomsJoiningRequest(untilId: untilId));
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
      final response = await _fetchMemberships(
        untilId: value.items.lastOrNull?.id,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
