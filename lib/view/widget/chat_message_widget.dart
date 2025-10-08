import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/parsed_mfm_provider.dart';
import '../../util/copy_text.dart';
import '../../util/extract_url.dart';
import '../../util/future_with_dialog.dart';
import 'emoji_picker.dart';
import 'emoji_widget.dart';
import 'media_list.dart';
import 'mfm.dart';
import 'reaction_effect.dart';
import 'time_widget.dart';
import 'url_preview.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class ChatMessageWidget extends HookConsumerWidget {
  const ChatMessageWidget({
    super.key,
    required this.account,
    required this.message,
    this.user,
    this.showAvatar = true,
    this.updateMessage,
  });

  final Account account;
  final ChatMessage message;
  final User? user;
  final bool showAvatar;
  final void Function({bool deleted})? updateMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final nodes = message.text != null
        ? ref.watch(parsedMfmProvider(message.text!))
        : null;
    final urls = useMemoized(() {
      if (nodes != null) {
        return extractUrl(nodes);
      }
    }, [nodes]);
    final avatarScale = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.avatarScale,
      ),
    );
    final isMyMessage = message.fromUserId == i?.id;
    final style = DefaultTextStyle.of(context).style;
    final avatarSize = (style.fontSize ?? defaultFontSize) * avatarScale;
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        if (!isMyMessage)
          if (message.fromUser ?? user case final user? when showAvatar)
            UserAvatar(
              account: account,
              user: user,
              size: avatarSize,
              onTap: () => context.push('/$account/users/${user.id}'),
            )
          else
            SizedBox(width: avatarSize),
        Expanded(
          child: Column(
            crossAxisAlignment: !isMyMessage
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              if (nodes != null)
                Card.filled(
                  color: isMyMessage
                      ? theme.colorScheme.primaryContainer
                      : theme.colorScheme.surface,
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () {
                      if (message.id.isEmpty) return;
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (context) => _ChatMessageSheet(
                          account: account,
                          message: message,
                          user: user,
                          updateMessage: updateMessage,
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mfm(
                        account: account,
                        nodes: nodes,
                        author: isMyMessage ? i : user,
                        messageId: message.id,
                        nyaize: true,
                      ),
                    ),
                  ),
                ),
              if (message.file case final file?) ...[
                if (nodes != null) const SizedBox(height: 4.0),
                MediaList(
                  account: account,
                  files: [file],
                  user: isMyMessage ? i : message.fromUser ?? user,
                ),
              ],
              if (urls case final urls? when urls.isNotEmpty) ...[
                for (final url in urls) ...[
                  const SizedBox(height: 4.0),
                  UrlPreview(account: account, link: url),
                ],
              ],
              const SizedBox(height: 2.0),
              DefaultTextStyle.merge(
                style: style.apply(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
                  fontSizeFactor: 0.8,
                ),
                child: TimeWidget(
                  time: message.createdAt,
                  onTap: () {
                    if (message.id.isEmpty) return;
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => _ChatMessageSheet(
                        account: account,
                        message: message,
                        user: user,
                        updateMessage: updateMessage,
                      ),
                    );
                  },
                ),
              ),
              if (message.reactions.isNotEmpty) ...[
                const SizedBox(height: 2.0),
                SizedBox(
                  width: double.infinity,
                  child: Align(
                    alignment: !isMyMessage
                        ? AlignmentDirectional.centerStart
                        : AlignmentDirectional.centerEnd,
                    child: _ReactionsViewer(
                      account: account,
                      messageId: message.id,
                      reactions: message.reactions,
                      user: isMyMessage ? user : null,
                      updateMessage: updateMessage,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
        if (isMyMessage)
          if (showAvatar && i != null)
            UserAvatar(
              account: account,
              user: i,
              size: avatarSize,
              onTap: () => context.push('/$account/users/${i.id}'),
            )
          else
            SizedBox(width: avatarSize),
      ],
    );
  }
}

class _ChatMessageSheet extends ConsumerWidget {
  const _ChatMessageSheet({
    required this.account,
    required this.message,
    this.user,
    this.updateMessage,
  });

  final Account account;
  final ChatMessage message;
  final User? user;
  final void Function({bool deleted})? updateMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final isMyMessage = message.fromUserId == i?.id;
    final user = message.fromUser ?? (isMyMessage ? i : this.user);
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: user != null
              ? UserAvatar(
                  account: account,
                  user: user,
                  size: 32.0,
                  onTap: () => context.push('/$account/users/${user.id}'),
                )
              : null,
          title: Mfm(
            account: account,
            text: [
              if (message.text case final text?) text,
              if (message.file case final file?) '(${file.name})',
            ].join(' '),
            simple: true,
            author: message.fromUser,
            nyaize: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: TimeWidget(time: message.createdAt, detailed: true),
        ),
        const Divider(height: 0.0),
        if (!isMyMessage)
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(t.misskey.doReaction),
            onTap: () async {
              final emoji = await pickEmoji(ref, account, reaction: true);
              if (!context.mounted) return;
              if (emoji != null) {
                context.pop();
                final result = await futureWithDialog(
                  context,
                  ref
                      .read(misskeyProvider(account))
                      .chat
                      .messages
                      .react(
                        ChatMessagesReactRequest(
                          messageId: message.id,
                          reaction: emoji,
                        ),
                      )
                      .then((_) => ()),
                  overlay: false,
                );
                if (result != null) {
                  updateMessage?.call();
                }
              }
            },
          ),
        if (message.text case final text?)
          ListTile(
            leading: const Icon(Icons.copy),
            title: Text(t.misskey.copy),
            onTap: () {
              copyToClipboard(context, text);
              context.pop();
            },
          ),
        if (isMyMessage)
          ListTile(
            leading: const Icon(Icons.delete),
            title: Text(t.misskey.delete),
            onTap: () async {
              final result = await futureWithDialog(
                context,
                ref
                    .read(misskeyProvider(account))
                    .chat
                    .messages
                    .delete(ChatMessagesDeleteRequest(messageId: message.id))
                    .then((_) => ()),
              );
              if (!context.mounted) return;
              if (result != null) {
                updateMessage?.call(deleted: true);
                context.pop();
              }
            },
            iconColor: theme.colorScheme.error,
            textColor: theme.colorScheme.error,
          ),
      ],
    );
  }
}

