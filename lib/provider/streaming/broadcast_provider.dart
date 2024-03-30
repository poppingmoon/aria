import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/broadcast.dart';
import '../../model/streaming/incoming_message.dart';
import 'incoming_message_provider.dart';

part 'broadcast_provider.g.dart';

@riverpod
Stream<Broadcast> broadcast(BroadcastRef ref, Account account) async* {
  final message = ref.watch(incomingMessageProvider(account)).valueOrNull;
  if (message != null) {
    switch (message.type) {
      case IncomingMessageType.emojiAdded:
        yield EmojiAdded.fromJson(message.body);
      case IncomingMessageType.emojiUpdated:
        yield EmojiUpdated.fromJson(message.body);
      case IncomingMessageType.emojiDeleted:
        yield EmojiDeleted.fromJson(message.body);
      case IncomingMessageType.announcementCreated:
        yield AnnouncementCreated.fromJson(message.body);
      default:
    }
  }
}
