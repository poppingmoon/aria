import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/shortcuts.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/general_settings.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../provider/timeline_tab_index_notifier_provider.dart';
import '../../provider/timeline_tab_settings_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/lookup.dart';
import '../../util/reload_timeline.dart';
import '../dialog/text_field_dialog.dart';
import '../widget/post_form.dart';
import '../widget/timeline_drawer.dart';
import '../widget/timeline_tab_bar.dart';
import '../widget/timeline_widget.dart';
import '../widget/user_avatar.dart';

class TimelinesPage extends HookConsumerWidget {
  const TimelinesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(timelineTabsNotifierProvider);
    final numTabs = tabs.length;
    final tabIndex = ref.watch(timelineTabIndexNotifierProvider);
    final tabSettings = ref.watch(timelineTabSettingsProvider);
    final (
      showTimelineTabBarAtBottom,
      showMenuButtonInTabBar,
      buttonTypes,
      mini,
      square,
      enableHorizontalSwipe,
    ) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showTimelineTabBarAtBottom,
          settings.showMenuButtonInTabBar ||
              !settings.timelinesPageButtonTypes
                  .take(5)
                  .contains(TimelinesPageButtonType.menu),
          settings.timelinesPageButtonTypes,
          settings.showSmallTimelinesPageButtons,
          settings.showSquaredTimelinesPageButtons,
          settings.enableHorizontalSwipe,
        ),
      ),
    );
    final controller = useTabController(
      initialLength: numTabs,
      initialIndex: useMemoized(() => tabIndex, [numTabs]),
      keys: [numTabs],
    );
    final showPostForm = useState(false);
    useEffect(() {
      int previousIndex = tabIndex;
      int index = tabIndex;

      void callback() {
        if (tabs.isEmpty) return;
        final int nextIndex;
        if (controller.index != previousIndex) {
          nextIndex = controller.index;
          if (controller.offset == 0.0) {
            previousIndex = controller.index;
          }
        } else {
          nextIndex = controller.animation?.value.round() ?? index;
        }
        if (nextIndex == index) return;
        ref
            .read(timelineTabIndexNotifierProvider.notifier)
            .updateIndex(nextIndex);
        final previousAccount = tabs[index].account;
        final nextTab = tabs[nextIndex];
        final nextAccount = nextTab.account;
        index = nextIndex;
        if (previousAccount != nextAccount) {
          if (previousAccount.host != nextAccount.host) {
            ref
                .read(emojisNotifierProvider(nextAccount.host).notifier)
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
            ref.read(postNotifierProvider(nextAccount).notifier).clearChannel();
          }
        }
      }

      if (tabSettings != null) {
        final account = tabSettings.account;
        ref.read(emojisNotifierProvider(account.host).notifier).reloadEmojis();
        if (!account.isGuest) {
          ref.read(mainStreamNotifierProvider(account).notifier).connect();
          Future(() {
            if (tabSettings.tabType == TabType.channel) {
              ref
                  .read(postNotifierProvider(account).notifier)
                  .setChannel(tabSettings.channelId);
            } else {
              ref.read(postNotifierProvider(account).notifier).clearChannel();
            }
          });
        }
      }
      controller.animation?.addListener(callback);
      return () => controller.animation?.removeListener(callback);
    }, [tabs]);
    final isLargeScreen = MediaQuery.sizeOf(context).width > 1200.0;
    final rootFocusNode = useFocusNode();
    final postFormFocusNode = useFocusNode();
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

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
        dismissActivator: VoidCallbackIntent(
          () => rootFocusNode.requestFocus(),
        ),
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
              appBar:
                  showTimelineTabBarAtBottom
                      ? null
                      : AppBar(
                        automaticallyImplyLeading:
                            !isLargeScreen && showMenuButtonInTabBar,
                        title: TimelineTabBar(controller: controller),
                        titleSpacing: 0.0,
                        centerTitle: true,
                      ),
              body: SafeArea(
                bottom: false,
                child:
                    numTabs == 0
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
                              physics:
                                  enableHorizontalSwipe
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
                                color: colors.panel.withValues(alpha: 0.5),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 16.0,
                                    sigmaY: 16.0,
                                  ),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          color: colors.divider.withValues(
                                            alpha: 0.1,
                                          ),
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: SafeArea(
                                      child: SingleChildScrollView(
                                        child: PostForm(
                                          account: tabSettings.account,
                                          focusNode: postFormFocusNode,
                                          onHide:
                                              () => showPostForm.value = false,
                                          onExpand:
                                              (account) => context.push(
                                                '/$account/post',
                                              ),
                                          showPostButton: true,
                                          showKeyboard: true,
                                          maxLines: 6,
                                          thumbnailSize: 100.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
              ),
              drawer: TimelineDrawer(controller: controller),
              bottomNavigationBar:
                  showTimelineTabBarAtBottom
                      ? BottomAppBar(
                        padding: EdgeInsets.zero,
                        height: kToolbarHeight,
                        color: colors.panel,
                        elevation: 0.0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(color: colors.divider),
                            ),
                          ),
                          child: Row(
                            children: [
                              if (!isLargeScreen && showMenuButtonInTabBar)
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: DrawerButton(),
                                ),
                              Expanded(
                                child: TimelineTabBar(controller: controller),
                              ),
                            ],
                          ),
                        ),
                      )
                      : null,
              floatingActionButton:
                  tabSettings == null || !showPostForm.value
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:
                            buttonTypes
                                .where(
                                  (type) =>
                                      !isLargeScreen ||
                                      type != TimelinesPageButtonType.menu,
                                )
                                .mapIndexed(
                                  (index, type) =>
                                      type != null
                                          ? _TimelinesPageButton(
                                            tabSettings: tabSettings,
                                            buttonType: type,
                                            index: index,
                                            mini: mini,
                                            square: square,
                                            showPostForm:
                                                () => showPostForm.value = true,
                                          )
                                          : SizedBox.square(
                                            dimension: mini ? 40.0 : 56.0,
                                          ),
                                )
                                .toList(),
                      )
                      : const SizedBox.shrink(),
              floatingActionButtonLocation:
                  mini
                      ? FloatingActionButtonLocation.miniCenterFloat
                      : FloatingActionButtonLocation.centerFloat,
            ),
          ),
        ],
      ),
    );
  }
}

