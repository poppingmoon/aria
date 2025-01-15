import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/role_provider.dart';
import '../../provider/api/role_users_notifier_provider.dart';
import '../widget/paginated_list_view.dart';
import '../widget/timeline_list_view.dart';
import '../widget/user_info.dart';

class RolePage extends ConsumerWidget {
  const RolePage({
    super.key,
    required this.account,
    required this.roleId,
  });

  final Account account;
  final String roleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(roleProvider(account, roleId)).valueOrNull;
    final description = role?.description;
    final users = role?.isExplorable ?? true
        ? ref.watch(roleUsersNotifierProvider(account, roleId))
        : null;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(role?.name ?? t.misskey.role),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.users),
              Tab(text: t.misskey.timeline),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            if (users != null)
              PaginatedListView(
                header: description != null
                    ? SliverPadding(
                        padding: const EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(child: Text(description)),
                      )
                    : null,
                paginationState: users,
                itemBuilder: (context, user) =>
                    UserInfo(account: account, user: user.user),
                onRefresh: () => ref
                    .refresh(roleUsersNotifierProvider(account, roleId).future),
                loadMore: (skipError) => ref
                    .read(roleUsersNotifierProvider(account, roleId).notifier)
                    .loadMore(skipError: skipError),
                panel: false,
                noItemsLabel: t.misskey.noUsers,
              )
            else
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (description != null) ...[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(description),
                      ),
                    ],
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(t.misskey.nothing),
                      ),
                    ),
                  ],
                ),
              ),
            TimelineListView(
              tabSettings: TabSettings.roleTimeline(account, roleId),
            ),
          ],
        ),
      ),
    );
  }
}
