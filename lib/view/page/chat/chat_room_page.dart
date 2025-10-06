import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_settings.dart';
import '../../../provider/api/chat_room_invitations_notifier_provider.dart';
import '../../../provider/api/chat_room_notifier_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/send_chat_message_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/streaming_error_icon.dart';
import '../../widget/username_widget.dart';
import 'chat_room_chat.dart';
import 'chat_room_info.dart';
import 'chat_room_members.dart';

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
    final user = userId != null
        ? ref.watch(userNotifierProvider(account, userId: userId)).valueOrNull
        : null;
    final room = roomId != null
        ? ref.watch(chatRoomNotifierProvider(account, roomId!)).valueOrNull
        : null;
    final isMyRoom = room != null && room.owner.username == account.username;
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(
      pathSegments: [
        'chat',
        if (userId case final userId?) ...[
          'user',
          userId,
        ] else if (roomId case final roomId?) ...[
          'room',
          roomId,
        ],
      ],
    );

    return PopScope(
      onPopInvokedWithResult: (_, _) => ref
          .read(
            sendChatMessageNotifierProvider(
              account,
              userId: userId,
              roomId: roomId,
            ).notifier,
          )
          .save(),
      child: DefaultTabController(
        length: roomId != null ? 3 : 1,
        child: Scaffold(
          appBar: AppBar(
            title: user != null
                ? UsernameWidget(account: account, user: user)
                : Text(room != null ? room.name : t.misskey.directMessage),
            bottom: roomId != null
                ? TabBar(
                    tabs: [
                      Tab(text: t.misskey.chat_.messages),
                      Tab(text: t.misskey.chat_.members),
                      Tab(text: t.misskey.info),
                    ],
                  )
                : null,
            actions: [
              StreamingErrorIcon(
                tabSettings: TabSettings.homeTimeline(account),
              ),
              PopupMenuButton<void>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () => launchUrl(ref, url),
                    child: ListTile(
                      leading: const Icon(Icons.open_in_browser),
                      title: Text(t.aria.openInBrowser),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () => copyToClipboard(context, url.toString()),
                    child: ListTile(
                      leading: const Icon(Icons.copy),
                      title: Text(t.misskey.copyLink),
                    ),
                  ),
                  if (userId != null)
                    PopupMenuItem(
                      onTap: () => context.push('/$account/users/$userId'),
                      child: ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(t.misskey.user),
                      ),
                    ),
                  if (isMyRoom)
                    PopupMenuItem(
                      onTap: () async {
                        final user = await selectUser(
                          context,
                          account,
                          localOnly: true,
                        );
                        if (!context.mounted) return;
                        if (user != null) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(
                                  chatRoomInvitationsNotifierProvider(
                                    account,
                                    room.id,
                                  ).notifier,
                                )
                                .invite(user.id),
                          );
                        }
                      },
                      child: ListTile(
                        leading: const Icon(Icons.person_add),
                        title: Text(t.misskey.chat_.inviteUser),
                      ),
                    ),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              ChatRoomChat(account: account, userId: userId, roomId: roomId),
              if (roomId case final roomId?) ...[
                ChatRoomMembers(account: account, roomId: roomId),
                ChatRoomInfo(account: account, roomId: roomId),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
