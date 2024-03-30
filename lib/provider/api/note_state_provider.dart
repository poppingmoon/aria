import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'note_state_provider.g.dart';

@riverpod
class NoteStateNotifier extends _$NoteStateNotifier {
  @override
  FutureOr<NotesStateResponse> build(
    Account account,
    String noteId,
  ) {
    return _misskey.notes.state(NotesStateRequest(noteId: noteId));
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> favorite() async {
    await _misskey.notes.favorites
        .create(NotesFavoritesCreateRequest(noteId: noteId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(value.copyWith(isFavorited: true));
    }
  }

  Future<void> unfavorite() async {
    await _misskey.notes.favorites
        .delete(NotesFavoritesDeleteRequest(noteId: noteId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(value.copyWith(isFavorited: false));
    }
  }

  Future<void> muteThread() async {
    await _misskey.notes.threadMuting
        .create(NotesThreadMutingCreateRequest(noteId: noteId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(value.copyWith(isMutedThread: true));
    }
  }

  Future<void> unmuteThread() async {
    await _misskey.notes.threadMuting
        .delete(NotesThreadMutingDeleteRequest(noteId: noteId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(value.copyWith(isMutedThread: false));
    }
  }
}
