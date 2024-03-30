import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/note_provider.dart';
import 'mfm.dart';

class NoteSummary extends ConsumerWidget {
  const NoteSummary({
    super.key,
    required this.account,
    required this.noteId,
    this.onTap,
  });

  final Account account;
  final String noteId;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    return InkWell(
      onTap: onTap,
      child: Mfm(
        account: account,
        text: [
          if (note.text != null) note.text!.replaceAll('\n', ' '),
          if (note.fileIds.isNotEmpty)
            '(${t.misskey.withNFiles(n: note.fileIds.length)})',
          if (note.poll != null) '(${t.misskey.poll})',
          if (note.replyId != null) 'RE: ...',
        ].join(' '),
        simple: true,
        emojis: note.emojis,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
