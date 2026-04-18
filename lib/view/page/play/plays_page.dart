import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/endpoints_notifier_provider.dart';
import 'plays_featured.dart';
import 'plays_liked.dart';
import 'plays_my.dart';
import 'plays_search.dart';

class PlaysPage extends ConsumerWidget {
  const PlaysPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final isSearchAvailable = endpoints?.contains('flash/search') ?? false;

    return DefaultTabController(
      length: 1 + (isSearchAvailable ? 1 : 0) + (account.isGuest ? 0 : 2),
      initialIndex: isSearchAvailable ? 1 : 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Play'),
          bottom: TabBar(
            tabs: [
              if (isSearchAvailable) Tab(text: t.misskey.search),
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
            if (isSearchAvailable) PlaysSearch(account: account),
            PlaysFeatured(account: account),
            if (!account.isGuest) ...[
              PlaysMy(account: account),
              PlaysLiked(account: account),
            ],
          ],
        ),
        floatingActionButton: !account.isGuest
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
