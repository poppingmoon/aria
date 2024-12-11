import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/announcements_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../widget/announcement_widget.dart';
import '../widget/paginated_list_view.dart';

class AnnouncementsPage extends ConsumerWidget {
  const AnnouncementsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.announcements),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.currentAnnouncements),
              Tab(text: t.misskey.pastAnnouncements),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _Announcements(account: account, isActive: true),
            _Announcements(account: account, isActive: false),
          ],
        ),
      ),
    );
  }
}

class _Announcements extends ConsumerWidget {
  const _Announcements({
    required this.account,
    required this.isActive,
  });

  final Account account;
  final bool isActive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final announcements = ref.watch(
      announcementsNotifierProvider(account, isActive: isActive),
    );
    final hasUnreadAnnouncement = ref.watch(
      iNotifierProvider(account)
          .select((i) => i.valueOrNull?.hasUnreadAnnouncement),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return PaginatedListView(
      header: isActive && (hasUnreadAnnouncement ?? false)
          ? SliverToBoxAdapter(
              child: Card(
                margin: const EdgeInsets.only(top: 8.0),
                color: colors.infoWarnBg,
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.warning_amber,
                              color: colors.infoWarnFg,
                            ),
                            Text(
                              t.misskey.youHaveUnreadAnnouncements,
                              style: TextStyle(color: colors.infoWarnFg),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
      paginationState: announcements,
      itemBuilder: (context, announcement) => AnnouncementWidget(
        account: account,
        announcement: announcement,
        showButton: isActive,
      ),
      onRefresh: () => ref.refresh(
        announcementsNotifierProvider(account, isActive: isActive).future,
      ),
      loadMore: (skipError) => ref
          .read(
            announcementsNotifierProvider(account, isActive: isActive).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
