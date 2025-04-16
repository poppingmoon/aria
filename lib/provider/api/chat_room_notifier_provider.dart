import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'chat_room_notifier_provider.g.dart';

@riverpod
class ChatRoomNotifier extends _$ChatRoomNotifier {
  @override
  FutureOr<ChatRoom> build(Account account, String roomId) {
    return ref
        .watch(misskeyProvider(account))
        .chat
        .rooms
        .show(ChatRoomsShowRequest(roomId: roomId));
  }
}
