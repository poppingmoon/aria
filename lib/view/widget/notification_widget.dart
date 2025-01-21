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
import '../../util/format_datetime.dart';
import '../../util/future_with_dialog.dart';
import 'achievement_widget.dart';
import 'emoji_widget.dart';
import 'follow_button.dart';
import 'image_widget.dart';
import 'mfm.dart';
import 'note_sheet.dart';
import 'note_summary.dart';
import 'note_widget.dart';
import 'scheduled_note_summary.dart';
import 'time_widget.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';
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
    final avatarScale = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.avatarScale),
    );
    final style = DefaultTextStyle.of(context).style;
    final leadingSize = style.lineHeight * avatarScale;
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
            onLongPress: () => showUserSheet(
              context: context,
              account: account,
              userId: user.id,
            ),
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
              style: const TextStyle(fontSize: 18.0, height: 1.0),
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
            onLongPress: () => showUserSheet(
              context: context,
              account: account,
              userId: user.id,
            ),
          );
        }
      case NotificationType.followRequestAccepted:
        if (notification case INotificationsResponse(:final user?)) {
          return _NotificationTile(
            account: account,
            user: user,
            icon: const Icon(Icons.check),
            iconBackgroundColor: eventFollow,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(t.misskey.followRequestAccepted),
                const SizedBox(height: 4.0),
                if (notification.message case final message?)
                  Text(
                    message,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
              ],
            ),
            createdAt: notification.createdAt,
            onTap: () => context.push('/$account/users/${user.id}'),
            onLongPress: () => showUserSheet(
              context: context,
              account: account,
              userId: user.id,
            ),
          );
        }
      case NotificationType.app:
        if (notification
            case INotificationsResponse(
              :final icon,
              :final header,
              :final body,
            )) {
          return _NotificationTile(
            account: account,
            leading: icon != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: ImageWidget(
                      url: icon.toString(),
                      width: leadingSize,
                      height: leadingSize,
                      fit: BoxFit.cover,
                    ),
                  )
                : null,
            title: header != null ? Text(header) : const SizedBox.shrink(),
            subtitle: body != null ? Mfm(account: account, text: body) : null,
            createdAt: notification.createdAt,
          );
        }
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
          icon: notification.role?.iconUrl != null
              ? ImageWidget(url: notification.role!.iconUrl!.toString())
              : const Icon(Icons.workspace_premium),
          iconBackgroundColor: notification.icon == null ? eventOther : null,
          title: Text(t.misskey.notification_.roleAssigned),
          subtitle: Tooltip(
            message: notification.role?.description ?? '',
            child: Text(notification.role?.name ?? ''),
          ),
          createdAt: notification.createdAt,
          onTap: () => context.push('/$account/roles/${notification.role?.id}'),
        );
      case NotificationType.exportCompleted:
        return _NotificationTile(
          account: account,
          user: i,
          icon: const Icon(Icons.archive),
          iconBackgroundColor: eventOther,
          title: Text(
            t.misskey.notification_.exportOfXCompleted(
              x: switch (notification.exportedEntity) {
                UserExportableEntities.antenna => t.misskey.antennas,
                UserExportableEntities.blocking => t.misskey.blockedUsers,
                UserExportableEntities.clip => t.misskey.clips,
                UserExportableEntities.customEmoji => t.misskey.customEmojis,
                UserExportableEntities.favorite => t.misskey.favorites,
                UserExportableEntities.following => t.misskey.following,
                UserExportableEntities.muting => t.misskey.mutedUsers,
                UserExportableEntities.note => t.misskey.notes,
                UserExportableEntities.userList => t.misskey.lists,
                null => '',
              },
            ),
          ),
          subtitle: Text(t.misskey.showFile),
          createdAt: notification.createdAt,
          onTap: () {
            if (notification.fileId case final fileId?) {
              context.push('/$account/drive/file/$fileId');
            }
          },
        );
      case NotificationType.login:
        return _NotificationTile(
          account: account,
          user: i,
          icon: const Icon(Icons.login),
          iconBackgroundColor: eventLogin,
          title: Text(t.misskey.notification_.login),
          createdAt: notification.createdAt,
        );
      case NotificationType.noteScheduled:
        if (notification.draft case final draft?) {
          return _NotificationTile(
            account: account,
            user: i,
            icon: const Icon(Icons.schedule),
            iconBackgroundColor: eventOther,
            title: Text(t.aria.noteScheduled),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScheduledNoteSummary(account: account, note: draft),
                if (draft.scheduledAt case final scheduledAt?) ...[
                  const SizedBox(height: 4.0),
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.schedule,
                            size: style.lineHeight,
                            color: style.color?.withValues(alpha: 0.5),
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 4.0)),
                        TextSpan(text: absoluteTime(scheduledAt)),
                        TextSpan(text: ' (${relativeTime(scheduledAt)})'),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            createdAt: notification.createdAt,
          );
        }
      case NotificationType.scheduledNotePosted:
        if (notification.note case final note?) {
          return _NotificationTile(
            account: account,
            user: i,
            icon: const Icon(Icons.send),
            iconBackgroundColor: eventOther,
            title: Text(t.aria.scheduledNotePosted),
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
      case NotificationType.scheduleNote || NotificationType.scheduledNoteError:
        return _NotificationTile(
          account: account,
          user: i,
          icon: const Icon(Icons.error_outline),
          iconBackgroundColor: eventOther,
          title: Text(t.aria.scheduledNoteError),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (notification.draft case final draft?) ...[
                ScheduledNoteSummary(account: account, note: draft),
                const SizedBox(height: 4.0),
              ],
              if (notification
                  case INotificationsResponse(errorType: final reason?) ||
                      INotificationsResponse(
                        draft: ScheduledNote(:final reason?),
                      ))
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Icon(
                          Icons.error,
                          size: style.lineHeight,
                          color: style.color?.withValues(alpha: 0.5),
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 4.0)),
                      TextSpan(text: reason),
                    ],
                  ),
                ),
            ],
          ),
          createdAt: notification.createdAt,
        );
      case NotificationType.reactionGrouped:
        if (notification case INotificationsResponse(:final note?)) {
          return _NotificationTile(
            account: account,
            leading: DecoratedBox(
              decoration: BoxDecoration(
                color: note.reactionAcceptance == ReactionAcceptance.likeOnly
                    ? colors.love
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
                        richMessage: WidgetSpan(
                          child: UsernameWidget(
                            account: account,
                            user: reaction.user,
                            trailingSpans: [
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
                            style: TextStyle(
                              color: switch (Theme.of(context).brightness) {
                                Brightness.light => Colors.white,
                                Brightness.dark => Colors.black,
                              },
                            ),
                          ),
                        ),
                        child: UserAvatar(
                          account: account,
                          user: reaction.user,
                          size: leadingSize,
                          onTap: () => context
                              .push('/$account/users/${reaction.user.id}'),
                        ),
                      ),
                      if (note.reactionAcceptance !=
                          ReactionAcceptance.likeOnly)
                        PositionedDirectional(
                          end: 2.0,
                          bottom: 2.0,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: colors.bg,
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: SizedBox(
                                  width: 20.0,
                                  child: EmojiWidget(
                                    account: account,
                                    emoji: reaction.reaction,
                                    emojis: {
                                      ...note.emojis,
                                      ...note.reactionEmojis,
                                    },
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      height: 1.0,
                                    ),
                                  ),
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
                    richMessage: WidgetSpan(
                      child: UsernameWidget(
                        account: account,
                        user: user,
                        trailingSpans: [
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
                        style: TextStyle(
                          color: switch (Theme.of(context).brightness) {
                            Brightness.light => Colors.white,
                            Brightness.dark => Colors.black,
                          },
                        ),
                      ),
                    ),
                    child: UserAvatar(
                      account: account,
                      user: user,
                      size: leadingSize,
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
      case NotificationType.noteGrouped:
        if (notification
            case INotificationsResponse(:final users?, :final noteIds?)) {
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
                  Icons.edit,
                  size: 34.0,
                  color: Colors.white,
                ),
              ),
            ),
            title: Text(t.misskey.nNotes(n: noteIds.length)),
            actions: users
                .map(
                  (user) => Tooltip(
                    richMessage: WidgetSpan(
                      child: UsernameWidget(
                        account: account,
                        user: user,
                        trailingSpans: [
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
                        style: TextStyle(
                          color: switch (Theme.of(context).brightness) {
                            Brightness.light => Colors.white,
                            Brightness.dark => Colors.black,
                          },
                        ),
                      ),
                    ),
                    child: UserAvatar(
                      account: account,
                      user: user,
                      size: leadingSize,
                      onTap: () => context.push('/$account/users/${user.id}'),
                    ),
                  ),
                )
                .toList(),
            createdAt: notification.createdAt,
          );
        }
      case NotificationType.edited:
      // obsolete
      case NotificationType.pollVote || NotificationType.groupInvited || null:
    }
    return _NotificationTile(
      account: account,
      user: notification.user,
      subtitle: Text(notification.type?.name ?? t.misskey.unknown),
      actions: notification.users
          ?.map(
            (user) => Tooltip(
              richMessage: WidgetSpan(
                child: UsernameWidget(
                  account: account,
                  user: user,
                  trailingSpans: [
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
                  style: TextStyle(
                    color: switch (Theme.of(context).brightness) {
                      Brightness.light => Colors.white,
                      Brightness.dark => Colors.black,
                    },
                  ),
                ),
              ),
              child: UserAvatar(
                account: account,
                user: user,
                size: leadingSize,
                onTap: () => context.push('/$account/users/${user.id}'),
              ),
            ),
          )
          .toList(),
      createdAt: notification.createdAt,
      onTap: switch (notification) {
        INotificationsResponse(:final noteId?) => () =>
            context.push('/$account/notes/$noteId'),
        INotificationsResponse(:final userId?) => () =>
            context.push('/$account/users/$userId'),
        _ => null,
      },
      onLongPress: switch (notification) {
        INotificationsResponse(:final noteId?) => () => showNoteSheet(
              context: context,
              account: account,
              noteId: noteId,
            ),
        INotificationsResponse(:final userId?) => () => showUserSheet(
              context: context,
              account: account,
              userId: userId,
            ),
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
    final style = DefaultTextStyle.of(context).style;
    final leadingSize = style.lineHeight * avatarScale;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: horizontalPadding),
          if (leading case final leading?) ...[
            Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPadding),
              child: SizedBox(
                width: leadingSize,
                height: leadingSize,
                child: FittedBox(child: leading),
              ),
            ),
            const SizedBox(width: 8.0),
          ] else if (user case final user?) ...[
            Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPadding),
              child: Stack(
                children: [
                  UserAvatar(
                    account: account,
                    user: user,
                    size: leadingSize,
                    onTap: () => context.push('/$account/users/${user.id}'),
                  ),
                  if (icon case final icon?)
                    PositionedDirectional(
                      end: 0.0,
                      bottom: 0.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors.bg,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
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
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: verticalPadding),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: title ??
                            (user != null
                                ? InkWell(
                                    onTap: () => context
                                        .push('/$account/users/${user!.id}'),
                                    onLongPress: () => showUserSheet(
                                      context: context,
                                      account: account,
                                      userId: user!.id,
                                    ),
                                    child: UsernameWidget(
                                      account: account,
                                      user: user!,
                                    ),
                                  )
                                : null),
                      ),
                    ),
                    if (createdAt != null)
                      DefaultTextStyle.merge(
                        style: style.apply(
                          fontSizeFactor: 0.85,
                          color: style.color?.withValues(alpha: 0.8),
                        ),
                        child: TimeWidget(time: createdAt),
                      ),
                  ],
                ),
                const SizedBox(height: 4.0),
                if (subtitle case final subtitle?)
                  DefaultTextStyle.merge(
                    style: style.apply(
                      fontSizeFactor: 0.85,
                      color: style.color?.withValues(alpha: 0.8),
                    ),
                    child: subtitle,
                  ),
                if (actions case final actions?) ...[
                  const SizedBox(height: 4.0),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: actions,
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
