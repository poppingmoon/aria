import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';
import 'notes_notifier_provider.dart';

part 'note_is_deleted_provider.g.dart';

@riverpod
bool noteIsDeleted(NoteIsDeletedRef ref, Account account, String noteId) {
  return ref.watch(
    notesNotifierProvider(account)
        .select((notes) => notes.containsKey(noteId) && notes[noteId] == null),
  );
}
