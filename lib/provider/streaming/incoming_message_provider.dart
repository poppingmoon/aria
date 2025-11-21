import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import 'web_socket_channel_provider.dart';

part 'incoming_message_provider.g.dart';

@riverpod
Stream<IncomingMessage> incomingMessage(Ref ref, Account account) async* {
  final webSocketChannel = (await ref.watch(
    webSocketChannelProvider(account).future,
  )).$1;

  yield const IncomingMessage();
  await for (final msg in webSocketChannel.stream) {
    if (kDebugMode) {
      debugPrint('webSocketChannel($account): $msg');
    }
    if (msg is String) {
      if (jsonDecode(msg) case final Map<String, dynamic> message) {
        yield IncomingMessage.fromJson(message);
      }
    }
  }

  if (kDebugMode) {
    debugPrint('webSocketChannel($account): done');
  }
  ref.invalidate(webSocketChannelProvider(account));
}
