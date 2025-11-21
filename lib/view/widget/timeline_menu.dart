import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/id.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/api/endpoints_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_last_viewed_note_id_notifier_provider.dart';
import '../../util/pick_date_time.dart';
import '../../util/reload_timeline.dart';

class TimelineMenu extends ConsumerWidget {
  const TimelineMenu({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = tabSettings.account;
    final i = ref.watch(iNotifierProvider(account)).value;
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final theme = Theme.of(context);

    return IconTheme.merge(
      data: const IconThemeData(size: 32.0),
      child: GridView.custom(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 250.0,
          mainAxisExtent: 48.0 + DefaultTextStyle.of(context).style.lineHeight,
        ),
        childrenDelegate: SliverChildListDelegate.fixed([
          if (!account.isGuest)
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => context.push('/$account/notifications'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const Icon(Icons.notifications),
                        if (i?.hasUnreadNotification ?? false)
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.colorScheme.primary,
                            ),
                            child: const SizedBox(height: 12.0, width: 12.0),
                          ),
                      ],
                    ),
                    FittedBox(child: Text(t.misskey.notifications)),
                  ],
                ),
              ),
            ),
          if (i != null &&
              i.policies?.chatAvailability != ChatAvailability.unavailable &&
              (endpoints?.contains('chat/history') ?? true))
            Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () => context.push('/$account/chat'),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        const Icon(Icons.message),
                        if (i.hasUnreadChatMessages ?? false)
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.colorScheme.primary,
                            ),
                            child: const SizedBox(height: 12.0, width: 12.0),
                          ),
                      ],
                    ),
                    FittedBox(child: Text(t.misskey.directMessage_short)),
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
                            color: theme.colorScheme.primary,
                          ),
                          child: const SizedBox(height: 12.0, width: 12.0),
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
              onTap: () => context.push('/$account/servers/${account.host}'),
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
                onTap: () =>
                    context.push('/$account/roles/${tabSettings.roleId}'),
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
                onTap: () =>
                    context.push('/$account/lists/${tabSettings.listId}'),
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
                onTap: () =>
                    context.push('/$account/channels/${tabSettings.channelId}'),
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
                onTap: () =>
                    context.push('/$account/antennas/${tabSettings.antennaId}'),
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
                  final centerId = ref.read(
                    timelineCenterNotifierProvider(tabSettings),
                  );
                  final lastViewedNoteId = ref.read(
                    timelineLastViewedNoteIdNotifierProvider(tabSettings),
                  );
                  final date = await pickDateTime(
                    context,
                    initialDate: centerId != null
                        ? Id.parse(centerId).date
                        : lastViewedNoteId != null
                        ? Id.parse(lastViewedNoteId).date
                        : null,
                    lastDate: DateTime.now(),
                  );
                  if (date != null) {
                    await ref
                        .read(
                          timelineCenterNotifierProvider(tabSettings).notifier,
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
              onTap: () => reloadTimeline(ref, tabSettings),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.refresh),
                  FittedBox(child: Text(t.misskey.reload)),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
