import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/role_provider.dart';
import '../../provider/api/role_users_notifier_provider.dart';
import '../widget/image_widget.dart';
import '../widget/paginated_list_view.dart';
import '../widget/timeline_list_view.dart';
import '../widget/user_info.dart';

class RolePage extends ConsumerWidget {
  const RolePage({super.key, required this.account, required this.roleId});

  final Account account;
  final String roleId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final role = ref.watch(roleProvider(account, roleId)).valueOrNull;
    final description = role?.description;
    final users =
        role?.isExplorable ?? true
            ? ref.watch(roleUsersNotifierProvider(account, roleId))
            : null;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(role?.name ?? t.misskey.role),
          bottom: TabBar(
            tabs: [Tab(text: t.misskey.users), Tab(text: t.misskey.timeline)],
          ),
        ),
        body: TabBarView(
          children: [
            PaginatedListView(
              header:
                  description != null
                      ? SliverToBoxAdapter(
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                              top: 8.0,
                              left: 8.0,
                              right: 8.0,
                            ),
                            width: maxContentWidth,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              margin: EdgeInsets.zero,
                              clipBehavior: Clip.hardEdge,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  border: switch (role?.color) {
                                    final color? => Border(
                                      left: BorderSide(
                                        color: Color(0xFF000000 | color),
                                        width: 4.0,
                                      ),
                                    ),
                                    _ => null,
                                  },
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      switch (role) {
                                        RolesListResponse(:final iconUrl?) =>
                                          ImageWidget(
                                            url: iconUrl.toString(),
                                            width: 28.0,
                                            height: 28.0,
                                          ),
                                        RolesListResponse(
                                          isAdministrator: true,
                                        ) =>
                                          Icon(
                                            Symbols.crown,
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                            size: 28.0,
                                            fill: 1.0,
                                          ),
                                        RolesListResponse(isModerator: true) =>
                                          Icon(
                                            Icons.shield,
                                            color:
                                                Theme.of(
                                                  context,
                                                ).colorScheme.primary,
                                            size: 28.0,
                                          ),
                                        _ => Icon(
                                          Icons.person,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withValues(alpha: 0.7),
                                          size: 28.0,
                                        ),
                                      },
                                      const SizedBox(width: 6.0),
                                      Expanded(child: Text(description)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      : null,
              paginationState: users,
              itemBuilder:
                  (context, user) =>
                      UserInfo(account: account, user: user.user),
              footer:
                  !(role?.isExplorable ?? true)
                      ? SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: Container(
                            margin: const EdgeInsets.all(16.0),
                            width: maxContentWidth,
                            child: Center(child: Text(t.misskey.nothing)),
                          ),
                        ),
                      )
                      : null,
              onRefresh:
                  () => ref.refresh(
                    roleUsersNotifierProvider(account, roleId).future,
                  ),
              loadMore:
                  (skipError) => ref
                      .read(roleUsersNotifierProvider(account, roleId).notifier)
                      .loadMore(skipError: skipError),
              panel: false,
              noItemsLabel: t.misskey.noUsers,
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
