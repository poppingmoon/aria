import 'dart:async';
import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/chat_event.dart';
import '../../model/streaming/incoming_message.dart';
import 'incoming_message_provider.dart';
import 'web_socket_channel_provider.dart';

part 'chat_stream_notifier_provider.g.dart';

@riverpod
FutureOr<String> _chatStreamConnection(
  Ref ref,
  Account account, {
  String? userId,
  String? roomId,
}) async {
  final webSocketChannel = (await ref.watch(
    webSocketChannelProvider(account).future,
  )).$1;
  final id = 'chat/${userId ?? roomId}';
  webSocketChannel.sink.add(
    jsonEncode({
      'type': 'connect',
      'body': {
        'channel': userId != null ? 'chatUser' : 'chatRoom',
        'id': id,
        'params': {'otherId': ?userId, 'roomId': ?roomId},
      },
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
class ChatStreamNotifier extends _$ChatStreamNotifier {
  @override
  Stream<ChatEvent> build(
    Account account, {
    String? userId,
    String? roomId,
  }) async* {
    _id = await ref.watch(
      _chatStreamConnectionProvider(
        account,
        userId: userId,
        roomId: roomId,
      ).future,
    );
    final controller = StreamController<ChatEvent>();
    ref.listen(incomingMessageProvider(account), (prev, next) {
      if (next case AsyncData(value: final message)) {
        if (prev?.value != message) {
          if (message.type == IncomingMessageType.channel &&
              message.body['id'] == _id) {
            switch (message.body) {
              case {'type': 'message', 'body': final Map<String, dynamic> body}:
                final message = ChatMessage.fromJson(body);
                controller.sink.add(Message(message));
              case {'type': 'deleted', 'body': final String messageId}:
                controller.sink.add(Deleted(messageId));
              case {'type': 'react', 'body': final Map<String, dynamic> body}:
                controller.sink.add(React.fromJson(body));
              case {'type': 'unreact', 'body': final Map<String, dynamic> body}:
                controller.sink.add(Unreact.fromJson(body));
            }
          }
        }
      }
    });
    yield* controller.stream;
  }

  String? _id;

  Future<void> read() async {
    (await ref.read(webSocketChannelProvider(account).future)).$1.sink.add(
      jsonEncode({
        'type': 'ch',
        'body': {'id': _id, 'type': 'read', 'body': null},
      }),
    );
  }
}
