import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_settings.dart';
import '../../../provider/api/chat_room_notifier_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../widget/chat_list_view.dart';
import '../../widget/streaming_error_icon.dart';
import '../../widget/username_widget.dart';

class ChatRoomPage extends ConsumerWidget {
  const ChatRoomPage({
    super.key,
    required this.account,
    this.userId,
    this.roomId,
  });

  final Account account;
  final String? userId;
  final String? roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user =
        userId != null
            ? ref
                .watch(userNotifierProvider(account, userId: userId))
                .valueOrNull
            : null;
    final room =
        roomId != null
            ? ref.watch(chatRoomNotifierProvider(account, roomId!)).valueOrNull
            : null;

    return Scaffold(
      appBar: AppBar(
        title:
            user != null
                ? UsernameWidget(account: account, user: user)
                : Text(room != null ? room.name : t.misskey.chat),
        actions: [
          StreamingErrorIcon(tabSettings: TabSettings.homeTimeline(account)),
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  if (userId != null)
                    PopupMenuItem(
                      onTap: () => context.push('/$account/users/$userId'),
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(t.misskey.user),
                      ),
                    ),
                  if (roomId != null)
                    PopupMenuItem(
                      onTap: () => context.push('/$account/chat/$roomId/info'),
                      child: ListTile(
                        leading: const Icon(Icons.info_outline),
                        title: Text(t.misskey.info),
                      ),
                    ),
                ],
          ),
        ],
      ),
      body: ChatListView(account: account, userId: userId, roomId: roomId),
    );
  }
}
