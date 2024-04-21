import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import 'web_socket_channel_provider.dart';

part 'incoming_message_provider.g.dart';

@riverpod
Stream<IncomingMessage> incomingMessage(
  IncomingMessageRef ref,
  Account account,
) async* {
  final webSocketChannel = ref.watch(webSocketChannelProvider(account));
  await for (final msg in webSocketChannel.stream) {
    final message = jsonDecode(msg as String);
    debugPrint('webSocketChannel: $msg');
    yield IncomingMessage.fromJson(message as Map<String, dynamic>);
  }
}
