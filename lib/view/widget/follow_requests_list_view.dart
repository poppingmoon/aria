import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/main_event.dart';
import '../../provider/api/follow_requests_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../../util/future_with_dialog.dart';
import 'acct_widget.dart';
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
    final nextRequests = useState(<User>[]);
    final showPopup = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showPopupOnNewNote),
    );
    final notifier = ref.watch(mainStreamNotifierProvider(account).notifier);
    final controller = useScrollController();
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    ref.listen(incomingMessageProvider(account), (_, __) {});
    useEffect(
      () {
        notifier.connect();
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
      },
      [],
    );
    ref.listen(mainStreamNotifierProvider(account), (_, next) async {
      if (next case AsyncData(value: ReceiveFollowRequest(:final user))) {
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
    });
    useEffect(
      () {
        if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
          controller.addListener(() {
            if (controller.position.extentAfter < 100) {
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
      },
      [],
    );

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(webSocketChannelProvider(account));
        nextRequests.value = [];
        await Future.wait([
          ref.refresh(followRequestsNotifierProvider(account).future),
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
                  if ((requests.valueOrNull?.items.isNotEmpty ?? false) ||
                      nextRequests.value.isNotEmpty)
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
                      child: FollowRequestTile(
                        account: account,
                        user: nextRequests.value[index],
                        onDismissed: () => nextRequests.value = nextRequests
                            .value
                            .whereIndexed((i, _) => i != index)
                            .toList(),
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 0),
                    itemCount: nextRequests.value.length,
                  ),
                  if (nextRequests.value.isNotEmpty &&
                      (requests.valueOrNull?.items.isNotEmpty ?? false))
                    const SliverToBoxAdapter(child: Divider(height: 0.0)),
                  SliverList.separated(
                    key: centerKey,
                    itemBuilder: (context, index) => Material(
                      color: Theme.of(context).colorScheme.surface,
                      child: FollowRequestTile(
                        account: account,
                        user: requests.value!.items[index].follower,
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 0),
                    itemCount: requests.valueOrNull?.items.length ?? 0,
                  ),
                  if ((requests.valueOrNull?.items.isNotEmpty ?? false) ||
                      nextRequests.value.isNotEmpty)
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
                      paginationState: requests,
                      noItemsLabel: t.misskey.noFollowRequests,
                      loadMore: () => ref
                          .read(
                            followRequestsNotifierProvider(account).notifier,
                          )
                          .loadMore(skipError: true),
                    ),
                  ),
                ],
              ),
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

class FollowRequestTile extends ConsumerWidget {
  const FollowRequestTile({
    super.key,
    required this.account,
    required this.user,
    this.onDismissed,
  });

  final Account account;
  final User user;
  final void Function()? onDismissed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () => context.push('/$account/users/${user.id}'),
      onLongPress: () => showUserSheet(
        context: context,
        account: account,
        userId: user.id,
      ),
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => futureWithDialog(
              context,
              Future<void>(() async {
                await ref
                    .read(followRequestsNotifierProvider(account).notifier)
                    .accept(user.id);
                onDismissed?.call();
              }),
            ),
            child: Text(t.misskey.accept),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => futureWithDialog(
                context,
                Future<void>(() async {
                  await ref
                      .read(followRequestsNotifierProvider(account).notifier)
                      .reject(user.id);
                  onDismissed?.call();
                }),
              ),
              child: Text(t.misskey.reject),
            ),
          ),
        ],
      ),
    );
  }
}
