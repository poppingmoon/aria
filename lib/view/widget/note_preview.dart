import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/note_is_long_provider.dart';
import '../../provider/note_provider.dart';
import 'note_widget.dart';

class NotePreview extends ConsumerWidget {
  const NotePreview({
    super.key,
    required this.account,
    required this.note,
    this.expandOnTap,
    this.showFooter,
    this.onExpand,
  });

  final Account account;
  final Note note;
  final bool? expandOnTap;
  final bool? showFooter;
  final void Function(Note note)? onExpand;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reply = note.reply;
    final renote = note.renote;
    final poll = note.poll;

    return ProviderScope(
      key: ValueKey((account, reply, renote, poll)),
      overrides: [
        noteProvider(account, 'preview').overrideWithValue(note),
        if (reply != null)
          noteProvider(account, reply.id).overrideWithValue(reply),
        if (renote != null)
          noteProvider(account, renote.id).overrideWithValue(renote),
        appearNoteProvider(account, 'preview').overrideWithValue(note),
        noteIsLongProvider(account, 'preview').overrideWithValue(false),
      ],
      child: NoteWidget(
        account: account,
        noteId: 'preview',
        showDate: false,
        showFooter: false,
        onExpand: null,
        onLongPress: null,
      ),
    );
  }
}
