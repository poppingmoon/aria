import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_notes_queue_notifier_provider.dart';
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
              message: settings.name ?? settings.account.toString(),
              child: Tab(icon: TabIconWidget(tabSettings: settings)),
            ),
          )
          .toList(),
      controller: controller,
      indicator: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12.0),
      ),
      labelPadding: const EdgeInsets.symmetric(
        horizontal: (tabHeight - 24.0) / 2,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 0.0,
      dividerHeight: 0.0,
      isScrollable: true,
      onTap: (index) {
        if (index == controller.index) {
          final tabSettings = tabs[index];
          final scrollController = ref.read(
            timelineScrollControllerProvider(tabSettings),
          );
          if (scrollController.hasClients) {
            final notes = ref
                .read(timelineNotesQueueNotifierProvider(tabSettings).notifier)
                .popMany(100);
            if (notes.isNotEmpty) {
              final centerId = ref.read(
                timelineCenterNotifierProvider(tabSettings),
              );
              ref
                  .read(
                    timelineNotesAfterNoteNotifierProvider(
                      tabSettings,
                      sinceId: centerId,
                    ).notifier,
                  )
                  .addNotes(notes);
            }
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => scrollController.scrollToTop(),
            );
          }
        } else {
          controller.animateTo(index);
        }
      },
      splashBorderRadius: BorderRadius.circular(12.0),
      tabAlignment: TabAlignment.center,
    );
  }
}
