import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'chat_messages_notifier_provider.g.dart';

@riverpod
class ChatMessagesNotifier extends _$ChatMessagesNotifier {
  @override
  Stream<PaginationState<ChatMessage>> build(
    Account account, {
    String? userId,
    String? roomId,
  }) async* {
    final response = await _fetchMessages();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<ChatMessage>> _fetchMessages({String? untilId}) async {
    Iterable<ChatMessage> messages = [];
    if (userId case final userId?) {
      messages = await _misskey.chat.messages.userTimeline(
        ChatMessagesUserTimelineRequest(
          userId: userId,
          untilId: untilId,
          limit: 20,
        ),
      );
    }
    if (roomId case final roomId?) {
      messages = await _misskey.chat.messages.roomTimeline(
        ChatMessagesRoomTimelineRequest(
          roomId: roomId,
          untilId: untilId,
          limit: 20,
        ),
      );
    }
    if (untilId != null) {
      return messages.where((message) => message.id.compareTo(untilId) < 0);
    } else {
      return messages;
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
      final response = await _fetchMessages(
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

  void addReaction({
    required String messageId,
    required String reaction,
    UserLite? user,
  }) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map(
              (message) => message.id == messageId
                  ? message.copyWith(
                      reactions: [
                        ...message.reactions,
                        ChatMessageReaction(reaction: reaction, user: user),
                      ],
                    )
                  : message,
            )
            .toList(),
      ),
    );
  }

  void removeReaction({
    required String messageId,
    required String reaction,
    UserLite? user,
  }) {
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map(
              (message) => message.id == messageId
                  ? message.copyWith(
                      reactions: message.reactions
                          .where(
                            (r) =>
                                r.reaction != reaction ||
                                r.user?.id != user?.id,
                          )
                          .toList(),
                    )
                  : message,
            )
            .toList(),
      ),
    );
  }

  Future<void> updateMessage(String messageId) async {
    final updated = await _misskey.chat.messages.show(
      ChatMessagesShowRequest(messageId: messageId),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map((message) => message.id == updated.id ? updated : message)
            .toList(),
      ),
    );
  }
}
