import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/colors.dart';
import '../../extension/text_style_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/follow_requests_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import 'achievement_widget.dart';
import 'emoji_widget.dart';
import 'follow_button.dart';
import 'image_widget.dart';
import 'note_sheet.dart';
import 'note_summary.dart';
import 'note_widget.dart';
import 'time_widget.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class NotificationWidget extends ConsumerWidget {
  const NotificationWidget({
    super.key,
    required this.account,
    required this.notification,
  });

  final Account account;
  final INotificationsResponse notification;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final followRequests = (i?.isLocked ?? false)
        ? ref
                .watch(followRequestsNotifierProvider(account))
                .valueOrNull
                ?.items ??
            []
        : <FollowRequest>[];
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    switch (notification.type) {
      case NotificationType.mention ||
            NotificationType.reply ||
            NotificationType.quote:
        if (notification case INotificationsResponse(:final note?)) {
          return NoteWidget(account: account, noteId: note.id);
        }
      case NotificationType.follow:
        if (notification case INotificationsResponse(:final user?)) {
          return _NotificationTile(
            account: account,
            user: user,
            icon: const Icon(Icons.add),
            iconBackgroundColor: eventFollow,
            subtitle: Text(t.misskey.youGotNewFollower),
            actions: [FollowButton(account: account, userId: user.id)],
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/users/${user.id}'),
          );
        }
      case NotificationType.renote:
        if (notification.note case Note(:final id, :final renoteId?)) {
          return _NotificationTile(
            account: account,
            user: notification.user,
            icon: const Icon(Icons.repeat_rounded),
            iconBackgroundColor: eventRenote,
            subtitle: NoteSummary(account: account, noteId: renoteId),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/$id'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: id,
            ),
          );
        }
      case NotificationType.reaction:
        if (notification
            case INotificationsResponse(:final note?, :final reaction?)) {
          return _NotificationTile(
            account: account,
            user: notification.user,
            icon: EmojiWidget(
              account: account,
              emoji: reaction,
              emojis: {...note.emojis, ...note.reactionEmojis},
            ),
            subtitle: NoteSummary(account: account, noteId: note.id),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/${note.id}'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: note.id,
            ),
          );
        }
      case NotificationType.pollEnded:
        if (notification case INotificationsResponse(:final note?)) {
          return _NotificationTile(
            account: account,
            user: note.user,
            icon: const Icon(Icons.bar_chart),
            iconBackgroundColor: eventOther,
            title: Text(t.misskey.notification_.pollEnded),
            subtitle: NoteSummary(account: account, noteId: note.id),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/${note.id}'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: note.id,
            ),
          );
        }
      case NotificationType.receiveFollowRequest:
        if (notification case INotificationsResponse(:final user?)) {
          return _NotificationTile(
            account: account,
            user: user,
            icon: const Icon(Icons.schedule),
            iconBackgroundColor: eventFollow,
            subtitle: Text(t.misskey.receiveFollowRequest),
            actions: followRequests
                    .any((request) => request.follower.id == user.id)
                ? [
                    ElevatedButton(
                      onPressed: () => futureWithDialog(
                        context,
                        ref
                            .read(
                              followRequestsNotifierProvider(account).notifier,
                            )
                            .accept(user.id),
                      ),
                      child: Text(t.misskey.accept),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Theme.of(context).colorScheme.primary,
                        backgroundColor: Theme.of(context).colorScheme.surface,
                      ),
                      onPressed: () => futureWithDialog(
                        context,
                        ref
                            .read(
                              followRequestsNotifierProvider(account).notifier,
                            )
                            .reject(user.id),
                      ),
                      child: Text(t.misskey.reject),
                    ),
                  ]
                : null,
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/users/${user.id}'),
          );
        }
      case NotificationType.followRequestAccepted:
        if (notification case INotificationsResponse(:final user?)) {
          return _NotificationTile(
            account: account,
            user: user,
            icon: const Icon(Icons.check),
            iconBackgroundColor: eventFollow,
            subtitle: Text(t.misskey.followRequestAccepted),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/users/${user.id}'),
          );
        }
      case NotificationType.app:
        return _NotificationTile(
          account: account,
          leading: notification.icon != null
              ? ImageWidget(url: notification.icon.toString())
              : null,
          title: notification.header != null
              ? Text(notification.header!)
              : const SizedBox.shrink(),
          subtitle: notification.body != null ? Text(notification.body!) : null,
          createdAt: notification.createdAt,
        );
      case NotificationType.achievementEarned:
        return _NotificationTile(
          account: account,
          user: i,
          icon: const Icon(Icons.emoji_events),
          iconBackgroundColor: eventAchievement,
          title: Text(t.misskey.notification_.achievementEarned),
          subtitle:
              AchievementWidget(achievement: notification.achievement ?? ''),
          createdAt: notification.createdAt,
        );
      case NotificationType.test:
        return _NotificationTile(
          account: account,
          title: Text(t.misskey.notification_.testNotification),
          subtitle: Text(
            t.misskey.notification_.notificationWillBeDisplayedLikeThis,
          ),
          createdAt: notification.createdAt,
        );
      case NotificationType.note:
        if (notification case INotificationsResponse(:final note?)) {
          return _NotificationTile(
            account: account,
            user: note.user,
            title: Row(
              children: [
                Text('${t.misskey.notification_.newNote}: '),
                Expanded(
                  child: DefaultTextStyle.merge(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    child: UsernameWidget(account: account, user: note.user),
                  ),
                ),
              ],
            ),
            subtitle: NoteSummary(account: account, noteId: note.id),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/${note.id}'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: note.id,
            ),
          );
        }
      case NotificationType.roleAssigned:
        return _NotificationTile(
          account: account,
          user: i,
          icon: const Icon(Icons.workspace_premium),
          iconBackgroundColor: eventOther,
          title: Text(t.misskey.notification_.roleAssigned),
          subtitle: Text(notification.role?.name ?? ''),
          createdAt: notification.createdAt,
        );
      case NotificationType.reactionGrouped:
        if (notification case INotificationsResponse(:final note?)) {
          return _NotificationTile(
            account: account,
            leading: DecoratedBox(
              decoration: BoxDecoration(
                color: note.reactionAcceptance == ReactionAcceptance.likeOnly
                    ? eventReactionHeart
                    : eventReaction,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  note.reactionAcceptance == ReactionAcceptance.likeOnly
                      ? Icons.favorite
                      : Icons.add,
                  size: 34.0,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              note.reactionAcceptance == ReactionAcceptance.likeOnly
                  ? t.misskey.notification_.likedBySomeUsers(
                      n: notification.reactions
                              ?.map((reaction) => reaction.user.id)
                              .toSet()
                              .length ??
                          0,
                    )
                  : t.misskey.notification_.reactedBySomeUsers(
                      n: notification.reactions
                              ?.map((reaction) => reaction.user.id)
                              .toSet()
                              .length ??
                          0,
                    ),
            ),
            subtitle: NoteSummary(account: account, noteId: note.id),
            actions: notification.reactions
                ?.map(
                  (reaction) => Stack(
                    children: [
                      Tooltip(
                        richMessage: TextSpan(
                          children: [
                            ...buildUsername(
                              ref,
                              account: account,
                              user: reaction.user,
                              style: TextStyle(
                                color: switch (Theme.of(context).brightness) {
                                  Brightness.light => Colors.white,
                                  Brightness.dark => Colors.black,
                                },
                              ),
                            ),
                            TextSpan(
                              text: ' ${reaction.user.acct}',
                              style: TextStyle(
                                color: switch (Theme.of(context).brightness) {
                                  Brightness.light => Colors.white70,
                                  Brightness.dark => Colors.black54,
                                },
                              ),
                            ),
                          ],
                        ),
                        child: UserAvatar(
                          account: account,
                          user: reaction.user,
                          size: 50.0,
                          onTap: () => context
                              .push('/$account/users/${reaction.user.id}'),
                        ),
                      ),
                      if (note.reactionAcceptance !=
                          ReactionAcceptance.likeOnly)
                        Positioned(
                          right: 2.0,
                          bottom: 2.0,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: colors.bg,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: SizedBox(
                                width: 20,
                                child: EmojiWidget(
                                  account: account,
                                  emoji: reaction.reaction,
                                  emojis: {
                                    ...note.emojis,
                                    ...note.reactionEmojis,
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                )
                .toList(),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/${note.id}'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: note.id,
            ),
          );
        }
      case NotificationType.renoteGrouped:
        if (notification.note case Note(:final id, :final renoteId?)) {
          return _NotificationTile(
            account: account,
            leading: const DecoratedBox(
              decoration: BoxDecoration(
                color: eventRenote,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.repeat_rounded,
                  size: 34.0,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(
              t.misskey.notification_.renotedBySomeUsers(
                n: notification.users?.map((user) => user.id).toSet().length ??
                    0,
              ),
            ),
            subtitle: NoteSummary(account: account, noteId: renoteId),
            actions: notification.users
                ?.map(
                  (user) => Tooltip(
                    richMessage: TextSpan(
                      children: [
                        ...buildUsername(
                          ref,
                          account: account,
                          user: user,
                          style: TextStyle(
                            color: switch (Theme.of(context).brightness) {
                              Brightness.light => Colors.white,
                              Brightness.dark => Colors.black,
                            },
                          ),
                        ),
                        TextSpan(
                          text: ' ${user.acct}',
                          style: TextStyle(
                            color: switch (Theme.of(context).brightness) {
                              Brightness.light => Colors.white70,
                              Brightness.dark => Colors.black54,
                            },
                          ),
                        ),
                      ],
                    ),
                    child: UserAvatar(
                      account: account,
                      user: user,
                      size: 50.0,
                      onTap: () => context.push('/$account/users/${user.id}'),
                    ),
                  ),
                )
                .toList(),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/notes/$id'),
            onLongPress: () => showNoteSheet(
              context: context,
              account: account,
              noteId: id,
            ),
          );
        }
      // obsolete
      case NotificationType.pollVote || NotificationType.groupInvited || null:
    }
    return _NotificationTile(
      account: account,
      user: notification.user,
      subtitle: Text(notification.type.toString()),
      createdAt: notification.createdAt,
      onTap: switch (notification) {
        INotificationsResponse(:final noteId?) => () =>
            context.push('/$account/notes/$noteId'),
        INotificationsResponse(:final userId?) => () =>
            context.push('/$account/users/$userId'),
        _ => null,
      },
    );
  }
}

class _NotificationTile extends ConsumerWidget {
  const _NotificationTile({
    required this.account,
    this.user,
    this.icon,
    this.iconBackgroundColor,
    this.leading,
    this.title,
    this.subtitle,
    this.actions,
    this.createdAt,
    this.onTap,
    this.onLongPress,
  });

  final Account account;
  final User? user;
  final Widget? icon;
  final Color? iconBackgroundColor;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final List<Widget>? actions;
  final DateTime? createdAt;
  final void Function()? onTap;
  final void Function()? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (verticalPadding, horizontalPadding) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.noteVerticalPadding, settings.noteHorizontalPadding),
      ),
    );
    final avatarScale = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.avatarScale),
    );
    final leadingSize =
        DefaultTextStyle.of(context).style.lineHeight * avatarScale;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: horizontalPadding),
          if (leading case final leading?)
            Padding(
              padding: EdgeInsets.only(top: verticalPadding, right: 10.0),
              child: SizedBox(
                width: leadingSize,
                height: leadingSize,
                child: FittedBox(
                  child: leading,
                ),
              ),
            )
          else if (user != null)
            Padding(
              padding: EdgeInsets.only(
                top: verticalPadding,
                right: 10.0,
                bottom: verticalPadding,
              ),
              child: Stack(
                children: [
                  UserAvatar(
                    account: account,
                    user: user!,
                    size: leadingSize,
                    onTap: () => context.push('/$account/users/${user!.id}'),
                  ),
                  if (icon != null)
                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors.bg,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: iconBackgroundColor ?? colors.bg,
                              shape: BoxShape.circle,
                            ),
                            child: IconTheme.merge(
                              data: const IconThemeData(
                                size: 20.0,
                                color: Colors.white,
                              ),
                              child: SizedBox(
                                width: 20.0,
                                child: icon,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: verticalPadding),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: title ??
                            (user != null
                                ? UsernameWidget(
                                    account: account,
                                    user: user!,
                                    onTap: () => context
                                        .push('/$account/users/${user!.id}'),
                                  )
                                : const SizedBox.shrink()),
                      ),
                    ),
                    if (createdAt != null)
                      DefaultTextStyle.merge(
                        style: TextStyle(
                          fontSize: style.fontSize! * 0.85,
                          color: style.color?.withOpacity(0.8),
                        ),
                        child: TimeWidget(time: createdAt),
                      ),
                  ],
                ),
                const SizedBox(height: 4.0),
                DefaultTextStyle.merge(
                  style: TextStyle(
                    fontSize: style.fontSize! * 0.85,
                    color: style.color?.withOpacity(0.8),
                  ),
                  child: subtitle ?? const SizedBox.shrink(),
                ),
                if (actions != null) ...[
                  const SizedBox(height: 4.0),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: actions!,
                  ),
                ],
                SizedBox(height: verticalPadding),
              ],
            ),
          ),
          SizedBox(width: horizontalPadding),
        ],
      ),
    );
  }
}
