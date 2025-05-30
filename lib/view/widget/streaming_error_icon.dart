import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/tab_settings.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../dialog/error_message_dialog.dart';

class StreamingErrorIcon extends ConsumerWidget {
  const StreamingErrorIcon({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!tabSettings.disableStreaming || !tabSettings.disableSubscribing) {
      final message = ref.watch(incomingMessageProvider(tabSettings.account));
      if (message.error
          case WebSocketChannelException() || TimeoutException()) {
        return IconButton(
          onPressed: () {
            ref.invalidate(incomingMessageProvider(tabSettings.account));
            ref.invalidate(webSocketChannelProvider(tabSettings.account));
            showErrorMessageDialog(
              context,
              error: message.error,
              stackTrace: message.stackTrace,
            );
          },
          icon: const Icon(Icons.error),
        );
      }
    }
    return const SizedBox.shrink();
  }
}
