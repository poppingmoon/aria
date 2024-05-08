import 'package:flutter/material.dart' hide Clip;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../util/format_datetime.dart';
import 'mfm.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class ClipPreview extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;

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
          if (clip case Clip(:final notesCount?))
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                [
                  '${t.misskey.notesCount}: ',
                  NumberFormat().format(notesCount),
                  if (i?.policies
                      case UserPolicies(:final noteEachClipsLimit)) ...[
                    ' / ',
                    NumberFormat().format(noteEachClipsLimit.toInt()),
                    ' (',
                    t.misskey
                        .remainingN(n: noteEachClipsLimit.toInt() - notesCount),
                    ')',
                  ],
                ].join(),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              children: [
                UserAvatar(account: account, user: clip.user),
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
