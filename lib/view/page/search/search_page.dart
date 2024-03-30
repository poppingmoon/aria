import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_provider.dart';
import 'search_notes.dart';
import 'search_users.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({
    super.key,
    required this.account,
    this.userId,
    this.channelId,
  });

  final Account account;
  final String? userId;
  final String? channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaProvider(account)).valueOrNull;
    final canSearchNotes =
        (i == null && (meta?.policies?.canSearchNotes ?? true)) ||
            (i != null && (i.policies?.canSearchNotes ?? true));

    return DefaultTabController(
      length: 1 + (canSearchNotes ? 1 : 0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.search),
          bottom: TabBar(
            tabs: [
              if (canSearchNotes) Tab(text: t.misskey.notes),
              Tab(text: t.misskey.users),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            if (canSearchNotes)
              SearchNotes(
                account: account,
                userId: userId,
                channelId: channelId,
              ),
            SearchUsers(account: account),
          ],
        ),
      ),
    );
  }
}
