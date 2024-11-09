import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
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

  String getNoteSummary(
    BuildContext context,
    Note note, {
    bool detailed = true,
  }) {
    return [
      if (note.cw case final cw?)
        cw
      else if (note.text case final text?)
        text.replaceAll('\n', ' '),
      if (note.fileIds.isNotEmpty)
        '(${t.misskey.withNFiles(n: note.fileIds.length)})',
      if (note.poll != null) '(${t.misskey.poll})',
      if (note.replyId != null)
        if (note.reply case final reply? when detailed)
          'RE: ${getNoteSummary(context, reply, detailed: false)}'
        else
          'RE: ...',
      if (note.renoteId != null)
        if (note.renote case final renote? when detailed)
          'RE: ${getNoteSummary(context, renote, detailed: false)}'
        else
          'RE: ...',
    ].join(' ');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return FutureBuilder(
        future: ref.read(notesNotifierProvider(account).notifier).show(noteId),
        builder: (context, snapshot) => const SizedBox.shrink(),
      );
    }
    return InkWell(
      onTap: onTap,
      child: Mfm(
        account: account,
        text: getNoteSummary(context, note),
        simple: true,
        emojis: note.emojis,
        author: note.user,
        nyaize: true,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
