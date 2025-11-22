import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/follow_requests_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class FollowRequestActionButton extends ConsumerWidget {
  const FollowRequestActionButton({
    super.key,
    required this.account,
    required this.user,
    required this.accept,
    this.onDone,
  });

  final Account account;
  final User user;
  final bool accept;
  final void Function()? onDone;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final theme = Theme.of(context);

    return ElevatedButton(
      style: accept
          ? null
          : ElevatedButton.styleFrom(
              foregroundColor: theme.colorScheme.primary,
              backgroundColor: theme.colorScheme.surface,
              side: BorderSide(color: theme.colorScheme.primary),
            ),
      onPressed: () async {
        if (ref.read(generalSettingsNotifierProvider).confirmBeforeFollow) {
          final confirmed = await confirm(
            context,
            title: accept
                ? Row(
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
                        child: Icon(Icons.arrow_back, size: 36.0),
                      ),
                      UserAvatar(
                        account: account,
                        user: user,
                        size: 48.0,
                        onTap: () => context.push('/$account/users/${user.id}'),
                      ),
                    ],
                  )
                : null,
            content: UsernameWidget(
              account: account,
              user: user,
              builder: (context, span) => Text.rich(
                accept
                    ? t.aria.acceptFollowRequestConfirm(name: span)
                    : t.aria.rejectFollowRequestConfirm(name: span),
              ),
            ),
            okText: accept ? t.misskey.accept : t.misskey.reject,
          );
          if (!confirmed) return;
          if (!context.mounted) return;
        }
        final result = await (accept
            ? futureWithDialog(
                context,
                ref
                    .read(followRequestsNotifierProvider(account).notifier)
                    .accept(user.id)
                    .then((_) => ()),
              )
            : futureWithDialog(
                context,
                ref
                    .read(followRequestsNotifierProvider(account).notifier)
                    .reject(user.id)
                    .then((_) => ()),
              ));
        if (result != null) {
          onDone?.call();
        }
      },
      child: Text(accept ? t.misskey.accept : t.misskey.reject),
    );
  }
}
