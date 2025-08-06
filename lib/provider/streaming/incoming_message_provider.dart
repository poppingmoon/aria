import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/streaming/incoming_message.dart';
import 'web_socket_channel_provider.dart';

part 'incoming_message_provider.g.dart';

@Riverpod(keepAlive: true)
class _ErrorCountNotifier extends _$ErrorCountNotifier {
  @override
  int build(Account account) {
    return 0;
  }

  void increment() {
    state += 1;
  }

  void reset() {
    state = 0;
  }
}

@riverpod
Stream<IncomingMessage> incomingMessage(Ref ref, Account account) async* {
  KeepAliveLink? link;
  Timer? timer;
  ref.onCancel(() {
    if (!(timer?.isActive ?? false)) {
      link?.close();
    }
  });
  ref.onDispose(() => timer?.cancel());

  final webSocketChannel = ref.watch(webSocketChannelProvider(account)).$1;

  yield const IncomingMessage();
  try {
    await for (final msg in webSocketChannel.stream) {
      if (kDebugMode) {
        debugPrint('webSocketChannel($account): $msg');
      }
      final message = jsonDecode(msg as String);
      yield IncomingMessage.fromJson(message as Map<String, dynamic>);
    }
  } catch (e, st) {
    link = ref.keepAlive();
    final errorCount = ref.read(_errorCountNotifierProvider(account));
    if (kDebugMode) {
      debugPrint('webSocketChannel($account): error $errorCount $e $st');
    }
    timer = Timer(
      Duration(seconds: pow(2, errorCount).toInt()),
      () => ref.invalidate(webSocketChannelProvider(account)),
    );
    ref.read(_errorCountNotifierProvider(account).notifier).increment();
    rethrow;
  }

  if (kDebugMode) {
    debugPrint('webSocketChannel($account): done');
  }
  ref.read(_errorCountNotifierProvider(account).notifier).reset();
  ref.invalidate(webSocketChannelProvider(account));
}
