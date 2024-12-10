import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import 'tab_icon_widget.dart';

class TimelineTabBar extends HookConsumerWidget {
  const TimelineTabBar({super.key, required this.controller});

  final TabController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const tabHeight = 46.0;
    final tabs = ref.watch(timelineTabsNotifierProvider);

    return TabBar(
      tabs: tabs
          .map(
            (settings) => Tooltip(
              message: settings.name ?? '',
              child: Tab(icon: TabIconWidget(tabSettings: settings)),
            ),
          )
          .toList(),
      controller: controller,
      indicator: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      ),
      labelPadding:
          const EdgeInsets.symmetric(horizontal: (tabHeight - 24.0) / 2),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 0.0,
      dividerHeight: 0.0,
      isScrollable: true,
      onTap: (index) {
        if (index == controller.index) {
          final scrollController = ref.read(
            timelineScrollControllerProvider(tabs[index]),
          );
          if (scrollController.hasClients) {
            if (scrollController.position.extentBefore < 10000) {
              scrollController.scrollToTop();
            } else {
              ref.invalidate(
                timelineNotesAfterNoteNotifierProvider(tabs[index]),
              );
              ref.invalidate(timelineNotesNotifierProvider(tabs[index]));
            }
          }
        } else {
          controller.animateTo(index);
        }
      },
      tabAlignment: TabAlignment.center,
    );
  }
}
