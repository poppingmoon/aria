import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class FollowButton extends HookConsumerWidget {
  const FollowButton({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user =
        ref.watch(userNotifierProvider(account, userId: userId)).valueOrNull;
    if (user is! UserDetailedNotMeWithRelations) {
      return const SizedBox.shrink();
    }
    if (user.hasPendingFollowRequestFromYou) {
      return ElevatedButton(
        onPressed: () async {
          await futureWithDialog(
            context,
            ref
                .read(userNotifierProvider(account, userId: userId).notifier)
                .cancelFollowRequest(),
          );
        },
        child: Text(
          user.isLocked ? t.misskey.followRequestPending : t.misskey.processing,
        ),
      );
    } else if (user.isFollowing) {
      return ElevatedButton(
        onPressed: () async {
          final confirmed = await confirm(
            context,
            content: UsernameWidget(
              account: account,
              user: user,
              builder:
                  (context, span) =>
                      Text.rich(t.aria.unfollowConfirm(name: span)),
            ),
          );
          if (!context.mounted) return;
          if (confirmed) {
            await futureWithDialog(
              context,
              ref
                  .read(userNotifierProvider(account, userId: userId).notifier)
                  .unfollow(),
            );
          }
        },
        child: Text(t.misskey.unfollow),
      );
    } else {
      final i = ref.watch(iNotifierProvider(account)).valueOrNull;

      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.primary,
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        onPressed: () async {
          if (ref.read(generalSettingsNotifierProvider).confirmBeforeFollow) {
            final confirmed = await confirm(
              context,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (i != null)
                    UserAvatar(
                      account: account,
                      user: i,
                      size: 48.0,
                      onTap: () => context.push('/$account/users/${i.id}'),
                    )
                  else
                    const Icon(Icons.person, size: 48.0),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward, size: 36.0),
                  ),
                  UserAvatar(
                    account: account,
                    user: user,
                    size: 48.0,
                    onTap: () => context.push('/$account/users/$userId'),
                  ),
                ],
              ),
              content: UsernameWidget(
                account: account,
                user: user,
                builder:
                    (context, span) =>
                        Text.rich(t.aria.followConfirm(name: span)),
              ),
              okText:
                  user.isLocked ? t.misskey.followRequest : t.misskey.follow,
            );
            if (!confirmed) return;
          }
          if (!context.mounted) return;
          await futureWithDialog(
            context,
            ref
                .read(userNotifierProvider(account, userId: userId).notifier)
                .follow(),
          );
        },
        child: Text(user.isLocked ? t.misskey.followRequest : t.misskey.follow),
      );
    }
  }
}
