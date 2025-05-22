import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../provider/timeline_tabs_notifier_provider.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/reorderable_drag_start_listener_wrapper.dart';
import '../../widget/tab_icon_widget.dart';
import '../../widget/tab_type_widget.dart';

class TabsPage extends HookConsumerWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);

    return GeneralSettingsScaffold(
      selectedDestination: GeneralSettingsDestination.tabs,
      appBar: AppBar(title: Text(t.aria.tabs)),
      body: tabs.isEmpty
          ? Center(child: Text(t.aria.noTabs))
          : ReorderableListView.builder(
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const SizedBox(
                    key: ValueKey('<TabsPage tag header>'),
                    height: 4.0,
                  );
                } else if (index < tabs.length + 1) {
                  final tabSettings = tabs[index - 1];
                  return Center(
                    key: ValueKey('<TabsPage tag $index>'),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      width: maxContentWidth,
                      child: ReorderableDragStartListenerWrapper(
                        index: index,
                        child: Card.filled(
                          color: Theme.of(context).colorScheme.surface,
                          margin: EdgeInsets.zero,
                          clipBehavior: Clip.hardEdge,
                          child: ListTile(
                            leading: TabIconWidget(tabSettings: tabSettings),
                            title: tabSettings.name != null
                                ? Text(tabSettings.name ?? '')
                                : TabTypeWidget(tabType: tabSettings.tabType),
                            subtitle: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                tabSettings.account.toString(),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            trailing: const Icon(Icons.drag_handle),
                            onTap: () =>
                                context.push('/settings/tab/${tabSettings.id}'),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return const SizedBox(
                    key: ValueKey('<TabsPage tag footer>'),
                    height: 120.0,
                  );
                }
              },
              itemCount: tabs.length + 2,
              onReorder: (oldIndex, newIndex) => ref
                  .read(timelineTabsNotifierProvider.notifier)
                  .reorder(
                    max(0, oldIndex - 1),
                    min(newIndex - 1, tabs.length),
                  ),
              proxyDecorator: (child, _, animation) => AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  final animValue = Curves.easeInOut.transform(animation.value);
                  final elevation = lerpDouble(0.0, 6.0, animValue) ?? 0.0;
                  return Center(
                    child: SizedBox(
                      width: maxContentWidth + 16.0,
                      child: Material(
                        elevation: elevation,
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.transparent,
                        child: child,
                      ),
                    ),
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
