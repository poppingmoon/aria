import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/id.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/pick_date_time.dart';

class TimelineMenu extends ConsumerWidget {
  const TimelineMenu({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = ref
        .watch(timelineTabsNotifierProvider.select((tabs) => tabs[tabIndex]));
    final account = tabSettings.account;
    final i = !account.isGuest
        ? ref.watch(iNotifierProvider(account)).valueOrNull
        : null;

    return IconTheme.merge(
      data: const IconThemeData(size: 32.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.custom(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250.0,
            mainAxisExtent:
                48.0 + DefaultTextStyle.of(context).style.lineHeight,
          ),
          childrenDelegate: SliverChildListDelegate.fixed(
            [
              if (i != null)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () {
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .readNotifications();
                      context.push('/$account/notifications');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            const Icon(Icons.notifications),
                            if (i.hasUnreadNotification)
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                child: const SizedBox(
                                  height: 12.0,
                                  width: 12.0,
                                ),
                              ),
                          ],
                        ),
                        FittedBox(child: Text(t.misskey.notifications)),
                      ],
                    ),
                  ),
                ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () => context.push('/$account/announcements'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          const Icon(Icons.campaign),
                          if (i?.hasUnreadAnnouncement ?? false)
                            DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: const SizedBox(
                                height: 12.0,
                                width: 12.0,
                              ),
                            ),
                        ],
                      ),
                      FittedBox(child: Text(t.misskey.announcements)),
                    ],
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () =>
                      context.push('/$account/servers/${account.host}'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.dns),
                      FittedBox(child: Text(t.misskey.instanceInfo)),
                    ],
                  ),
                ),
              ),
              if (tabSettings.tabType == TabType.roleTimeline)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () => context.push(
                      '/$account/roles/${tabSettings.roleId}',
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.workspace_premium),
                        FittedBox(child: Text(t.misskey.role)),
                      ],
                    ),
                  ),
                ),
              if (tabSettings.tabType == TabType.userList)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () => context.push(
                      '/$account/lists/${tabSettings.listId}',
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.list),
                        FittedBox(child: Text(t.misskey.userList)),
                      ],
                    ),
                  ),
                ),
              if (tabSettings.tabType == TabType.channel)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () => context.push(
                      '/$account/channels/${tabSettings.channelId}',
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.tv),
                        FittedBox(child: Text(t.misskey.channel)),
                      ],
                    ),
                  ),
                ),
              if (tabSettings.tabType == TabType.antenna)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () => context.push(
                      '/$account/antennas/${tabSettings.antennaId}',
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.settings_input_antenna),
                        FittedBox(child: Text(t.misskey.antennas)),
                      ],
                    ),
                  ),
                ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () => context.push('/settings/tab/${tabSettings.id}'),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings),
                      FittedBox(child: Text(t.misskey.settings)),
                    ],
                  ),
                ),
              ),
              if (tabSettings.tabType != TabType.notifications)
                Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () async {
                      final centerId =
                          ref.read(timelineCenterNotifierProvider(tabSettings));
                      final date = await pickDateTime(
                        context,
                        initialDate:
                            centerId != null ? Id.parse(centerId).date : null,
                        lastDate: DateTime.now(),
                      );
                      if (date != null) {
                        await ref
                            .read(
                              timelineCenterNotifierProvider(tabSettings)
                                  .notifier,
                            )
                            .setCenterFromDate(date);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.history),
                        FittedBox(child: Text(t.aria.timeMachine)),
                      ],
                    ),
                  ),
                ),
              Card(
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () {
                    ref.invalidate(webSocketChannelProvider(account));
                    ref.invalidate(
                      timelineNotesAfterNoteNotifierProvider(tabSettings),
                    );
                    ref.invalidate(timelineNotesNotifierProvider(tabSettings));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.refresh),
                      FittedBox(child: Text(t.misskey.reload)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
