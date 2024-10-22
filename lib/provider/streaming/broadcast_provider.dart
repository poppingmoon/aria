import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/broadcast.dart';
import '../../model/streaming/incoming_message.dart';
import 'incoming_message_provider.dart';

part 'broadcast_provider.g.dart';

@riverpod
Stream<Broadcast> broadcast(Ref ref, Account account) async* {
  final message = await ref.watch(incomingMessageProvider(account).future);
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
