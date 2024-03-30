import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import '../token_provider.dart';

part 'web_socket_channel_provider.g.dart';

@Riverpod(keepAlive: true)
WebSocketChannel webSocketChannel(
  WebSocketChannelRef ref,
  Account account,
) {
  final token = ref.watch(tokenProvider(account));
  if (kDebugMode) {
    if (account.host.startsWith('localhost')) {
      final webSocketChannel = IOWebSocketChannel.connect(
        "ws://${account.host}/streaming${token != null ? "?i=$token" : ""}",
        pingInterval: const Duration(minutes: 1),
        connectTimeout: const Duration(seconds: 20),
      );
      ref.onDispose(() => webSocketChannel.sink.close());
      return webSocketChannel;
    }
  }
  final webSocketChannel = IOWebSocketChannel.connect(
    "wss://${account.host}/streaming${token != null ? "?i=$token" : ""}",
    pingInterval: const Duration(minutes: 1),
    connectTimeout: const Duration(seconds: 20),
  );
  ref.onDispose(() => webSocketChannel.sink.close());
  return webSocketChannel;
}
