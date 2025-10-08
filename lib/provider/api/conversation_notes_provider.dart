import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'conversation_notes_provider.g.dart';

@riverpod
FutureOr<List<Note>> conversationNotes(
  Ref ref,
  Account account,
  String noteId,
) async {
  final notes = await ref
      .watch(misskeyProvider(account))
      .notes
      .conversation(NotesConversationRequest(noteId: noteId));
  ref.read(notesNotifierProvider(account).notifier).addAll(notes);
  return notes.toList();
}
