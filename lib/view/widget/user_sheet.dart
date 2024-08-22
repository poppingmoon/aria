import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../../util/open_as_guest.dart';
import '../dialog/antenna_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/list_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'account_preview.dart';
import 'user_preview.dart';

Future<void> showUserSheet({
  required BuildContext context,
  required Account account,
  required String userId,
  bool disableHeader = false,
}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => UserSheet(
      account: account,
      userId: userId,
      disableHeader: disableHeader,
    ),
    clipBehavior: Clip.antiAlias,
    isScrollControlled: true,
  );
}

class UserSheet extends ConsumerWidget {
  const UserSheet({
    super.key,
    required this.account,
    required this.userId,
    this.disableHeader = false,
  });

  final Account account;
  final String userId;
  final bool disableHeader;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user =
        ref.watch(userNotifierProvider(account, userId: userId)).valueOrNull;
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final remoteUrl = user?.uri ?? user?.url;
    final switchCandidateAccounts = ref
        .watch(accountsNotifierProvider)
        .where((acct) => acct != account)
        .toList();

    return DraggableScrollableSheet(
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) => ListView(
        controller: scrollController,
        children: [
          if (user == null)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            )
          else ...[
            UserPreview(
              account: account,
              user: user,
              onTap: !disableHeader
                  ? () => context.push('/$account/users/$userId')
                  : null,
            ),
            const Divider(height: 0.0),
            ListTile(
              leading: const Icon(Icons.copy),
              title: Text(t.aria.copyName),
              onTap: () {
                copyToClipboard(context, user.name ?? user.username);
                context.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.alternate_email),
              title: Text(t.misskey.copyUsername),
              onTap: () {
                copyToClipboard(context, user.acct);
                context.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: Text(t.misskey.copyProfileUrl),
              onTap: () {
                copyToClipboard(
                  context,
                  Uri.https(account.host, user.acct).toString(),
                );
                context.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.open_in_browser),
              title: Text(t.aria.openInBrowser),
              onTap: () {
                launchUrl(ref, Uri.https(account.host, user.acct));
                context.pop();
              },
            ),
            if (remoteUrl != null) ...[
              ListTile(
                leading: const Icon(Icons.rocket_launch),
                title: Text(t.misskey.showOnRemote),
                onTap: () {
                  launchUrl(ref, remoteUrl);
                  context.pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.open_in_new),
                title: Text(t.aria.openAsGuest),
                onTap: () =>
                    futureWithDialog(context, openUserAsGuest(ref, user)),
              ),
            ],
            if (user case User(:final host?))
              ListTile(
                leading: const Icon(Icons.dns),
                title: Text(t.misskey.instanceInfo),
                trailing: const Icon(Icons.navigate_next),
                onTap: () => context.push('/$account/servers/$host'),
              ),
            if (!account.isGuest)
              ListTile(
                leading: const Icon(Icons.mail),
                title: Text(t.misskey.sendMessage),
                onTap: () {
                  ref
                      .read(postNotifierProvider(account).notifier)
                      .addVisibleUser(user);
                  ref
                      .read(postNotifierProvider(account).notifier)
                      .setVisibility(NoteVisibility.specified);
                  context.push('/$account/post');
                },
              ),
            if (switchCandidateAccounts.isNotEmpty)
              ListTile(
                leading: const Icon(Icons.switch_account),
                title: Text(t.aria.openInAnotherAccount),
                onTap: () async {
                  final destination = await showDialog<Account>(
                    context: context,
                    builder: (context) => SimpleDialog(
                      title: Text(t.aria.openInAnotherAccount),
                      children: switchCandidateAccounts
                          .map(
                            (account) => AccountPreview(
                              account: account,
                              trailing: const Icon(Icons.navigate_next),
                              avatarSize: 40.0,
                              onTap: () => context.pop(account),
                            ),
                          )
                          .toList(),
                    ),
                  );
                  if (destination == null) return;
                  if (!context.mounted) return;
                  if (destination.host == account.host) {
                    await context.push('/$destination/users/$userId');
                  } else {
                    final userAsLocal = await futureWithDialog(
                      context,
                      ref.read(
                        userNotifierProvider(
                          destination,
                          username: user.username,
                          host: user.host ?? account.host,
                        ).future,
                      ),
                    );
                    if (!context.mounted || userAsLocal == null) return;
                    await context.push('/$destination/users/${userAsLocal.id}');
                  }
                },
              ),
            if ((i == null && (meta?.policies?.canSearchNotes ?? true)) ||
                (i != null && (i.policies?.canSearchNotes ?? true)))
              ListTile(
                leading: const Icon(Icons.search),
                title: Text(t.misskey.searchThisUsersNotes),
                onTap: () => context.push('/$account/search?userId=$userId'),
              ),
            if (!account.isGuest) ...[
              ListTile(
                leading: const Icon(Icons.edit),
                title: Text(t.misskey.editMemo),
                onTap: () async {
                  final memo = await showDialog<String>(
                    context: context,
                    builder: (context) => TextFieldDialog(
                      title: Text(t.misskey.editMemo),
                      initialText: user.memo,
                      maxLines: null,
                    ),
                  );
                  if (!context.mounted) return;
                  if (memo != null) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .updateMemo(memo),
                    );
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: Text(t.misskey.addToList),
                onTap: () => showDialog<void>(
                  context: context,
                  builder: (context) =>
                      ListDialog(account: account, userId: userId),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.settings_input_antenna),
                title: Text(t.misskey.addToAntenna),
                onTap: () => showDialog<void>(
                  context: context,
                  builder: (context) =>
                      AntennaDialog(account: account, user: user),
                ),
              ),
              if (user is UserDetailedNotMeWithRelations) ...[
                if (user.isFollowing) ...[
                  ListTile(
                    leading: Icon(
                      user.withReplies ?? true
                          ? Icons.comments_disabled
                          : Icons.message,
                    ),
                    title: Text(
                      user.withReplies ?? true
                          ? t.misskey.hideRepliesToOthersInTimeline
                          : t.misskey.showRepliesToOthersInTimeline,
                    ),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .updateWithReplies(!(user.withReplies ?? true)),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      user.notify == Notify.none
                          ? Icons.notifications
                          : Icons.notifications_off,
                    ),
                    title: Text(
                      user.notify == Notify.none
                          ? t.misskey.notifyNotes
                          : t.misskey.unnotifyNotes,
                    ),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .updateNotify(user.notify == Notify.none),
                    ),
                  ),
                ],
                if (user.isMuted)
                  ListTile(
                    leading: const Icon(Icons.visibility),
                    title: Text(t.misskey.unmute),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .unmute(),
                    ),
                  )
                else
                  ListTile(
                    leading: const Icon(Icons.visibility_off),
                    title: Text(t.misskey.mute),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .mute(),
                    ),
                  ),
                if (user.isRenoteMuted)
                  ListTile(
                    leading: const Icon(Icons.repeat_rounded),
                    title: Text(t.misskey.renoteUnmute),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .renoteUnmute(),
                    ),
                  )
                else
                  ListTile(
                    leading: const Icon(Icons.repeat_on_rounded),
                    title: Text(t.misskey.renoteMute),
                    onTap: () => futureWithDialog(
                      context,
                      ref
                          .read(
                            userNotifierProvider(account, userId: userId)
                                .notifier,
                          )
                          .renoteMute(),
                    ),
                  ),
                if (user.isBlocking)
                  ListTile(
                    leading: const Icon(Icons.block),
                    title: Text(t.misskey.unblock),
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.unblockConfirm,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                userNotifierProvider(account, userId: userId)
                                    .notifier,
                              )
                              .unblock(),
                        );
                      }
                    },
                  )
                else
                  ListTile(
                    leading: const Icon(Icons.block),
                    title: Text(t.misskey.block),
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.blockConfirm,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                userNotifierProvider(account, userId: userId)
                                    .notifier,
                              )
                              .block(),
                        );
                      }
                    },
                  ),
                if (user.isFollowed)
                  ListTile(
                    leading: const Icon(Icons.link_off),
                    title: Text(t.misskey.breakFollow),
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.breakFollowConfirm,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                userNotifierProvider(account, userId: userId)
                                    .notifier,
                              )
                              .invalidateFollow(),
                        );
                      }
                    },
                  ),
                ListTile(
                  leading: const Icon(Icons.report),
                  title: Text(t.misskey.reportAbuse),
                  onTap: () async {
                    final comment = await showTextFieldDialog(
                      context,
                      title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                      maxLines: null,
                    );
                    if (!context.mounted) return;
                    if (comment == null) return;
                    final confirmed = await confirm(
                      context,
                      title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                      message: comment,
                      okText: t.misskey.reportAbuse,
                    );
                    if (!context.mounted) return;
                    if (confirmed) {
                      await futureWithDialog(
                        context,
                        ref.read(misskeyProvider(account)).users.reportAbuse(
                              UsersReportAbuseRequest(
                                userId: userId,
                                comment: comment,
                              ),
                            ),
                      );
                    }
                  },
                ),
              ] else if (user is MeDetailed)
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: Text(t.misskey.editProfile),
                  onTap: () =>
                      context.push('/settings/accounts/$account/profile'),
                ),
            ],
          ],
        ],
      ),
    );
  }
}
