import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/account.dart';

part 'note_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class NoteNotifier extends _$NoteNotifier {
  @override
  Note? build(Account account, String noteId) {
    return null;
  }

  void updateNote(Note note) {
    assert(note.id == noteId);
    state = note;
  }
}
