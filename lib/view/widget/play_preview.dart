import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import 'mfm.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class PlayPreview extends StatelessWidget {
  const PlayPreview({
    super.key,
    required this.account,
    required this.play,
    this.hideUserInfo = false,
    this.onTap,
  });

  final Account account;
  final Flash play;
  final bool hideUserInfo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(play.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (play.summary.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Mfm(
                account: account,
                text: play.summary,
                simple: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          if (!hideUserInfo)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                children: [
                  UserAvatar(account: account, user: play.user),
                  const SizedBox(width: 2.0),
                  Expanded(
                    child: UsernameWidget(account: account, user: play.user),
                  ),
                ],
              ),
            ),
        ],
      ),
      trailing: play.visibility == FlashVisibility.private
          ? Tooltip(
              message: t.misskey.private,
              child: const Icon(Icons.visibility_off),
            )
          : null,
      onTap: onTap,
    );
  }
}
