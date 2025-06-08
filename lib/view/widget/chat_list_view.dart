import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/streaming/chat_event.dart';
import '../../provider/api/chat_messages_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/chat_stream_notifier.dart';
import '../../provider/streaming/incoming_message_provider.dart';
import 'chat_message_widget.dart';
import 'pagination_bottom_widget.dart';

class ChatListView extends HookConsumerWidget {
  const ChatListView({
    super.key,
    required this.account,
    this.userId,
    this.roomId,
  });

  final Account account;
  final String? userId;
  final String? roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(
      chatMessagesNotifierProvider(account, userId: userId, roomId: roomId),
    );
    final nextMessages = useState(<ChatMessage>[]);
    final deletedMessageIds = useState(<String>{});
    final user = userId != null
        ? ref.watch(userNotifierProvider(account, userId: userId)).valueOrNull
        : null;
    final (showPopup, enableInfiniteScroll, reduceAnimation) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showPopupOnNewNote,
          settings.enableInfiniteScroll,
          settings.reduceAnimation,
        ),
      ),
    );
    final notifier = ref.watch(
      chatStreamNotifierProvider(
        account,
        userId: userId,
        roomId: roomId,
      ).notifier,
    );
    final controller = useScrollController();
    final listKey = useMemoized(() => GlobalKey<SliverAnimatedListState>());
    final centerKey = useMemoized(() => GlobalKey());
    final hasUnread = useState(false);
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    final offset = useState(0.0);
    ref.listen(incomingMessageProvider(account), (_, _) {});
    useEffect(() {
      void callback() {
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
          if (!isAtBottom.value) {
            ref
                .read(
                  chatMessagesNotifierProvider(
                    account,
                    userId: userId,
                    roomId: roomId,
                  ).notifier,
                )
                .loadMore();
            isAtBottom.value = true;
          }
        } else {
          isAtBottom.value = false;
        }
      }

      notifier.connect();
      if (enableInfiniteScroll) {
        controller.addListener(callback);
      }
      return () {
        notifier.disconnect();
        if (enableInfiniteScroll) {
          controller.removeListener(callback);
        }
      };
    }, []);
    ref.listen(
      chatStreamNotifierProvider(account, userId: userId, roomId: roomId),
      (_, next) => next.whenData((event) {
        switch (event) {
          case Message(:final message):
            final messages = nextMessages.value;
            final index = messages.lastIndexWhere(
              (m) => m.id.compareTo(message.id) <= 0,
            );
            final isDuplicate = index >= 0 && messages[index].id == message.id;
            nextMessages.value = [
              ...messages.take(isDuplicate ? index : index + 1),
              message,
              ...messages.sublist(index + 1),
            ];
            listKey.currentState?.insertItem(
              isDuplicate ? index : index + 1,
              duration: reduceAnimation
                  ? Duration.zero
                  : const Duration(milliseconds: 125),
            );
            notifier.read();
            if (!keepAnimation.value) {
              hasUnread.value = true;
            }
          case Deleted(:final messageId):
            deletedMessageIds.value = {...deletedMessageIds.value, messageId};
          case React(:final reaction, :final user, :final messageId):
            final messages = nextMessages.value;
            if (messages.any((message) => message.id == messageId)) {
              nextMessages.value = messages
                  .map(
                    (message) => message.id == messageId
                        ? message.copyWith(
                            reactions: [
                              ...message.reactions,
                              ChatMessageReaction(
                                reaction: reaction,
                                user: user,
                              ),
                            ],
                          )
                        : message,
                  )
                  .toList();
            } else {
              ref
                  .read(
                    chatMessagesNotifierProvider(
                      account,
                      userId: userId,
                      roomId: roomId,
                    ).notifier,
                  )
                  .addReaction(
                    messageId: messageId,
                    reaction: reaction,
                    user: user,
                  );
            }
          case Unreact(:final reaction, :final user, :final messageId):
            final messages = nextMessages.value;
            if (messages.indexWhere((message) => message.id == messageId)
                case final index when index >= 0) {
              final message = messages[index];
              nextMessages.value = [
                if (index > 0) ...messages.take(index - 1),
                message.copyWith(
                  reactions: message.reactions
                      .where(
                        (r) => r.reaction != reaction || r.user?.id != user?.id,
                      )
                      .toList(),
                ),
                ...messages.sublist(index),
              ];
            } else {
              ref
                  .read(
                    chatMessagesNotifierProvider(
                      account,
                      userId: userId,
                      roomId: roomId,
                    ).notifier,
                  )
                  .removeReaction(
                    messageId: messageId,
                    reaction: reaction,
                    user: user,
                  );
            }
        }
      }),
    );

    return RefreshIndicator(
      onRefresh: () async {
        nextMessages.value = [];
        listKey.currentState?.removeAllItems(
          (_, _) => const SizedBox.shrink(),
          duration: Duration.zero,
        );
        await Future.wait([
          notifier.connect(),
          ref.refresh(
            chatMessagesNotifierProvider(
              account,
              userId: userId,
              roomId: roomId,
            ).future,
          ),
        ]);
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          NotificationListener<ScrollMetricsNotification>(
            onNotification: (notification) {
              if (controller.offset > offset.value) {
                keepAnimation.value = false;
              } else if (notification.metrics.extentBefore == 0.0) {
                keepAnimation.value = true;
                hasUnread.value = false;
              } else if (keepAnimation.value) {
                controller.jumpTo(notification.metrics.minScrollExtent);
              }
              offset.value = controller.offset;
              return false;
            },
            child: CustomScrollView(
              controller: controller,
              center: centerKey,
              reverse: true,
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 4.0)),
                SliverAnimatedList(
                  key: listKey,
                  itemBuilder: (context, index, animation) {
                    final message = nextMessages.value[index];
                    if (deletedMessageIds.value.contains(message.id)) {
                      return const SizedBox.shrink();
                    }

                    return Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4.0,
                          horizontal: 8.0,
                        ),
                        width: maxContentWidth,
                        child: SizeTransition(
                          sizeFactor: animation,
                          child: FadeTransition(
                            opacity: animation,
                            child: ChatMessageWidget(
                              account: account,
                              message: message,
                              user: user,
                              showAvatar:
                                  message.fromUserId !=
                                  (index == 0
                                      ? messages
                                            .valueOrNull
                                            ?.items
                                            .firstOrNull
                                            ?.fromUserId
                                      : nextMessages.value
                                            .elementAtOrNull(index - 1)
                                            ?.fromUserId),
                              updateMessage: ({deleted = false}) async {
                                if (deleted) {
                                  deletedMessageIds.value = {
                                    ...deletedMessageIds.value,
                                    message.id,
                                  };
                                } else {
                                  final updated = await ref
                                      .read(misskeyProvider(account))
                                      .chat
                                      .messages
                                      .show(
                                        ChatMessagesShowRequest(
                                          messageId: message.id,
                                        ),
                                      );
                                  nextMessages.value = nextMessages.value
                                      .map(
                                        (message) => message.id == updated.id
                                            ? updated
                                            : message,
                                      )
                                      .toList();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SliverList.builder(
                  key: centerKey,
                  itemBuilder: (context, index) {
                    if (messages.valueOrNull?.items case final messages?) {
                      final message = messages[index];
                      if (deletedMessageIds.value.contains(message.id) ||
                          (index < 5 &&
                              nextMessages.value
                                  .take(5)
                                  .any((m) => m.id == message.id))) {
                        return const SizedBox.shrink();
                      }

                      return Center(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 8.0,
                          ),
                          width: maxContentWidth,
                          child: ChatMessageWidget(
                            account: account,
                            message: message,
                            user: user,
                            showAvatar:
                                message.fromUserId !=
                                messages.elementAtOrNull(index + 1)?.fromUserId,
                            updateMessage: ({deleted = false}) {
                              if (deleted) {
                                deletedMessageIds.value = {
                                  ...deletedMessageIds.value,
                                  message.id,
                                };
                              } else {
                                ref
                                    .read(
                                      chatMessagesNotifierProvider(
                                        account,
                                        userId: userId,
                                        roomId: roomId,
                                      ).notifier,
                                    )
                                    .updateMessage(message.id);
                              }
                            },
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                  itemCount: messages.valueOrNull?.items.length ?? 0,
                ),
                SliverToBoxAdapter(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      width: maxContentWidth,
                      child: PaginationBottomWidget(
                        paginationState: messages,
                        noItemsLabel: t.misskey.chat_.noMessagesYet,
                        loadMore: () => ref
                            .read(
                              chatMessagesNotifierProvider(
                                account,
                                userId: userId,
                                roomId: roomId,
                              ).notifier,
                            )
                            .loadMore(skipError: true),
                        reversed: true,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 4.0)),
              ],
            ),
          ),
          if (hasUnread.value && showPopup)
            Positioned(
              bottom: 8.0,
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
                  hasUnread.value = false;
                },
                child: Text(t.misskey.chat_.newMessage),
              ),
            ),
        ],
      ),
    );
  }
}
