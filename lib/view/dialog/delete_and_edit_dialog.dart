import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../util/future_with_dialog.dart';

class DeleteAndEditDialog extends ConsumerWidget {
  const DeleteAndEditDialog({
    super.key,
    required this.account,
    required this.note,
  });

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      content: Text(t.misskey.deleteAndEditConfirm),
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () async {
            ref.read(postNotifierProvider(account).notifier).fromNote(note);
            ref
                .read(attachesNotifierProvider(account).notifier)
                .addAll(
                  note.files.map((file) => DrivePostFile.fromDriveFile(file)),
                );
            final deleted = await futureWithDialog(
              context,
              ref
                  .read(misskeyProvider(account))
                  .notes
                  .delete(NotesDeleteRequest(noteId: note.id))
                  .then((_) => true),
            );
            if (!(deleted ?? false)) return;
            if (!context.mounted) return;
            ref.read(notesNotifierProvider(account).notifier).remove(note.id);
            context.pop();
            await context.push('/$account/post');
          },
          child: Text(t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
