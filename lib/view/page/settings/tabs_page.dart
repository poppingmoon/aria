import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/timeline_tabs_notifier_provider.dart';
import '../../widget/reorderable_drag_start_listener_wrapper.dart';
import '../../widget/tab_icon_widget.dart';
import '../../widget/tab_type_widget.dart';

class TabsPage extends HookConsumerWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.aria.tabs)),
      body: tabs.isEmpty
          ? Center(child: Text(t.aria.noTabs))
          : ReorderableListView.builder(
              itemBuilder: (context, index) {
                if (index < tabs.length) {
                  final tabSettings = tabs[index];
                  return ReorderableDragStartListenerWrapper(
                    key: ValueKey(index),
                    index: index,
                    child: ListTile(
                      leading: TabIconWidget(tabSettings: tabSettings),
                      title: tabSettings.name != null
                          ? Text(tabSettings.name ?? '')
                          : TabTypeWidget(tabType: tabSettings.tabType),
                      subtitle: Text(tabSettings.account.toString()),
                      trailing: const Icon(Icons.drag_handle),
                      onTap: () => context.push('/settings/tab/$index'),
                    ),
                  );
                } else {
                  return ReorderableDragStartListener(
                    key: ValueKey(index),
                    index: index,
                    enabled: false,
                    child: const SizedBox(height: 80.0),
                  );
                }
              },
              itemCount: tabs.length + 1,
              onReorder: (oldIndex, newIndex) => ref
                  .read(timelineTabsNotifierProvider.notifier)
                  .reorder(oldIndex, min(newIndex, tabs.length)),
              buildDefaultDragHandles: false,
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/settings/tab/${tabs.length}'),
        icon: const Icon(Icons.add),
        label: Text(t.aria.addTab),
      ),
    );
  }
}
