import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import 'error_message.dart';

class NoteFallbackWidget extends ConsumerWidget {
  const NoteFallbackWidget({
    super.key,
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: Future(() async {
        final note = await ref
            .read(misskeyProvider(account))
            .notes
            .show(NotesShowRequest(noteId: noteId));
        ref.read(notesNotifierProvider(account).notifier).add(note);
      }),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorMessage(
            error: snapshot.error,
            stackTrace: snapshot.stackTrace,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
