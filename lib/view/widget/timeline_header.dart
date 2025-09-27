import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:tinycolor2/tinycolor2.dart';

import '../../i18n/strings.g.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/online_users_count_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import 'ad_widget.dart';
import 'streaming_error_icon.dart';
import 'tab_icon_widget.dart';
import 'timeline_menu.dart';

class TimelineHeader extends HookConsumerWidget {
  const TimelineHeader({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(tabSettings.account)).valueOrNull;
    final hasUnreadNotification = i?.hasUnreadNotification ?? false;
    final hasUnreadAnnouncement = i?.hasUnreadAnnouncement ?? false;
    final hasUnreadChatMessages = i?.hasUnreadChatMessages ?? false;
    final onlineUsersCount = ref
        .watch(onlineUsersCountProvider(tabSettings.account))
        .valueOrNull;
    final scrollController = ref.watch(
      timelineScrollControllerProvider(tabSettings),
    );
    final (alwaysShowHeader, oneLine, enableHapticFeedback) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.alwaysShowTabHeader,
          settings.showTabHeaderInOneLine,
          settings.enableHapticFeedback,
        ),
      ),
    );
    final isMenuExpanded = useState(false);
    final sizeFactor = useState(1.0);
    useEffect(() {
      double? offset;
      bool isScrollingUp = false;
      bool scrollDirectionChanged = false;

      void callback() {
        final nextOffset = scrollController.position.extentBefore;
        if (offset case final offset?) {
          final diff = nextOffset - offset;
          if (diff != 0) {
            final isNegative = diff.isNegative;
            final changed = isScrollingUp ^ isNegative;
            if (!(scrollDirectionChanged || changed)) {
              if (!isMenuExpanded.value) {
                sizeFactor.value = clamp01(sizeFactor.value - diff * 0.01);
              }
            }
            isScrollingUp = isNegative;
            scrollDirectionChanged = changed;
          }
        }
        offset = nextOffset;
      }

      sizeFactor.value = 1.0;
      if (!alwaysShowHeader) {
        scrollController.addListener(callback);
      }
      return () => scrollController.removeListener(callback);
    }, [alwaysShowHeader]);

    return SizeTransition(
      sizeFactor: Animation.fromValueListenable(sizeFactor),
      child: ExpansionTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            StreamingErrorIcon(tabSettings: tabSettings),
            Stack(
              children: [
                TabIconWidget(tabSettings: tabSettings),
                if (hasUnreadNotification ||
                    hasUnreadAnnouncement ||
                    hasUnreadChatMessages)
                  DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const SizedBox(height: 12.0, width: 12.0),
                  ),
              ],
            ),
          ],
        ),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    tabSettings.name ??
                    switch (tabSettings.tabType) {
                      TabType.homeTimeline => t.misskey.timelines_.home,
                      TabType.localTimeline => t.misskey.timelines_.local,
                      TabType.hybridTimeline => t.misskey.timelines_.social,
                      TabType.globalTimeline => t.misskey.timelines_.global,
                      TabType.roleTimeline => t.misskey.role,
                      TabType.userList => t.misskey.userList,
                      TabType.antenna => t.misskey.antennas,
                      TabType.channel => t.misskey.channel,
                      TabType.mention => t.misskey.mentions,
                      TabType.direct => t.misskey.directNotes,
                      TabType.user => t.misskey.user,
                      TabType.notifications => t.misskey.notifications,
                      TabType.custom => t.aria.custom,
                    },
              ),
              if (oneLine) ...[
                const WidgetSpan(child: SizedBox(width: 8.0)),
                if (defaultTargetPlatform != TargetPlatform.linux)
                  const TextSpan(text: Unicode.LRI),
                TextSpan(
                  text: tabSettings.account.toString(),
                  style: DefaultTextStyle.of(context).style.apply(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.85),
                  ),
                ),
                if (defaultTargetPlatform != TargetPlatform.linux)
                  const TextSpan(text: Unicode.PDI),
              ],
            ],
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: oneLine ? 1 : null,
        ),
        subtitle: !oneLine
            ? Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  tabSettings.account.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textDirection: TextDirection.ltr,
                ),
              )
            : null,
        onExpansionChanged: (value) {
          if (enableHapticFeedback) {
            HapticFeedback.lightImpact();
          }
          isMenuExpanded.value = value;
          if (value) {
            sizeFactor.value = 1.0;
          }
        },
        backgroundColor: Theme.of(context).colorScheme.surface,
        collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
        visualDensity: VisualDensity.compact,
        children: [
          if (onlineUsersCount != null)
            Text.rich(
              t.aria.onlineUsersCount(
                n: TextSpan(
                  text: NumberFormat().format(onlineUsersCount),
                  style: const TextStyle(
                    color: Color(0xff41b781),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          TimelineMenu(tabSettings: tabSettings),
          Center(child: AdWidget(account: tabSettings.account)),
        ],
      ),
    );
  }
}
