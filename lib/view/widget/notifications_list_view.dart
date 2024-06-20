import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/date_time_extension.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/notifications_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/notifications_last_viewed_at_notifier_provider.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import 'notification_widget.dart';
import 'pagination_bottom_widget.dart';

class NotificationsListView extends HookConsumerWidget {
  const NotificationsListView({
    super.key,
    required this.account,
    this.controller,
    this.physics,
  });

  final Account account;
  final ScrollController? controller;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsNotifierProvider(account));
    final nextNotifications = useState(<INotificationsResponse>[]);
    final lastViewedAt =
        ref.watch(notificationsLastViewedAtNotifierProvider(account));
    final notifier = ref.watch(mainStreamNotifierProvider(account).notifier);
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final controller = this.controller ?? useScrollController();
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    ref.listen(incomingMessageProvider(account), (_, __) {});
    useEffect(
      () {
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
            if (controller.position.extentAfter < 100) {
              if (!isAtBottom.value) {
                ref
                    .read(notificationsNotifierProvider(account).notifier)
                    .loadMore();
              }
            } else if (isAtBottom.value) {
              isAtBottom.value = false;
            }
          });
        }
        return;
      },
      [],
    );
    ref.listen(mainStreamNotifierProvider(account), (_, next) async {
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

    return RefreshIndicator(
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
            Container(
              width: 800.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomScrollView(
                controller: controller,
                physics: physics,
                center: centerKey,
                slivers: [
                  if ((notifications.valueOrNull?.items.isNotEmpty ?? false) ||
                      nextNotifications.value.isNotEmpty)
                    SliverToBoxAdapter(
                      child: Container(
                        height: 8.0,
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  SliverList.separated(
                    itemBuilder: (context, index) => Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: NotificationWidget(
                        account: account,
                        notification: nextNotifications.value[index],
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 0),
                    itemCount: nextNotifications.value.length,
                  ),
                  if (nextNotifications.value.isNotEmpty &&
                      (notifications.valueOrNull?.items.isNotEmpty ?? false))
                    SliverToBoxAdapter(
                      child: lastViewedAt?.isBetween(
                                notifications
                                    .valueOrNull?.items.firstOrNull?.createdAt,
                                nextNotifications.value.lastOrNull?.createdAt,
                              ) ??
                              false
                          ? const _NewNotificationsDivider()
                          : const Divider(height: 1.0),
                    ),
                  SliverList.separated(
                    key: centerKey,
                    itemBuilder: (context, index) => Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: NotificationWidget(
                        account: account,
                        notification: notifications.value!.items[index],
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        lastViewedAt?.isBetween(
                                  notifications.valueOrNull?.items
                                      .elementAtOrNull(index + 1)
                                      ?.createdAt,
                                  notifications.valueOrNull?.items
                                      .elementAtOrNull(index)
                                      ?.createdAt,
                                ) ??
                                false
                            ? const _NewNotificationsDivider()
                            : const Divider(height: 0.0),
                    itemCount: notifications.valueOrNull?.items.length ?? 0,
                  ),
                  if ((notifications.valueOrNull?.items.isNotEmpty ?? false) ||
                      nextNotifications.value.isNotEmpty)
                    SliverToBoxAdapter(
                      child: Container(
                        height: 8.0,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ),
                  SliverToBoxAdapter(
                    child: PaginationBottomWidget(
                      paginationState: notifications,
                      noItemsLabel: t.misskey.noNotes,
                      loadMore: () => ref
                          .read(notificationsNotifierProvider(account).notifier)
                          .loadMore(skipError: true),
                    ),
                  ),
                ],
              ),
            ),
            if (hasUnread.value)
              Positioned(
                top: 8.0,
                child: ElevatedButton(
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
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          Expanded(child: Divider(color: colors.accent, thickness: 2.0)),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              t.aria.newNotifications,
              style: TextStyle(color: colors.accent),
            ),
          ),
          Expanded(child: Divider(color: colors.accent, thickness: 2.0)),
        ],
      ),
    );
  }
}
