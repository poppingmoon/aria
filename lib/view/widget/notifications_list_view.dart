import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
import '../../extension/date_time_extension.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/notifications_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/notifications_last_viewed_at_notifier_provider.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import 'haptic_feedback_refresh_indicator.dart';
import 'notification_widget.dart';
import 'pagination_bottom_widget.dart';

class NotificationsListView extends HookConsumerWidget {
  const NotificationsListView({
    super.key,
    required this.account,
    this.controller,
  });

  final Account account;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsNotifierProvider(account));
    final nextNotifications = useState(<INotificationsResponse>[]);
    final lastViewedAt = ref.watch(
      notificationsLastViewedAtNotifierProvider(account),
    );
    final showPopup = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showPopupOnNewNote,
      ),
    );
    final notifier = ref.watch(mainStreamNotifierProvider(account).notifier);
    final i = ref.watch(iNotifierProvider(account)).value;
    final controller = this.controller ?? useScrollController();
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    ref.listen(incomingMessageProvider(account), (_, _) {});
    useEffect(() {
      notifier.connect();
      ref
          .read(notificationsLastViewedAtNotifierProvider(account).notifier)
          .save(DateTime.now());
      ref.read(iNotifierProvider(account).notifier).readNotifications();
      controller.addListener(() {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          keepAnimation.value = false;
        } else if (controller.position.extentBefore == 0) {
          keepAnimation.value = true;
          hasUnread.value = false;
          if (i != null && i.hasUnreadNotification) {
            ref.read(iNotifierProvider(account).notifier).readNotifications();
          }
        }
      });
      if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
        controller.addListener(() {
          if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
            if (!isAtBottom.value) {
              ref
                  .read(notificationsNotifierProvider(account).notifier)
                  .loadMore();
              isAtBottom.value = true;
            }
          } else {
            isAtBottom.value = false;
          }
        });
      }
      return;
    }, []);
    ref.listen(mainStreamNotifierProvider(account), (_, next) {
      if (next case AsyncData(value: Notification(:final notification))) {
        nextNotifications.value = [...nextNotifications.value, notification];
        if (keepAnimation.value) {
          if (controller.offset < 400.0) {
            Future<void>.delayed(const Duration(milliseconds: 100), () async {
              await controller.scrollToTop();
              await Future<void>.delayed(
                const Duration(milliseconds: 100),
                controller.scrollToTop,
              );
            });
          } else {
            keepAnimation.value = false;
            hasUnread.value = true;
          }
        } else {
          hasUnread.value = true;
        }
      }
    });

    return HapticFeedbackRefreshIndicator(
      onRefresh: () async {
        ref.invalidate(webSocketChannelProvider(account));
        nextNotifications.value = [];
        await Future.wait([
          ref.refresh(iNotifierProvider(account).future),
          ref.refresh(notificationsNotifierProvider(account).future),
          ref.read(mainStreamNotifierProvider(account).notifier).connect(),
        ]);
      },
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomScrollView(
              controller: controller,
              center: centerKey,
              slivers: [
                SliverList.separated(
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: index == nextNotifications.value.length - 1
                            ? 8.0
                            : 0.0,
                        left: 8.0,
                        right: 8.0,
                        bottom:
                            index == 0 &&
                                (notifications.value?.items.isEmpty ?? true)
                            ? 8.0
                            : 0.0,
                      ),
                      width: maxContentWidth,
                      child: Material(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.vertical(
                          top: index == nextNotifications.value.length - 1
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                          bottom:
                              index == 0 &&
                                  (notifications.value?.items.isEmpty ?? true)
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: NotificationWidget(
                          account: account,
                          notification: nextNotifications.value[index],
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (_, _) => Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: const Divider(height: 1.0),
                    ),
                  ),
                  itemCount: nextNotifications.value.length,
                ),
                if (nextNotifications.value.isNotEmpty &&
                    (notifications.value?.items.isNotEmpty ?? false))
                  SliverToBoxAdapter(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child:
                            lastViewedAt?.isBetween(
                                  notifications
                                      .value
                                      ?.items
                                      .firstOrNull
                                      ?.createdAt,
                                  nextNotifications.value.lastOrNull?.createdAt,
                                ) ??
                                false
                            ? const _NewNotificationsDivider()
                            : const Divider(height: 1.0),
                      ),
                    ),
                  ),
                SliverList.separated(
                  key: centerKey,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: index == 0 && nextNotifications.value.isEmpty
                            ? 8.0
                            : 0.0,
                        left: 8.0,
                        right: 8.0,
                        bottom: index == notifications.value!.items.length - 1
                            ? 8.0
                            : 0.0,
                      ),
                      width: maxContentWidth,
                      child: Material(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.vertical(
                          top: index == 0 && nextNotifications.value.isEmpty
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                          bottom: index == notifications.value!.items.length - 1
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: NotificationWidget(
                          account: account,
                          notification: notifications.value!.items[index],
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child:
                          lastViewedAt?.isBetween(
                                notifications.value?.items
                                    .elementAtOrNull(index + 1)
                                    ?.createdAt,
                                notifications.value?.items
                                    .elementAtOrNull(index)
                                    ?.createdAt,
                              ) ??
                              false
                          ? const _NewNotificationsDivider()
                          : const Divider(height: 0.0),
                    ),
                  ),
                  itemCount: notifications.value?.items.length ?? 0,
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: PaginationBottomWidget(
                        paginationState: notifications,
                        noItemsLabel: t.misskey.noNotes,
                        loadMore: () => ref
                            .read(
                              notificationsNotifierProvider(account).notifier,
                            )
                            .loadMore(skipError: true),
                        height: 120.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (hasUnread.value && showPopup)
              Positioned(
                top: 8.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      0.0,
                      DefaultTextStyle.of(context).style.fontSize! * 2.75,
                    ),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    controller.scrollToTop();
                    keepAnimation.value = true;
                  },
                  child: Text(t.aria.newNotificationReceived),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _NewNotificationsDivider extends ConsumerWidget {
  const _NewNotificationsDivider();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = Theme.of(context).colorScheme.primary;

    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          Expanded(child: Divider(color: color, thickness: 2.0)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              t.aria.newNotifications,
              style: DefaultTextStyle.of(context).style
                  .apply(color: color, fontSizeFactor: 0.9)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Divider(color: color, thickness: 2.0)),
        ],
      ),
    );
  }
}
