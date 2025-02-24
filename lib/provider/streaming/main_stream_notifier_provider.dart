import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/main_event.dart';
import '../notes_notifier_provider.dart';
import 'incoming_message_provider.dart';
import 'web_socket_channel_provider.dart';

part 'main_stream_notifier_provider.g.dart';

@riverpod
class MainStreamNotifier extends _$MainStreamNotifier {
  @override
  Stream<MainEvent> build(Account account) async* {
    ref.listen(webSocketChannelProvider(account), (_, _) => connect());
    final message = await ref.watch(incomingMessageProvider(account).future);
    if (message.type == IncomingMessageType.channel &&
        message.body['id'] == _id) {
      final event = message.body;
      final body = event['body'] as Map<String, dynamic>?;
      switch (event['type']) {
        case 'notification':
          final notification = INotificationsResponse.fromJson(body!);
          if (notification case INotificationsResponse(:final note?)) {
            ref.read(notesNotifierProvider(account).notifier).add(note);
          }
          yield Notification(notification);
        case 'mention':
          final note = Note.fromJson(body!);
          ref.read(notesNotifierProvider(account).notifier).add(note);
          yield Mention(note);
        case 'meUpdated':
          final i = MeDetailed.fromJson(body!);
          ref
              .read(notesNotifierProvider(account).notifier)
              .addAll(i.pinnedNotes ?? []);
          yield MeUpdated(i);
        case 'unreadNotification':
          final notification = INotificationsResponse.fromJson(body!);
          if (notification case INotificationsResponse(:final note?)) {
            ref.read(notesNotifierProvider(account).notifier).add(note);
          }
          yield UnreadNotification(notification);
        case 'receiveFollowRequest':
          final user = UserDetailed.fromJson(body!);
          yield ReceiveFollowRequest(user);
        case 'announcementCreated':
          final announcement = AnnouncementsResponse.fromJson(
            body!['announcement'] as Map<String, dynamic>,
          );
          yield AnnouncementCreated(announcement);
        case 'urlUploadFinished':
          yield UrlUploadFinished.fromJson(body!);
      }
    }
  }

  WebSocketChannel get _webSocketChannel =>
      ref.read(webSocketChannelProvider(account));

  static const _id = 'main';

  Future<void> connect() async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'connect',
        'body': {'channel': 'main', 'id': _id},
      }),
    );
  }

  Future<void> disconnect() async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'disconnect',
        'body': {'id': _id},
      }),
    );
  }
}
