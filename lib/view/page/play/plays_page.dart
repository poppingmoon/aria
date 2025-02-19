import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'plays_featured.dart';
import 'plays_liked.dart';
import 'plays_my.dart';

class PlaysPage extends ConsumerWidget {
  const PlaysPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 1 + (account.isGuest ? 0 : 2),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Play'),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.featured),
              if (!account.isGuest) ...[
                Tab(text: t.misskey.play_.my),
                Tab(text: t.misskey.play_.liked),
              ],
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PlaysFeatured(account: account),
            if (!account.isGuest) ...[
              PlaysMy(account: account),
              PlaysLiked(account: account),
            ],
          ],
        ),
        floatingActionButton:
            !account.isGuest
                ? FloatingActionButton(
                  tooltip: t.misskey.play_.new_,
                  onPressed: () => context.push('/$account/play/new'),
                  child: const Icon(Icons.add),
                )
                : null,
      ),
    );
  }
}
