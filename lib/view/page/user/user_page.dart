import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../hook/confetti_controller_hook.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';
import 'user_clips.dart';
import 'user_featured.dart';
import 'user_gallery.dart';
import 'user_home.dart';
import 'user_lists.dart';
import 'user_notes.dart';
import 'user_pages.dart';
import 'user_plays.dart';
import 'user_reactions.dart';

class UserPage extends HookConsumerWidget {
  const UserPage({
    super.key,
    required this.account,
    this.userId,
    this.username,
    this.host,
  });

  final Account account;
  final String? userId;
  final String? username;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref
        .watch(
          userNotifierProvider(
            account,
            userId: this.userId,
            username: username,
            host: host,
          ),
        )
        .valueOrNull;
    final userId = this.userId ?? user?.id;
    final now = DateTime.now();
    final isLocal = user != null && user.host == null;
    final isReactionsVisibile = user != null &&
        (user.publicReactions ||
            (!account.isGuest &&
                account.username == user.username &&
                user.host == null));

    return DefaultTabController(
      length: 2 + (isLocal ? 6 : 0) + (isReactionsVisibile ? 1 : 0),
      child: Scaffold(
        appBar: AppBar(
          title: user != null
              ? UsernameWidget(account: account, user: user)
              : null,
          bottom: user != null
              ? TabBar(
                  tabs: [
                    Tab(text: t.misskey.overview),
                    Tab(text: t.misskey.notes),
                    if (isLocal) Tab(text: t.misskey.featured),
                    if (isReactionsVisibile) Tab(text: t.misskey.reactions),
                    if (isLocal) ...[
                      Tab(text: t.misskey.clips),
                      Tab(text: t.misskey.lists),
                      Tab(text: t.misskey.pages),
                      const Tab(text: 'Play'),
                      Tab(text: t.misskey.gallery),
                    ],
                  ],
                  isScrollable: isLocal,
                  tabAlignment: isLocal ? TabAlignment.center : null,
                )
              : null,
          actions: [
            if (userId != null)
              IconButton(
                onPressed: () => showUserSheet(
                  context: context,
                  account: account,
                  userId: userId,
                  disableHeader: true,
                ),
                icon: const Icon(Icons.more_vert),
              ),
          ],
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                UserHome(
                  account: account,
                  userId: this.userId,
                  username: username,
                  host: host,
                ),
                if (userId != null) ...[
                  UserNotes(account: account, userId: userId),
                  if (isLocal) UserFeatured(account: account, userId: userId),
                  if (isReactionsVisibile)
                    UserReactions(account: account, userId: userId),
                  if (isLocal) ...[
                    UserClips(account: account, userId: userId),
                    UserLists(account: account, userId: userId),
                    UserPages(account: account, userId: userId),
                    UserPlays(account: account, userId: userId),
                    UserGallery(account: account, userId: userId),
                  ],
                ],
              ],
            ),
            if (user?.birthday?.day == now.day &&
                user?.birthday?.month == now.month)
              Align(
                alignment: Alignment.topCenter,
                child: ConfettiWidget(
                  confettiController: useConfettiController(),
                  blastDirection: -pi / 2,
                  maxBlastForce: 10,
                  gravity: 0.1,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
