import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/timeline_last_viewed_at_notifier_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../widget/timeline_drawer.dart';
import '../widget/timeline_tab_bar.dart';
import '../widget/timeline_widget.dart';

class TimelinesPage extends HookConsumerWidget {
  const TimelinesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);
    final numTabs = tabs.length;
    final initialIndex = useMemoized(
      () {
        int latestIndex = 0;
        DateTime latestDate = DateTime(0);
        for (final (index, tabSettings) in tabs.indexed) {
          final lastViewedAt =
              ref.read(timelineLastViewedAtNotifierProvider(tabSettings));
          if (lastViewedAt != null && lastViewedAt.isAfter(latestDate)) {
            latestIndex = index;
            latestDate = lastViewedAt;
          }
        }
        return latestIndex;
      },
      [],
    );
    final showTimelineTabBarOnBottom = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showTimelineTabBarOnBottom),
    );
    final enableHorizontalSwipe = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.enableHorizontalSwipe),
    );
    final controller = useTabController(
      initialLength: numTabs,
      initialIndex: initialIndex,
      keys: [numTabs],
    );
    final currentIndex = useState(controller.index);
    useEffect(
      () {
        controller.addListener(() {
          final previousIndex = currentIndex.value;
          final nextIndex = controller.index;
          if (previousIndex == nextIndex) {
            return;
          }
          final previousAccount = tabs[previousIndex].account;
          final nextTab = tabs[nextIndex];
          final nextAccount = nextTab.account;
          if (previousAccount != nextAccount) {
            if (previousAccount.host != nextAccount.host) {
              ref
                  .read(
                    emojisNotifierProvider(nextAccount.host).notifier,
                  )
                  .reloadEmojis();
            }
            if (!previousAccount.isGuest) {
              ref
                  .read(mainStreamNotifierProvider(previousAccount).notifier)
                  .disconnect();
            }
            if (!nextAccount.isGuest) {
              ref
                  .read(mainStreamNotifierProvider(nextAccount).notifier)
                  .connect();
              ref.invalidate(iNotifierProvider(nextAccount));
            }
          }
          if (!nextAccount.isGuest) {
            if (nextTab.tabType == TabType.channel) {
              ref
                  .read(postNotifierProvider(nextAccount).notifier)
                  .setChannel(nextTab.channelId);
            } else {
              ref
                  .read(postNotifierProvider(nextAccount).notifier)
                  .clearChannel();
            }
          }
          currentIndex.value = nextIndex;
        });
        return;
      },
      [],
    );
    final isLargeScreen = MediaQuery.sizeOf(context).width > 1200.0;

    return Row(
      children: [
        if (isLargeScreen)
          DrawerTheme(
            data: const DrawerThemeData(
              elevation: 0.0,
              shape: RoundedRectangleBorder(),
            ),
            child: TimelineDrawer(controller: controller),
          ),
        Expanded(
          child: Scaffold(
            appBar: showTimelineTabBarOnBottom
                ? null
                : AppBar(
                    title: TimelineTabBar(controller: controller),
                    centerTitle: true,
                  ),
            body: SafeArea(
              child: numTabs == 0
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(t.aria.noTabs),
                          ),
                          ElevatedButton(
                            onPressed: () => context.push('/settings/tab'),
                            child: Text(t.aria.addTab),
                          ),
                        ],
                      ),
                    )
                  : TabBarView(
                      controller: controller,
                      physics: enableHorizontalSwipe
                          ? null
                          : const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        numTabs,
                        (index) => TimelineWidget(tabIndex: index),
                      ),
                    ),
            ),
            drawer:
                isLargeScreen ? null : TimelineDrawer(controller: controller),
            bottomNavigationBar: showTimelineTabBarOnBottom
                ? BottomAppBar(
                    padding: EdgeInsets.zero,
                    height: 56.0,
                    color: Theme.of(context).colorScheme.surface,
                    elevation: 0.0,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: DrawerButton(),
                        ),
                        Expanded(
                          child: TimelineTabBar(controller: controller),
                        ),
                      ],
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
