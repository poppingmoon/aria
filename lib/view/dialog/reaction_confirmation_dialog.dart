import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../widget/emoji_widget.dart';
import '../widget/user_avatar.dart';

Future<bool> confirmReaction(
  BuildContext context, {
  required Account account,
  required String emoji,
  required Note note,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => ReactionConfirmationDialog(
      account: account,
      emoji: emoji,
      note: note,
    ),
  );
  return result ?? false;
}

class ReactionConfirmationDialog extends ConsumerWidget {
  const ReactionConfirmationDialog({
    super.key,
    required this.account,
    required this.emoji,
    required this.note,
  });

  final Account account;
  final String emoji;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;

    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (i != null)
            UserAvatar(
              account: account,
              user: i,
              size: 48.0,
              onTap: () => context.push('/$account/users/${i.id}'),
            ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_forward, size: 36.0),
          ),
          UserAvatar(
            account: account,
            user: note.user,
            size: 48.0,
            onTap: () => context.push('/$account/users/${note.userId}'),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          EmojiWidget(
            account: account,
            emoji: emoji,
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
          ),
          Text(t.aria.reactionConfirm),
        ],
      ),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () => context.pop(true),
          child: Text(t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(false),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
