import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'note_clips_notifier_provider.g.dart';

@riverpod
class NoteClipsNotifier extends _$NoteClipsNotifier {
  @override
  FutureOr<List<Clip>> build(Account account, String noteId) async {
    final response =
        await _misskey.notes.clips(NotesClipsRequest(noteId: noteId));
    return response.toList();
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> addClip(Clip clip) async {
    await _misskey.clips
        .addNote(ClipsAddNoteRequest(clipId: clip.id, noteId: noteId));
    state = AsyncValue.data([...?state.valueOrNull, clip]);
  }

  Future<void> removeClip(String clipId) async {
    await _misskey.clips
        .removeNote(ClipsRemoveNoteRequest(clipId: clipId, noteId: noteId));
    state = AsyncValue.data(
      [...?state.valueOrNull?.where((clip) => clip.id != clipId)],
    );
  }
}
