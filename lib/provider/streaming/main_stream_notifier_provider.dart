import 'dart:async';
import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/main_event.dart';
import '../notes_notifier_provider.dart';
import 'incoming_message_provider.dart';
import 'web_socket_channel_provider.dart';

part 'main_stream_notifier_provider.g.dart';

@riverpod
FutureOr<String> _mainStreamConnection(Ref ref, Account account) async {
  final webSocketChannel = (await ref.watch(
    webSocketChannelProvider(account).future,
  )).$1;
  const id = 'main';
  webSocketChannel.sink.add(
    jsonEncode({
      'type': 'connect',
      'body': {'channel': 'main', 'id': id},
    }),
  );
  ref.onDispose(() {
    if (webSocketChannel.closeCode == null) {
      webSocketChannel.sink.add(
        jsonEncode({
          'type': 'disconnect',
          'body': {'id': id},
        }),
      );
    }
  });
  return id;
}

@riverpod
Stream<MainEvent> mainStream(Ref ref, Account account) async* {
  final id = await ref.watch(_mainStreamConnectionProvider(account).future);
  final controller = StreamController<MainEvent>();
  ref.listen(incomingMessageProvider(account), (prev, next) {
    if (next case AsyncData(value: final message)) {
      if (prev?.value != message) {
        if (message.type == IncomingMessageType.channel &&
            message.body['id'] == id) {
          switch (message.body) {
            case {
              'type': 'notification',
              'body': final Map<String, dynamic> body,
            }:
              final notification = INotificationsResponse.fromJson(body);
              if (notification case INotificationsResponse(:final note?)) {
                ref.read(notesNotifierProvider(account).notifier).add(note);
              }
              controller.sink.add(Notification(notification));
            case {'type': 'mention', 'body': final Map<String, dynamic> body}:
              final note = Note.fromJson(body);
              ref.read(notesNotifierProvider(account).notifier).add(note);
              controller.sink.add(Mention(note));
            case {'type': 'meUpdated', 'body': final Map<String, dynamic> body}:
              final i = MeDetailed.fromJson(body);
              ref
                  .read(notesNotifierProvider(account).notifier)
                  .addAll(i.pinnedNotes ?? []);
              controller.sink.add(MeUpdated(i));
            case {
              'type': 'urlUploadFinished',
              'body': final Map<String, dynamic> body,
            }:
              controller.sink.add(UrlUploadFinished.fromJson(body));
            case {
              'type': 'unreadNotification',
              'body': final Map<String, dynamic> body,
            }:
              final notification = INotificationsResponse.fromJson(body);
              if (notification case INotificationsResponse(:final note?)) {
                ref.read(notesNotifierProvider(account).notifier).add(note);
              }
              controller.sink.add(UnreadNotification(notification));
            case {
              'type': 'newChatMessage',
              'body': final Map<String, dynamic> body,
            }:
              final message = ChatMessage.fromJson(body);
              controller.sink.add(NewChatMessage(message));
            case {
              'type': 'receiveFollowRequest',
              'body': final Map<String, dynamic> body,
            }:
              final user = UserLite.fromJson(body);
              controller.sink.add(ReceiveFollowRequest(user));
            case {
              'type': 'announcementCreated',
              'body': {'announcement': final Map<String, dynamic> body},
            }:
              final announcement = AnnouncementsResponse.fromJson(body);
              controller.sink.add(AnnouncementCreated(announcement));
          }
        }
      }
    }
  });
  yield* controller.stream;
}