class _TimelinesPageButton extends ConsumerWidget {
  const _TimelinesPageButton({
    required this.tabSettings,
    required this.buttonType,
    this.index,
    this.mini = false,
    this.square = false,
    this.showPostForm,
  });

  final TabSettings? tabSettings;
  final TimelinesPageButtonType buttonType;
  final int? index;
  final bool mini;
  final bool square;
  final void Function()? showPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = tabSettings?.account;
    final i =
        account != null
            ? ref.watch(iNotifierProvider(account)).valueOrNull
            : null;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    final requireTabSettings = switch (buttonType) {
      TimelinesPageButtonType.menu || TimelinesPageButtonType.settings => false,
      _ => true,
    };
    final requireCredencial = switch (buttonType) {
      TimelinesPageButtonType.announcements => false,
      TimelinesPageButtonType.antennas => true,
      TimelinesPageButtonType.channels => false,
      TimelinesPageButtonType.clips => true,
      TimelinesPageButtonType.drive => true,
      TimelinesPageButtonType.explore => false,
      TimelinesPageButtonType.favorites => true,
      TimelinesPageButtonType.gallery => false,
      TimelinesPageButtonType.games => false,
      TimelinesPageButtonType.home => false,
      TimelinesPageButtonType.instanceInfo => false,
      TimelinesPageButtonType.lists => true,
      TimelinesPageButtonType.lookup => true,
      TimelinesPageButtonType.menu => false,
      TimelinesPageButtonType.notifications => true,
      TimelinesPageButtonType.pages => false,
      TimelinesPageButtonType.play => false,
      TimelinesPageButtonType.postForm => true,
      TimelinesPageButtonType.note => true,
      TimelinesPageButtonType.profile => true,
      TimelinesPageButtonType.reload => false,
      TimelinesPageButtonType.search => false,
      TimelinesPageButtonType.settings => false,
    };
    final disabled =
        (requireTabSettings && tabSettings == null) ||
        (requireCredencial && (tabSettings?.account.isGuest ?? true));
    final primary = buttonType == TimelinesPageButtonType.note;

