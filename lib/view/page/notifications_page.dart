import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../widget/follow_requests_list_view.dart';
import '../widget/notifications_list_view.dart';
import '../widget/timeline_list_view.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final isLocked = i?.isLocked ?? false;
    return DefaultTabController(
      length: 3 + (isLocked ? 1 : 0),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.notifications),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.all),
              Tab(text: t.misskey.mentions),
              Tab(text: t.misskey.directNotes),
              if (isLocked) Tab(text: t.misskey.followRequests),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            NotificationsListView(account: account),
            TimelineListView(tabSettings: TabSettings.mention(account)),
            TimelineListView(tabSettings: TabSettings.direct(account)),
            if (isLocked) FollowRequestsListView(account: account),
          ],
        ),
      ),
    );
  }
}
