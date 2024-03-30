import 'package:flutter/material.dart' hide Clip;
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../util/format_datetime.dart';
import 'mfm.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class ClipPreview extends StatelessWidget {
  const ClipPreview({
    super.key,
    required this.account,
    required this.clip,
    this.onTap,
  });

  final Account account;
  final Clip clip;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(clip.name ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (clip case Clip(:final description?))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Mfm(
                account: account,
                text: description,
                simple: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          if (clip case Clip(:final lastClippedAt?))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                '${t.misskey.updatedAt}: ${absoluteTime(lastClippedAt)} (${relativeTime(lastClippedAt)})',
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              children: [
                UserAvatar(user: clip.user),
                const SizedBox(width: 2.0),
                Expanded(
                  child: UsernameWidget(account: account, user: clip.user),
                ),
              ],
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