class _ReactionsViewer extends HookConsumerWidget {
  const _ReactionsViewer({
    required this.account,
    required this.messageId,
    required this.reactions,
    this.user,
    this.updateMessage,
  });

  final Account account;
  final String messageId;
  final List<ChatMessageReaction> reactions;
  final User? user;
  final void Function()? updateMessage;

  void _showReactionEffect(BuildContext context, GlobalKey key, String emoji) {
    Future.delayed(const Duration(milliseconds: 50), () {
      if (!context.mounted) return;
      if (!(ModalRoute.of(context)?.isCurrent ?? false)) return;
      if (key.currentContext?.findRenderObject()
          case final RenderBox renderBox) {
        final offset = renderBox.localToGlobal(Offset.zero);
        final entry = OverlayEntry(
          builder: (context) => Positioned(
            left: offset.dx,
            top: offset.dy,
            child: Material(
              color: Colors.transparent,
              child: ReactionEffect(account: account, emoji: emoji),
            ),
          ),
        );
        Overlay.of(context).insert(entry);
        Future.delayed(const Duration(milliseconds: 1100), () {
          entry.remove();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (scale, reduceAnimation) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.reactionsDisplayScale, settings.reduceAnimation),
      ),
    );
    final reactions = useState(this.reactions);
    final keys = useState(
      List.generate(this.reactions.length, (_) => GlobalKey()),
    );
    useEffect(() {
      final newReactionsCount = this.reactions.length - reactions.value.length;
      if (newReactionsCount > 0) {
        final newReactions = this.reactions.sublist(reactions.value.length);
        for (final (i, reaction) in newReactions.indexed) {
          GlobalKey? key = keys.value.elementAtOrNull(
            reactions.value.length + i,
          );
          if (key == null) {
            key = GlobalKey();
            keys.value = [...keys.value, key];
          }
          if (!reduceAnimation) {
            _showReactionEffect(context, key, reaction.reaction);
          }
        }
      }
      reactions.value = this.reactions;
      return;
    }, [this.reactions]);

    return Wrap(
      spacing: 2.0,
      runSpacing: 2.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: reactions.value
          .mapIndexed(
            (index, reaction) => _ReactionButton(
              account: account,
              messageId: messageId,
              reaction: reaction,
              user: user,
              emojiKey: keys.value[index],
              updateMessage: updateMessage,
            ),
          )
          .toList(),
    );
  }
}

class _ReactionButton extends ConsumerWidget {
  const _ReactionButton({
    required this.account,
    required this.messageId,
    required this.reaction,
    this.user,
    this.emojiKey,
    this.updateMessage,
  });

  final Account account;
  final String messageId;
  final ChatMessageReaction reaction;
  final User? user;
  final Key? emojiKey;
  final void Function()? updateMessage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final scale = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.reactionsDisplayScale,
      ),
    );
    final isMyReaction = reaction.user == null
        ? this.user == null
        : reaction.user?.id == i?.id;
    final user = reaction.user ?? (isMyReaction ? i : this.user);
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(
      context,
    ).style.apply(fontSizeFactor: scale);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return Tooltip(
      richMessage: WidgetSpan(
        child: user != null
            ? UsernameWidget(
                account: account,
                leadingSpans: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: UserAvatar(account: account, user: user),
                  ),
                  const WidgetSpan(child: SizedBox(width: 4.0)),
                ],
                user: user,
                style: TextStyle(
                  color: switch (theme.brightness) {
                    Brightness.light => Colors.white,
                    Brightness.dark => Colors.black,
                  },
                ),
              )
            : const SizedBox.shrink(),
      ),
      child: ElevatedButton(
        onPressed: isMyReaction
            ? () async {
                final result = await futureWithDialog(
                  context,
                  ref
                      .read(misskeyProvider(account))
                      .chat
                      .messages
                      .unreact(
                        ChatMessagesUnreactRequest(
                          messageId: messageId,
                          reaction: reaction.reaction,
                        ),
                      )
                      .then((_) => ()),
                  overlay: false,
                );
                if (result != null) {
                  updateMessage?.call();
                }
              }
            : null,
        style: ElevatedButton.styleFrom(
          foregroundColor: colors.accent,
          backgroundColor: colors.accentedBg,
          disabledForegroundColor: colors.fg,
          disabledBackgroundColor: Colors.transparent,
          padding: EdgeInsets.all(2.0 * scale),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isMyReaction ? colors.accent : colors.divider,
            ),
            borderRadius: BorderRadius.circular(4.0 * scale),
          ),
          elevation: 0.0,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 4.0 * scale,
            horizontal: 2.0 * scale,
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: style.lineHeight),
            child: FittedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  EmojiWidget(
                    key: emojiKey,
                    account: account,
                    emoji: reaction.reaction,
                    style: style,
                    disableTooltip: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