    final tooltip = switch (buttonType) {
      TimelinesPageButtonType.announcements => t.misskey.announcements,
      TimelinesPageButtonType.antennas => t.misskey.antennas,
      TimelinesPageButtonType.channels => t.misskey.channel,
      TimelinesPageButtonType.clips => t.misskey.clips,
      TimelinesPageButtonType.drive => t.misskey.drive,
      TimelinesPageButtonType.explore => t.misskey.explore,
      TimelinesPageButtonType.favorites => t.misskey.favorites,
      TimelinesPageButtonType.gallery => t.misskey.gallery,
      TimelinesPageButtonType.games => 'Misskey Games',
      TimelinesPageButtonType.home => t.misskey.home,
      TimelinesPageButtonType.instanceInfo => t.misskey.instanceInfo,
      TimelinesPageButtonType.lists => t.misskey.lists,
      TimelinesPageButtonType.lookup => t.misskey.lookup,
      TimelinesPageButtonType.menu => t.misskey.menu,
      TimelinesPageButtonType.note => t.misskey.note,
      TimelinesPageButtonType.notifications => t.misskey.notifications,
      TimelinesPageButtonType.pages => t.misskey.pages,
      TimelinesPageButtonType.play => 'Play',
      TimelinesPageButtonType.postForm => t.misskey.widgets_.postForm,
      TimelinesPageButtonType.profile => t.misskey.profile,
      TimelinesPageButtonType.reload => t.misskey.reload,
      TimelinesPageButtonType.search => t.misskey.search,
      TimelinesPageButtonType.settings => t.misskey.settings,
    };
    final onPressed = switch (buttonType) {
      TimelinesPageButtonType.announcements =>
        () => context.push('/$account/announcements'),
      TimelinesPageButtonType.antennas =>
        () => context.push('/$account/antennas'),
      TimelinesPageButtonType.channels =>
        () => context.push('/$account/channels'),
      TimelinesPageButtonType.clips => () => context.push('/$account/clips'),
      TimelinesPageButtonType.drive => () => context.push('/$account/drive'),
      TimelinesPageButtonType.explore =>
        () => context.push('/$account/explore'),
      TimelinesPageButtonType.favorites =>
        () => context.push('/$account/favorites'),
      TimelinesPageButtonType.gallery =>
        () => context.push('/$account/gallery'),
      TimelinesPageButtonType.games => () => context.push('/$account/games'),
      TimelinesPageButtonType.home =>
        () =>
            ref
                .read(timelineScrollControllerProvider(tabSettings!))
                .scrollToTop(),
      TimelinesPageButtonType.instanceInfo =>
        () => context.push('/$account/servers/${account!.host}'),
      TimelinesPageButtonType.lists => () => context.push('/$account/lists'),
      TimelinesPageButtonType.lookup => () async {
        final result = await showTextFieldDialog(
          context,
          title: Text(t.misskey.lookup),
        );
        if (!context.mounted) return;
        if (result == null) return;
        await lookup(ref, account!, result.trim());
      },
      TimelinesPageButtonType.menu => () => Scaffold.of(context).openDrawer(),
      TimelinesPageButtonType.note => () => context.push('/$account/post'),
      TimelinesPageButtonType.notifications =>
        () => context.push('/$account/notifications'),
      TimelinesPageButtonType.pages => () => context.push('/$account/pages'),
      TimelinesPageButtonType.play => () => context.push('/$account/play'),
      TimelinesPageButtonType.postForm => showPostForm,
      TimelinesPageButtonType.profile =>
        () => context.push('/$account/@${account!.username}'),
      TimelinesPageButtonType.reload => () => reloadTimeline(ref, tabSettings!),
      TimelinesPageButtonType.search => () => context.push('/$account/search'),
      TimelinesPageButtonType.settings => () => context.push('/settings'),
    };
    final child = switch (buttonType) {
      TimelinesPageButtonType.announcements => Stack(
        children: [
          const Icon(Icons.campaign),
          if (i?.hasUnreadAnnouncement ?? false)
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const SizedBox(height: 12.0, width: 12.0),
            ),
        ],
      ),
      TimelinesPageButtonType.antennas => const Icon(
        Icons.settings_input_antenna,
      ),
      TimelinesPageButtonType.channels => const Icon(Icons.tv),
      TimelinesPageButtonType.clips => const Icon(Icons.attach_file),
      TimelinesPageButtonType.drive => const Icon(Icons.cloud),
      TimelinesPageButtonType.explore => const Icon(Icons.tag),
      TimelinesPageButtonType.favorites => const Icon(Icons.star_rounded),
      TimelinesPageButtonType.gallery => const Icon(Icons.collections),
      TimelinesPageButtonType.games => const Icon(Icons.games),
      TimelinesPageButtonType.home => const Icon(Icons.home),
      TimelinesPageButtonType.instanceInfo => const Icon(Icons.dns),
      TimelinesPageButtonType.lists => const Icon(Icons.list),
      TimelinesPageButtonType.lookup => const Icon(Icons.travel_explore),
      TimelinesPageButtonType.menu => const Icon(Icons.menu),
      TimelinesPageButtonType.note => Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colors.buttonGradateA.withValues(alpha: !disabled ? 1.0 : 0.5),
              colors.buttonGradateB.withValues(alpha: !disabled ? 1.0 : 0.5),
            ],
          ),
          borderRadius: BorderRadius.circular(
            square
                ? mini
                    ? 12.0
                    : 16.0
                : 32.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(mini ? 8.0 : 16.0),
          child: const Icon(Icons.edit),
        ),
      ),
      TimelinesPageButtonType.notifications => Stack(
        children: [
          const Icon(Icons.notifications),
          if (i?.hasUnreadNotification ?? false)
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colors.accent,
              ),
              child: const SizedBox(height: 12.0, width: 12.0),
            ),
        ],
      ),
      TimelinesPageButtonType.pages => const Icon(Icons.article),
      TimelinesPageButtonType.play => const Icon(Icons.play_arrow),
      TimelinesPageButtonType.postForm => const Icon(Icons.keyboard),
      TimelinesPageButtonType.profile =>
        account != null && i != null
            ? UserAvatar(account: account, user: i, size: 28.0)
            : const Icon(Icons.person),
      TimelinesPageButtonType.reload => const Icon(Icons.refresh),
      TimelinesPageButtonType.search => const Icon(Icons.search),
      TimelinesPageButtonType.settings => const Icon(Icons.settings),
    };

    return FloatingActionButton(
      heroTag: ValueKey('<_TimelinesPageButton tag $index>'),
      tooltip: tooltip,
      foregroundColor: (primary ? colors.fgOnAccent : colors.fg).withValues(
        alpha: !disabled ? 1.0 : 0.5,
      ),
      backgroundColor:
          primary
              ? Colors.transparent
              : colors.panel.withValues(alpha: !disabled ? 1.0 : 0.5),
      disabledElevation: 0.0,
      shape: square ? null : const CircleBorder(),
      mini: mini,
      onPressed: !disabled ? onPressed : null,
      child: child,
    );
  }
}
