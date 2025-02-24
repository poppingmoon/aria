import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/tab_settings.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../dialog/error_message_dialog.dart';

class StreamingErrorIcon extends HookConsumerWidget {
  const StreamingErrorIcon({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!tabSettings.disableStreaming || !tabSettings.disableSubscribing) {
      final delay = useState(1);
      final message = ref.watch(incomingMessageProvider(tabSettings.account));
      if (message.error != null) {
        return FutureBuilder(
          future: Future<void>.delayed(Duration(seconds: delay.value), () {
            ref.invalidate(webSocketChannelProvider);
            delay.value *= 2;
          }),
          builder:
              (_, _) => IconButton(
                onPressed:
                    () => showErrorMessageDialog(
                      context,
                      error: message.error,
                      stackTrace: message.stackTrace,
                    ),
                icon: const Icon(Icons.error),
              ),
        );
      }
    }
    return const SizedBox.shrink();
  }
}
