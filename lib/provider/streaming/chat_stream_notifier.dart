import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import '../../model/streaming/chat_event.dart';
import '../../model/streaming/incoming_message.dart';
import 'incoming_message_provider.dart';
import 'web_socket_channel_provider.dart';

part 'chat_stream_notifier.g.dart';

@riverpod
class ChatStreamNotifier extends _$ChatStreamNotifier {
  @override
  Stream<ChatEvent> build(
    Account account, {
    String? userId,
    String? roomId,
  }) async* {
    ref.listen(webSocketChannelProvider(account), (_, _) => connect());
    final message = await ref.watch(incomingMessageProvider(account).future);
    if (message.type == IncomingMessageType.channel &&
        message.body['id'] == _id) {
      final event = message.body;
      switch (event['type']) {
        case 'message':
          if (event['body'] case final Map<String, dynamic> body) {
            final message = ChatMessage.fromJson(body);
            yield Message(message);
          }
        case 'deleted':
          if (event['body'] case final String messageId) {
            yield Deleted(messageId);
          }
        case 'react':
          if (event['body'] case final Map<String, dynamic> body) {
            yield React.fromJson(body);
          }
        case 'unreact':
          if (event['body'] case final Map<String, dynamic> body) {
            yield Unreact.fromJson(body);
          }
      }
    }
  }

  WebSocketChannel get _webSocketChannel =>
      ref.read(webSocketChannelProvider(account)).$1;

  String get _id => 'chat/${userId ?? roomId}';

  Future<void> connect() async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'connect',
        'body': {
          'channel': userId != null ? 'chatUser' : 'chatRoom',
          'id': _id,
          'params': {
            if (userId != null) 'otherId': userId,
            if (roomId != null) 'roomId': roomId,
          },
        },
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

  Future<void> read() async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'ch',
        'body': {'id': _id, 'type': 'read', 'body': null},
      }),
    );
  }
}
