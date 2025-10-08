import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'chat_room_notifier_provider.g.dart';

@riverpod
class ChatRoomNotifier extends _$ChatRoomNotifier {
  @override
  FutureOr<ChatRoom> build(Account account, String roomId) {
    return _misskey.chat.rooms.show(ChatRoomsShowRequest(roomId: roomId));
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> updateRoom({String? name, String? description}) async {
    final room = await _misskey.chat.rooms.update(
      ChatRoomsUpdateRequest(
        roomId: roomId,
        name: name,
        description: description,
      ),
    );
    state = AsyncValue.data(room);
  }

  Future<void> delete() async {
    await _misskey.chat.rooms.delete(ChatRoomsDeleteRequest(roomId: roomId));
  }

  Future<void> mute(bool mute) async {
    await _misskey.chat.rooms.mute(
      ChatRoomsMuteRequest(roomId: roomId, mute: mute),
    );
    if (state.value case final value?) {
      state = AsyncValue.data(value.copyWith(isMuted: mute));
    }
  }

  Future<void> leave() async {
    await _misskey.chat.rooms.leave(ChatRoomsLeaveRequest(roomId: roomId));
  }
}
