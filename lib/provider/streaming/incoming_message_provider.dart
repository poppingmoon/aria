import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import 'web_socket_channel_provider.dart';

part 'incoming_message_provider.g.dart';

@riverpod
Stream<IncomingMessage> incomingMessage(Ref ref, Account account) {
  final webSocketChannel = ref.watch(webSocketChannelProvider(account));
  return webSocketChannel.stream.map((msg) {
    final message = jsonDecode(msg as String);
    debugPrint('webSocketChannel: $msg');
    return IncomingMessage.fromJson(message as Map<String, dynamic>);
  });
}
