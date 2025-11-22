import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/api/follow_requests_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/main_stream_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import 'acct_widget.dart';
import 'follow_request_action_button.dart';
import 'haptic_feedback_refresh_indicator.dart';
import 'pagination_bottom_widget.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';
import 'username_widget.dart';

class FollowRequestsListView extends HookConsumerWidget {
  const FollowRequestsListView({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requests = ref.watch(followRequestsNotifierProvider(account));
    final nextRequests = useState(<UserLite>[]);
    final showPopup = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.showPopupOnNewNote,
      ),
    );
    final controller = useScrollController();
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    useEffect(() {
      controller.addListener(() {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          keepAnimation.value = false;
        } else if (controller.position.extentBefore == 0) {
          keepAnimation.value = true;
          hasUnread.value = false;
        }
      });
      return;
    }, []);
    ref.listen(mainStreamProvider(account), (_, next) {
      if (next case AsyncData(value: final event)) {
        if (event
            case ReceiveFollowRequest(:final user) ||
                Notification(
                  notification: INotificationsResponse(
                    type: NotificationType.receiveFollowRequest,
                    :final user?,
                  ),
                )) {
          if (nextRequests.value.any((u) => u.id == user.id)) {
            return;
          }
          nextRequests.value = [...nextRequests.value, user];
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
      }
    });
    useEffect(() {
      if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
        controller.addListener(() {
          if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
            if (!isAtBottom.value) {
              ref
                  .read(followRequestsNotifierProvider(account).notifier)
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
    final theme = Theme.of(context);

    return HapticFeedbackRefreshIndicator(
      onRefresh: () async {
        ref.invalidate(webSocketChannelProvider(account));
        nextRequests.value = [];
        return ref.refresh(followRequestsNotifierProvider(account).future);
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
                        top: index == nextRequests.value.length - 1 ? 8.0 : 0.0,
                        left: 8.0,
                        right: 8.0,
                        bottom:
                            index == 0 &&
                                (requests.value?.items.isEmpty ?? true)
                            ? 8.0
                            : 0.0,
                      ),
                      width: maxContentWidth,
                      child: Material(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.vertical(
                          top: index == nextRequests.value.length - 1
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                          bottom:
                              index == 0 &&
                                  (requests.value?.items.isEmpty ?? true)
                              ? const Radius.circular(8.0)
                              : Radius.zero,
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: _FollowRequestTile(
                          account: account,
                          user: nextRequests.value[index],
                          onDone: () => nextRequests.value = nextRequests.value
                              .whereIndexed((i, _) => i != index)
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (_, _) => Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: const Divider(height: 0.0),
                    ),
                  ),
                  itemCount: nextRequests.value.length,
                ),
                if (nextRequests.value.isNotEmpty &&
                    (requests.value?.items.isNotEmpty ?? false))
                  SliverToBoxAdapter(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child: const Divider(height: 0.0),
                      ),
                    ),
                  ),
                SliverList.separated(
                  key: centerKey,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: index == 0 && nextRequests.value.isEmpty
                            ? 8.0
                            : 0.0,
                        left: 8.0,
                        right: 8.0,
                        bottom: index == requests.value!.items.length - 1
                            ? 8.0
                            : 0.0,
                      ),
                      width: maxContentWidth,
                      child: Material(
                        color: theme.colorScheme.surface,
                        child: _FollowRequestTile(
                          account: account,
                          user: requests.value!.items[index].follower,
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (_, _) => Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: const Divider(height: 0.0),
                    ),
                  ),
                  itemCount: requests.value?.items.length ?? 0,
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: PaginationBottomWidget(
                        paginationState: requests,
                        noItemsLabel: t.misskey.noFollowRequests,
                        loadMore: () => ref
                            .read(
                              followRequestsNotifierProvider(account).notifier,
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
                  child: Text(t.aria.newFollowRequestReceived),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _FollowRequestTile extends ConsumerWidget {
  const _FollowRequestTile({
    required this.account,
    required this.user,
    this.onDone,
  });

  final Account account;
  final User user;
  final void Function()? onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => context.push('/$account/users/${user.id}'),
      onLongPress: () =>
          showUserSheet(context: context, account: account, userId: user.id),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: UserAvatar(
              account: account,
              user: user,
              size: 50.0,
              onTap: () => context.push('/$account/users/${user.id}'),
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle.merge(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    child: UsernameWidget(account: account, user: user),
                  ),
                  AcctWidget(account: account, user: user),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FollowRequestActionButton(
              account: account,
              user: user,
              accept: true,
              onDone: onDone,
            ),
          ),
          const SizedBox(width: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: FollowRequestActionButton(
              account: account,
              user: user,
              accept: false,
              onDone: onDone,
            ),
          ),
          const SizedBox(width: 8.0),
        ],
      ),
    );
  }
}
