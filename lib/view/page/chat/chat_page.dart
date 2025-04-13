import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
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
          title: Text(t.misskey.chat),
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
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: Text(t.misskey.startChat),
        ),
      ),
    );
  }
}
