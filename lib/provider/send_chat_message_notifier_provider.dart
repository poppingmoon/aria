import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'api/misskey_provider.dart';
import 'shared_preferences_provider.dart';

part 'send_chat_message_notifier_provider.g.dart';

@riverpod
class SendChatMessageNotifier extends _$SendChatMessageNotifier {
  @override
  String? build(Account account, {String? userId, String? roomId}) {
    assert(userId != null || roomId != null);
    ref.onDispose(() => _timer?.cancel());
    return ref.watch(sharedPreferencesProvider).getString(_key);
  }

  String get _key => '$account/chatMessageDraft/${userId ?? roomId}';

  Timer? _timer;

  void save() {
    _timer?.cancel();
    _timer = null;
    if (state case final draft?) {
      ref.read(sharedPreferencesProvider).setString(_key, draft);
    } else {
      ref.read(sharedPreferencesProvider).remove(_key);
    }
  }

  void setText(String? text) {
    if (text == null || text.isEmpty) {
      if (state != null) {
        state = null;
      } else {
        return;
      }
    } else if (state != text) {
      state = text;
    } else {
      return;
    }
    _timer ??= Timer(const Duration(seconds: 3), save);
  }

  void reset() {
    state = null;
    _timer?.cancel();
    _timer = null;
    ref.read(sharedPreferencesProvider).remove(_key);
  }

  Future<ChatMessage> send({String? fileId}) async {
    final ChatMessage message;
    if (userId case final userId?) {
      message = await ref
          .read(misskeyProvider(account))
          .chat
          .messages
          .createToUser(
            ChatMessagesCreateToUserRequest(
              toUserId: userId,
              text: state,
              fileId: fileId,
            ),
          );
    } else if (roomId case final roomId?) {
      message = await ref
          .read(misskeyProvider(account))
          .chat
          .messages
          .createToRoom(
            ChatMessagesCreateToRoomRequest(
              toRoomId: roomId,
              text: state,
              fileId: fileId,
            ),
          );
    } else {
      throw ArgumentError.value((userId, roomId), '(userId, roomId)');
    }
    reset();
    return message;
  }
}
