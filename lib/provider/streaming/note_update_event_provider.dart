import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/note_update_event.dart';
import 'incoming_message_provider.dart';

part 'note_update_event_provider.g.dart';

@riverpod
Stream<NoteUpdateEvent> noteUpdateEvent(
  Ref ref,
  Account account,
  String noteId,
) async* {
  final message = await ref.watch(incomingMessageProvider(account).future);
  if (message.type == IncomingMessageType.noteUpdated &&
      message.body['id'] == noteId) {
    switch (message.body['type']) {
      case 'reacted':
        yield Reacted.fromJson(message.body['body'] as Map<String, dynamic>);
      case 'unreacted':
        yield Unreacted.fromJson(message.body['body'] as Map<String, dynamic>);
      case 'deleted':
        yield Deleted.fromJson(message.body['body'] as Map<String, dynamic>);
      case 'pollVoted':
        yield PollVoted.fromJson(message.body['body'] as Map<String, dynamic>);
      case 'updated':
        yield Updated.fromJson(message.body['body'] as Map<String, dynamic>);
    }
  }
}
