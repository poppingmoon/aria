import 'dart:async';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import '../server_url_notifier_provider.dart';
import '../token_provider.dart';

part 'web_socket_channel_provider.g.dart';

Duration? _retry(int retryCount, Object error) {
  if (error case WebSocketChannelException() || TimeoutException()) {
    return Duration(seconds: pow(2, retryCount).toInt());
  } else {
    return null;
  }
}

@Riverpod(retry: _retry)
FutureOr<(IOWebSocketChannel, DateTime)> webSocketChannel(
  Ref ref,
  Account account,
) async {
  final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
  final token = ref.watch(tokenProvider(account));
  final streamingUrl = serverUrl.replace(
    scheme: serverUrl.scheme == 'https' ? 'wss' : 'ws',
    pathSegments: ['streaming'],
    queryParameters: token != null ? {'i': token} : null,
  );
  final webSocketChannel = IOWebSocketChannel.connect(
    streamingUrl,
    pingInterval: const Duration(minutes: 1),
    connectTimeout: const Duration(seconds: 20),
  );
  ref.onDispose(() async {
    await webSocketChannel.sink.done;
    await webSocketChannel.sink.close();
  });
  await webSocketChannel.ready;

  return (webSocketChannel, DateTime.now());
}
