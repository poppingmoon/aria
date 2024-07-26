import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/shortcuts.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../provider/timeline_tab_index_notifier_provider.dart';
import '../../provider/timeline_tab_settings_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../widget/post_form.dart';
import '../widget/timeline_drawer.dart';
import '../widget/timeline_tab_bar.dart';
import '../widget/timeline_widget.dart';

class TimelinesPage extends HookConsumerWidget {
  const TimelinesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);
    final numTabs = tabs.length;
    final tabIndex = ref.watch(timelineTabIndexNotifierProvider);
    final tabSettings = ref.watch(timelineTabSettingsProvider);
    final showTimelineTabBarAtBottom = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showTimelineTabBarAtBottom),
    );
    final showMenuButtonInTabBar = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showMenuButtonInTabBar),
    );
    final enableHorizontalSwipe = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.enableHorizontalSwipe),
    );
    final controller = useTabController(
      initialLength: numTabs,
      initialIndex: useMemoized(() => tabIndex),
      keys: [numTabs],
    );
    final i = tabSettings != null
        ? ref.watch(iNotifierProvider(tabSettings.account)).valueOrNull
        : null;
    final showPostForm = useState(false);
    useEffect(
      () {
        void callback() {
          if (tabs.isEmpty) return;
          final previousIndex = tabIndex;
          final nextIndex = controller.index;
          ref
              .read(timelineTabIndexNotifierProvider.notifier)
              .updateIndex(nextIndex);
          if (previousIndex == nextIndex) return;
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
          if (nextAccount.isGuest) {
            showPostForm.value = false;
          } else {
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
        }

        if (tabSettings != null) {
          final account = tabSettings.account;
          ref
              .read(emojisNotifierProvider(account.host).notifier)
              .reloadEmojis();
          if (!account.isGuest) {
            ref.read(mainStreamNotifierProvider(account).notifier).connect();
          }
        }
        controller.addListener(callback);
        return () => controller.removeListener(callback);
      },
      [tabs],
    );
    final isLargeScreen = MediaQuery.sizeOf(context).width > 1200.0;
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    final rootFocusNode = useFocusNode();
    final postFormFocusNode = useFocusNode();
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return FocusableActionDetector(
      autofocus: true,
      focusNode: rootFocusNode,
      shortcuts: {
        postActivatorN: VoidCallbackIntent(() {
          if (tabSettings != null && !tabSettings.account.isGuest) {
            showPostForm.value = true;
            postFormFocusNode.requestFocus();
          }
        }),
        postActivatorP: VoidCallbackIntent(() {
          if (tabSettings != null && !tabSettings.account.isGuest) {
            showPostForm.value = true;
            postFormFocusNode.requestFocus();
          }
        }),
        dismissActivator:
            VoidCallbackIntent(() => rootFocusNode.requestFocus()),
      },
      child: Row(
        children: [
          if (isLargeScreen)
            DrawerTheme(
              data: DrawerThemeData(
                backgroundColor: colors.panel,
                elevation: 0.0,
                shape: const RoundedRectangleBorder(),
              ),
              child: TimelineDrawer(controller: controller),
            ),
          Expanded(
            child: Scaffold(
              key: scaffoldKey,
              appBar: showTimelineTabBarAtBottom
                  ? null
                  : AppBar(
                      automaticallyImplyLeading: showMenuButtonInTabBar,
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
                    : Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          TabBarView(
                            controller: controller,
                            physics: enableHorizontalSwipe
                                ? null
                                : const NeverScrollableScrollPhysics(),
                            children: List.generate(
                              numTabs,
                              (index) => TimelineWidget(
                                tabIndex: index,
                                focusPostForm: () {
                                  showPostForm.value = true;
                                  postFormFocusNode.requestFocus();
                                },
                              ),
                            ),
                          ),
                          if (tabSettings != null && showPostForm.value)
                            Material(
                              clipBehavior: Clip.hardEdge,
                              color: colors.panel.withOpacity(0.5),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 16.0,
                                  sigmaY: 16.0,
                                ),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: colors.divider.withOpacity(0.1),
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: PostForm(
                                      account: tabSettings.account,
                                      focusNode: postFormFocusNode,
                                      onHide: () => showPostForm.value = false,
                                      onExpand: (account) =>
                                          context.push('/$account/post'),
                                      showPostButton: true,
                                      showKeyboard: true,
                                      maxLines: 6,
                                      thumbnailSize: 100.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
              ),
              drawer: TimelineDrawer(controller: controller),
              bottomNavigationBar: showTimelineTabBarAtBottom
                  ? BottomAppBar(
                      padding: EdgeInsets.zero,
                      height: 56.0,
                      color: colors.panel,
                      elevation: 0.0,
                      child: Row(
                        children: [
                          if (showMenuButtonInTabBar)
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
              floatingActionButton: tabSettings == null || !showPostForm.value
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (!isLargeScreen)
                          FloatingActionButton(
                            heroTag: const ValueKey(0),
                            tooltip: t.misskey.menu,
                            foregroundColor: colors.fg,
                            backgroundColor: colors.panel,
                            shape: const CircleBorder(),
                            onPressed: () =>
                                scaffoldKey.currentState?.openDrawer(),
                            child: const Icon(Icons.menu),
                          ),
                        FloatingActionButton(
                          heroTag: const ValueKey(1),
                          tooltip: t.misskey.home,
                          foregroundColor: colors.fg,
                          backgroundColor: colors.panel,
                          shape: const CircleBorder(),
                          onPressed: tabSettings != null
                              ? () => ref
                                  .read(
                                    timelineScrollControllerProvider(
                                      tabSettings,
                                    ),
                                  )
                                  .scrollToTop()
                              : null,
                          child: const Icon(Icons.home),
                        ),
                        FloatingActionButton(
                          heroTag: const ValueKey(2),
                          tooltip: t.misskey.notifications,
                          foregroundColor: colors.fg.withOpacity(
                            tabSettings != null && !tabSettings.account.isGuest
                                ? 1.0
                                : 0.5,
                          ),
                          backgroundColor: colors.panel.withOpacity(
                            tabSettings != null && !tabSettings.account.isGuest
                                ? 1.0
                                : 0.5,
                          ),
                          disabledElevation: 0.0,
                          shape: const CircleBorder(),
                          onPressed: tabSettings != null &&
                                  !tabSettings.account.isGuest
                              ? () => context
                                  .push('/${tabSettings.account}/notifications')
                              : null,
                          child: Stack(
                            children: [
                              const Icon(Icons.notifications),
                              if (i?.hasUnreadNotification ?? false)
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.accent,
                                  ),
                                  child: const SizedBox(
                                    height: 12.0,
                                    width: 12.0,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        FloatingActionButton(
                          heroTag: const ValueKey(3),
                          tooltip: t.aria.showPostForm,
                          foregroundColor: colors.fg.withOpacity(
                            tabSettings != null && !tabSettings.account.isGuest
                                ? 1.0
                                : 0.5,
                          ),
                          backgroundColor: colors.panel.withOpacity(
                            tabSettings != null && !tabSettings.account.isGuest
                                ? 1.0
                                : 0.5,
                          ),
                          disabledElevation: 0.0,
                          shape: const CircleBorder(),
                          onPressed: tabSettings != null &&
                                  !tabSettings.account.isGuest
                              ? () => showPostForm.value = !showPostForm.value
                              : null,
                          child: const Icon(Icons.keyboard),
                        ),
                        FloatingActionButton(
                          heroTag: const ValueKey(4),
                          tooltip: t.misskey.note,
                          onPressed: tabSettings != null &&
                                  !tabSettings.account.isGuest
                              ? () =>
                                  context.push('/${tabSettings.account}/post')
                              : null,
                          foregroundColor: colors.fgOnAccent.withOpacity(
                            tabSettings != null && !tabSettings.account.isGuest
                                ? 1.0
                                : 0.5,
                          ),
                          backgroundColor: Colors.transparent,
                          shape: const CircleBorder(),
                          disabledElevation: 0.0,
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  colors.buttonGradateA.withOpacity(
                                    tabSettings != null &&
                                            !tabSettings.account.isGuest
                                        ? 1.0
                                        : 0.5,
                                  ),
                                  colors.buttonGradateB.withOpacity(
                                    tabSettings != null &&
                                            !tabSettings.account.isGuest
                                        ? 1.0
                                        : 0.5,
                                  ),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Icon(Icons.edit),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            ),
          ),
        ],
      ),
    );
  }
}
