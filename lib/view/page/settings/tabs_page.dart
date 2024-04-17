import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../provider/timeline_tabs_notifier_provider.dart';
import '../../widget/reorderable_drag_start_listener_wrapper.dart';
import '../../widget/tab_icon_widget.dart';
import '../../widget/tab_type_widget.dart';

class TabsPage extends HookConsumerWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

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
                    child: Card(
                      color: colors.panel,
                      elevation: 0.0,
                      child: ListTile(
                        leading: TabIconWidget(tabSettings: tabSettings),
                        title: tabSettings.name != null
                            ? Text(tabSettings.name ?? '')
                            : TabTypeWidget(tabType: tabSettings.tabType),
                        subtitle: Text(tabSettings.account.toString()),
                        trailing: const Icon(Icons.drag_handle),
                        onTap: () =>
                            context.push('/settings/tab/${tabSettings.id}'),
                      ),
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
              proxyDecorator: (child, _, animation) => AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  final animValue = Curves.easeInOut.transform(animation.value);
                  final elevation = lerpDouble(0, 6, animValue)!;
                  return Material(
                    elevation: elevation,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent,
                    child: child,
                  );
                },
                child: child,
              ),
              buildDefaultDragHandles: false,
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.push('/settings/tab/new'),
        icon: const Icon(Icons.add),
        label: Text(t.aria.addTab),
      ),
    );
  }
}
