import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/streaming/main_event.dart';
import '../../../provider/api/chat_history_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/streaming/incoming_message_provider.dart';
import '../../../provider/streaming/main_stream_notifier_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/mfm.dart';
import '../../widget/permission_denied_error_widget.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_avatar.dart';
import '../../widget/username_widget.dart';

class ChatHome extends HookConsumerWidget {
  const ChatHome({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(chatHistoryNotifierProvider(account));
    ref.listen(incomingMessageProvider(account), (_, _) {});
    ref.listen(
      mainStreamNotifierProvider(account),
      (_, next) => next.whenData((event) {
        if (event case NewChatMessage(:final message)) {
          ref
              .read(chatHistoryNotifierProvider(account).notifier)
              .updateHistory(message);
        }
      }),
    );
    useEffect(() {
      ref.read(mainStreamNotifierProvider(account).notifier).connect();
      ref.read(iNotifierProvider(account).notifier).readChatMessages();
      return;
    }, []);

    return RefreshIndicator(
      onRefresh: () => Future.wait([
        ref.read(mainStreamNotifierProvider(account).notifier).connect(),
        ref.refresh(chatHistoryNotifierProvider(account).future),
      ]),
      child: switch (history) {
        AsyncValue(valueOrNull: final history?) =>
          history.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.chat_.noHistory)),
                    ),
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: maxContentWidth,
                      margin: EdgeInsets.only(
                        left: 8.0,
                        top: index == 0 ? 8.0 : 4.0,
                        right: 8.0,
                        bottom: index == history.length - 1 ? 120.0 : 4.0,
                      ),
                      child: _ChatMessagePreview(
                        account: account,
                        message: history[index],
                      ),
                    ),
                  ),
                  itemCount: history.length,
                ),
        AsyncValue(error: MisskeyException(code: 'PERMISSION_DENIED')) =>
          LayoutBuilder(
            builder: (context, constraint) => SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: constraint.maxHeight,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    padding: const EdgeInsets.all(16.0),
                    child: PermissionDeniedErrorWidget(account: account),
                  ),
                ),
              ),
            ),
          ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class _ChatMessagePreview extends ConsumerWidget {
  const _ChatMessagePreview({required this.account, required this.message});

  final Account account;
  final ChatMessage message;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final isMyMessage = message.fromUserId == i?.id;
    final room = message.toRoom;
    final user = room != null || !isMyMessage
        ? message.fromUser
        : message.toUser;
    final isRead = message.isRead ?? true;
    final style = DefaultTextStyle.of(context).style;
    final theme = Theme.of(context);

    return Card.filled(
      color: theme.colorScheme.surface,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          if (!isRead) {
            ref
                .read(chatHistoryNotifierProvider(account).notifier)
                .read(message.id);
          }
          if (room != null) {
            context.push('/$account/chat/room/${room.id}');
          } else if (user != null) {
            context.push('/$account/chat/user/${user.id}');
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8.0,
            children: [
              if (user != null)
                UserAvatar(
                  account: account,
                  user: user,
                  size: 40.0,
                  showOnlineIndicator: true,
                  onTap: () => context.push('/$account/users/${user.id}'),
                )
              else
                const Icon(Icons.person, size: 40.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4.0,
                  children: [
                    DefaultTextStyle.merge(
                      style: TextStyle(
                        fontWeight: !isMyMessage && !isRead
                            ? FontWeight.bold
                            : null,
                      ),
                      child: Row(
                        spacing: 2.0,
                        children: [
                          if (room != null)
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: room.name,
                                  children: [
                                    const WidgetSpan(
                                      child: SizedBox(width: 4.0),
                                    ),
                                    WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Tooltip(
                                        message: t.misskey.chat_.roomChat,
                                        child: Icon(
                                          Icons.meeting_room,
                                          size: style.fontSize,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            )
                          else if (user != null)
                            Expanded(
                              child: UsernameWidget(
                                account: account,
                                user: user,
                                trailingSpans: [
                                  const WidgetSpan(child: SizedBox(width: 4.0)),
                                  TextSpan(
                                    text: '@${user.username}',
                                    style: TextStyle(
                                      color: theme.colorScheme.onSurface
                                          .withValues(alpha: 0.8),
                                    ),
                                  ),
                                ],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          DefaultTextStyle.merge(
                            style: TextStyle(
                              fontSize: (style.fontSize ?? 14.0) * 0.9,
                            ),
                            child: TimeWidget(time: message.createdAt),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 2.0,
                      children: [
                        Expanded(
                          child: Mfm(
                            account: account,
                            text: [
                              if (message.text case final text?) text,
                              if (message.file case final file?)
                                '(${file.name})',
                            ].join(' '),
                            simple: true,
                            author: message.fromUser,
                            nyaize: true,
                            style: style.apply(
                              fontSizeFactor: 0.9,
                              color: theme.colorScheme.onSurface.withValues(
                                alpha: !isMyMessage && !isRead ? null : 0.8,
                              ),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                          ),
                        ),
                        if (!isMyMessage && !isRead)
                          DecoratedBox(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: theme.colorScheme.primary,
                            ),
                            child: SizedBox.square(dimension: style.fontSize),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
