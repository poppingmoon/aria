import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../dialog/error_message_dialog.dart';

class StreamingErrorIcon extends StatelessWidget {
  const StreamingErrorIcon({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context) {
    if (!tabSettings.disableStreaming || !tabSettings.disableSubscribing) {
      return _StreamingErrorIcon(account: tabSettings.account);
    }
    return const SizedBox.shrink();
  }
}

class _StreamingErrorIcon extends HookConsumerWidget {
  const _StreamingErrorIcon({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final error = useState<Object?>(null);
    final stackTrace = useState<StackTrace?>(null);
    ref.listen(
      incomingMessageProvider(account).select(
        (message) => (
          error: message.error,
          stackTrace: message.stackTrace,
          isLoading: message.isLoading,
        ),
      ),
      (prev, next) {
        if (next.error case final e?) {
          if (e case WebSocketChannelException() || TimeoutException()) {
            error.value = e;
            stackTrace.value = next.stackTrace;
          }
        } else if (prev?.error case final e? when next.isLoading) {
          if (e case WebSocketChannelException() || TimeoutException()) {
            error.value = e;
            stackTrace.value = prev?.stackTrace;
          }
        } else {
          error.value = null;
          stackTrace.value = null;
        }
      },
    );

    if (error.value case final error?) {
      return IconButton(
        onPressed: () {
          ref.invalidate(incomingMessageProvider(account));
          ref.invalidate(webSocketChannelProvider(account));
          showErrorMessageDialog(
            context,
            error: error,
            stackTrace: stackTrace.value,
          );
        },
        icon: const Icon(Icons.error),
      );
    }
    return const SizedBox.shrink();
  }
}
