import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'attached_notes_notifier_provider.g.dart';

@riverpod
class AttachedNotesNotifier extends _$AttachedNotesNotifier {
  @override
  FutureOr<PaginationState<Note>> build(
    Account account,
    String fileId,
  ) async {
    final response = await _fetchNotes();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes =
        await ref.read(misskeyProvider(account)).drive.files.attachedNotes(
              DriveFilesAttachedNotesRequest(fileId: fileId, untilId: untilId),
            );
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    return notes;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchNotes(untilId: value.items.lastOrNull?.id);
      if (response.any((note) => note.id == value.items.firstOrNull?.id)) {
        // Pagination was not supported for `drive/files/attached-notes`
        // until Misskey 2023.10.0.
        return value.copyWith(isLastLoaded: true);
      } else {
        return PaginationState(
          items: [...value.items, ...response],
          isLastLoaded: response.isEmpty,
        );
      }
    });
  }
}
