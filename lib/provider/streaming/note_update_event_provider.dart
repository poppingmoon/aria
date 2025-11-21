import 'dart:async';
import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/note_update_event.dart';
import 'incoming_message_provider.dart';
import 'web_socket_channel_provider.dart';

part 'note_update_event_provider.g.dart';

@riverpod
FutureOr<String> _noteSubscription(
  Ref ref,
  Account account,
  String noteId,
) async {
  final webSocketChannel = (await ref.read(
    webSocketChannelProvider(account).future,
  )).$1;
  webSocketChannel.sink.add(
    jsonEncode({
      'type': 's',
      'body': {'id': noteId},
    }),
  );
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(seconds: 10), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() {
    timer?.cancel();
    if (webSocketChannel.closeCode == null) {
      webSocketChannel.sink.add(
        jsonEncode({
          'type': 'un',
          'body': {'id': noteId},
        }),
      );
    }
  });
  return noteId;
}

@riverpod
Stream<NoteUpdateEvent> noteUpdateEvent(
  Ref ref,
  Account account,
  String noteId,
) async* {
  final id = await ref.watch(_noteSubscriptionProvider(account, noteId).future);
  final controller = StreamController<NoteUpdateEvent>();
  ref.listen(incomingMessageProvider(account), (prev, next) {
    if (next case AsyncData(value: final message)) {
      if (message.type == IncomingMessageType.noteUpdated &&
          message.body['id'] == id) {
        switch (message.body) {
          case {'type': 'reacted', 'body': final Map<String, dynamic> body}:
            controller.sink.add(Reacted.fromJson(body));
          case {'type': 'unreacted', 'body': final Map<String, dynamic> body}:
            controller.sink.add(Unreacted.fromJson(body));
          case {'type': 'deleted', 'body': final Map<String, dynamic> body}:
            controller.sink.add(Deleted.fromJson(body));
          case {'type': 'pollVoted', 'body': final Map<String, dynamic> body}:
            controller.sink.add(PollVoted.fromJson(body));
          case {'type': 'updated', 'body': final Map<String, dynamic> body}:
            controller.sink.add(Updated.fromJson(body));
        }
      }
    }
  });
  yield* controller.stream;
}
