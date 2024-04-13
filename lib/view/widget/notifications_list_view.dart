import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/notifications_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import 'notification_widget.dart';
import 'pagination_bottom_widget.dart';

class NotificationsListView extends HookConsumerWidget {
  const NotificationsListView({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsNotifierProvider(account));
    final nextNotifications = useState(<INotificationsResponse>[]);
    final notifier = ref.watch(mainStreamNotifierProvider(account).notifier);
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final controller = useScrollController();
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasNewNotification = useState(false);
    final isAtBottom = useState(false);
    useEffect(
      () {
        notifier.connect();
        controller.addListener(() {
          if (controller.position.extentBefore == 0) {
            hasNewNotification.value = false;
            if (i != null && i.hasUnreadNotification) {
              ref.read(iNotifierProvider(account).notifier).readNotifications();
            }
          }
        });
        return;
      },
      [],
    );
    ref.listen(mainStreamNotifierProvider(account), (_, next) async {
      if (next case AsyncData(value: Notification(:final notification))) {
        nextNotifications.value = [...nextNotifications.value, notification];
        if (controller.position.extentBefore == 0) {
          await Future<void>.delayed(const Duration(milliseconds: 100));
          controller.scrollToTop();
        } else {
          hasNewNotification.value = true;
        }
      }
    });
    useEffect(
      () {
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
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(webSocketChannelProvider(account));
        nextNotifications.value = [];
        await Future.wait([
          ref.refresh(iNotifierProvider(account).future),
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
                          color: colors.panel,
                        ),
                      ),
                    ),
                  SliverList.separated(
                    itemBuilder: (context, index) => Material(
                      color: colors.panel,
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
                    const SliverToBoxAdapter(child: Divider(height: 0.0)),
                  SliverList.separated(
                    key: centerKey,
                    itemBuilder: (context, index) => Material(
                      color: colors.panel,
                      child: NotificationWidget(
                        account: account,
                        notification: notifications.value!.items[index],
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 0),
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
                          color: colors.panel,
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
            if (hasNewNotification.value)
              Positioned(
                top: 16.0,
                child: ElevatedButton(
                  onPressed: () => controller.scrollToTop(),
                  child: Text(t.aria.newNotificationReceived),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
