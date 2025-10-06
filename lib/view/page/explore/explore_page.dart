import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'explore_featured.dart';
import 'explore_hashtags.dart';
import 'explore_roles.dart';
import 'explore_users.dart';

class ExplorePage extends ConsumerWidget {
  const ExplorePage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3 + (account.isGuest ? 0 : 1),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.explore),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.featured),
              Tab(text: t.misskey.users),
              if (!account.isGuest) Tab(text: t.misskey.roles),
              Tab(text: t.misskey.hashtags),
            ],
            isScrollable: !account.isGuest,
            tabAlignment: !account.isGuest ? TabAlignment.center : null,
          ),
        ),
        body: TabBarView(
          children: [
            ExploreFeatured(account: account),
            ExploreUsers(account: account),
            if (!account.isGuest) ExploreRoles(account: account),
            ExploreHashtags(account: account),
          ],
        ),
      ),
    );
  }
}
