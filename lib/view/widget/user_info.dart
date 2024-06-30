import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/user_detailed_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import 'acct_widget.dart';
import 'mfm.dart';
import 'shake_widget.dart';
import 'user_avatar.dart';
import 'user_banner.dart';
import 'username_widget.dart';

class UserInfo extends ConsumerWidget {
  const UserInfo({
    super.key,
    required this.account,
    required this.user,
  });

  final Account account;
  final UserDetailed user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final squareAvatars = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.squareAvatars),
    );
    final style = DefaultTextStyle.of(context).style;

    return Card(
      color: Theme.of(context).colorScheme.surface,
      elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.push('/$account/users/${user.id}'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    UserBanner(account: account, user: user, height: 100.0),
                    Row(
                      children: [
                        const SizedBox(width: 100.0),
                        Expanded(
                          child: ListTile(
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: UsernameWidget(
                                account: account,
                                user: user,
                                style: style.apply(fontSizeFactor: 1.35),
                              ),
                            ),
                            subtitle: AcctWidget(account: account, user: user),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 16.0,
                  bottom: 8.0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4.0,
                        color: Theme.of(context).colorScheme.surface,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                      borderRadius:
                          BorderRadius.circular(squareAvatars ? 15.0 : 75.0),
                    ),
                    child: UserAvatar(
                      account: account,
                      user: user,
                      size: 75.0,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 0.0),
            if (user case UserDetailed(:final description?))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mfm(
                  account: account,
                  text: description,
                  emojis: user.emojis,
                  author: user,
                  isUserDescription: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  t.misskey.noAccountDescription,
                  style: TextStyle(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.8),
                  ),
                ),
              ),
            const Divider(height: 0.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          t.misskey.notes,
                          style: TextStyle(fontSize: style.fontSize! * 0.85),
                        ),
                        Text(
                          NumberFormat().format(user.notesCount),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: user.isFollowingVisibleForMe
                          ? () => context
                              .push('/$account/users/${user.id}/following')
                          : null,
                      child: Column(
                        children: [
                          Text(
                            t.misskey.following,
                            style: TextStyle(
                              fontSize: style.fontSize! * 0.85,
                            ),
                          ),
                          if (user.isFollowingVisibleForMe)
                            Text(
                              NumberFormat().format(user.followingCount),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          else
                            ShakeWidget(
                              child: Icon(
                                Icons.lock,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: user.isFollowersVisibleForMe
                          ? () => context
                              .push('/$account/users/${user.id}/followers')
                          : null,
                      child: Column(
                        children: [
                          Text(
                            t.misskey.followers,
                            style: TextStyle(
                              fontSize: style.fontSize! * 0.85,
                            ),
                          ),
                          if (user.isFollowersVisibleForMe)
                            Text(
                              NumberFormat().format(user.followersCount),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          else
                            ShakeWidget(
                              child: Icon(
                                Icons.lock,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
