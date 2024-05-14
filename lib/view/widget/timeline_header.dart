import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:tinycolor2/tinycolor2.dart';

import '../../i18n/strings.g.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/online_users_count_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import 'ad_widget.dart';
import 'streaming_error_icon.dart';
import 'tab_icon_widget.dart';
import 'tab_name_widget.dart';
import 'timeline_menu.dart';

class TimelineHeader extends HookConsumerWidget {
  const TimelineHeader({super.key, required this.tabSettings});

  final TabSettings tabSettings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(tabSettings.account)).valueOrNull;
    final hasUnreadNotification = i?.hasUnreadNotification ?? false;
    final hasUnreadAnnouncement = i?.hasUnreadAnnouncement ?? false;
    final onlineUsersCount =
        ref.watch(onlineUsersCountProvider(tabSettings.account)).valueOrNull;
    final scrollController =
        ref.watch(timelineScrollControllerProvider(tabSettings));
    final alwaysShowHeader = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.alwaysShowTabHeader),
    );
    final isMenuExpanded = useState(false);
    final offset = useState<double?>(null);
    final sizeFactor = useState(1.0);
    useEffect(
      () {
        void callback() {
          final next = scrollController.offset;
          if (offset.value case final offset?) {
            final d = next - offset;
            if (!isMenuExpanded.value) {
              sizeFactor.value = clamp01(sizeFactor.value - d * 0.01);
            }
          }
          offset.value = next;
        }

        sizeFactor.value = 1.0;
        if (!alwaysShowHeader) {
          scrollController.addListener(callback);
        }
        return () => scrollController.removeListener(callback);
      },
      [alwaysShowHeader],
    );

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
                if (hasUnreadNotification || hasUnreadAnnouncement)
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
        title: TabNameWidget(tabSettings: tabSettings),
        subtitle: Text(
          tabSettings.account.toString(),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        onExpansionChanged: (value) {
          isMenuExpanded.value = value;
          if (value) {
            sizeFactor.value = 1.0;
          }
        },
        backgroundColor: Theme.of(context).colorScheme.surface,
        collapsedBackgroundColor: Theme.of(context).colorScheme.surface,
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
