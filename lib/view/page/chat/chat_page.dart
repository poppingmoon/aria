import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../dialog/user_select_dialog.dart';
import 'chat_home.dart';
import 'chat_invitations.dart';
import 'chat_joining_rooms.dart';
import 'chat_owned_rooms.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key, required this.account, this.initialIndex = 0});

  final Account account;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 4,
      initialIndex: initialIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.directMessage),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.chat_.home),
              Tab(text: t.misskey.chat_.invitations),
              Tab(text: t.misskey.chat_.joiningRooms),
              Tab(text: t.misskey.chat_.yourRooms),
            ],
            isScrollable: true,
            tabAlignment: TabAlignment.center,
          ),
        ),
        body: TabBarView(
          children: [
            ChatHome(account: account),
            ChatInvitations(account: account),
            ChatJoiningRooms(account: account),
            ChatOwnedRooms(account: account),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => showModalBottomSheet<void>(
            context: context,
            clipBehavior: Clip.hardEdge,
            builder: (context) => _ChatCreateSheet(account: account),
          ),
          icon: const Icon(Icons.add),
          label: Text(t.misskey.startChat),
        ),
      ),
    );
  }
}

class _ChatCreateSheet extends ConsumerWidget {
  const _ChatCreateSheet({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: const Icon(Icons.people),
          title: Text(t.misskey.chat_.individualChat),
          subtitle: Text(t.misskey.chat_.individualChat_description),
          onTap: () async {
            final user = await selectUser(context, account, localOnly: true);
            if (!context.mounted) return;
            if (user != null) {
              context.pop();
              await context.push('/$account/chat/user/${user.id}');
            }
          },
        ),
        ListTile(
          leading: const Icon(Icons.meeting_room),
          title: Text(t.misskey.chat_.roomChat),
          subtitle: Text(t.misskey.chat_.roomChat_description),
          onTap: () => showModalBottomSheet<void>(
            context: context,
            clipBehavior: Clip.hardEdge,
            builder: (context) => ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.add),
                  title: Text(t.misskey.chat_.createRoom),
                  onTap: () async {
                    final name = await showTextFieldDialog(
                      context,
                      title: Text(t.misskey.name),
                    );
                    if (!context.mounted) return;
                    if (name != null) {
                      final room = await futureWithDialog(
                        context,
                        ref
                            .read(misskeyProvider(account))
                            .chat
                            .rooms
                            .create(ChatRoomsCreateRequest(name: name)),
                      );
                      if (!context.mounted) return;
                      if (room != null) {
                        context.pop();
                        await context.push('/$account/chat/room/${room.id}');
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
