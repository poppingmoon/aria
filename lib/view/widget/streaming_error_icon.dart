import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../dialog/error_message_dialog.dart';

class StreamingErrorIcon extends StatelessWidget {
  const StreamingErrorIcon({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context) {
    if (tabSettings.tabType
        case TabType.homeTimeline ||
            TabType.localTimeline ||
            TabType.hybridTimeline ||
            TabType.globalTimeline ||
            TabType.roleTimeline ||
            TabType.userList ||
            TabType.antenna ||
            TabType.hashtag ||
            TabType.channel ||
            TabType.custom
        when !tabSettings.disableStreaming || !tabSettings.disableSubscribing) {
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
    final (error, stackTrace) = ref.watch(
      webSocketChannelProvider(
        account,
      ).select((message) => (message.error, message.stackTrace)),
    );
    useOnAppLifecycleStateChange((_, next) {
      if (next == AppLifecycleState.resumed && error != null) {
        ref.invalidate(webSocketChannelProvider(account));
      }
    });

    if (error != null) {
      return IconButton(
        onPressed: () {
          ref.invalidate(webSocketChannelProvider(account));
          showErrorMessageDialog(context, error: error, stackTrace: stackTrace);
        },
        icon: const Icon(Icons.error),
      );
    }
    return const SizedBox.shrink();
  }
}
