import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'chat_history_notifier_provider.g.dart';

@riverpod
class ChatHistoryNotifier extends _$ChatHistoryNotifier {
  @override
  FutureOr<List<ChatMessage>> build(Account account) async {
    final misskey = ref.watch(misskeyProvider(account));
    final history = await Future.wait([
      misskey.chat.history(const ChatHistoryRequest(limit: 30, room: false)),
      misskey.chat.history(const ChatHistoryRequest(limit: 30, room: true)),
    ]);

    return history.flattenedToList.sorted(
      (a, b) => b.createdAt.compareTo(a.createdAt),
    );
  }

  void updateHistory(ChatMessage message) {
    state = AsyncValue.data([
      message.copyWith(isRead: false),
      ...?state.value?.where(
        (e) =>
            (message.toRoomId != null && e.toRoomId != message.toRoomId) ||
            (e.toUserId != message.toUserId &&
                e.toUserId != message.fromUserId),
      ),
    ]);
  }

  void read(String messageId) {
    if (state.value case final value?) {
      state = AsyncValue.data(
        value
            .map(
              (message) => message.id == messageId
                  ? message.copyWith(isRead: true)
                  : message,
            )
            .toList(),
      );
    }
  }
}
