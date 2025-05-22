import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'endpoints_provider.dart';
import 'i_notifier_provider.dart';
import 'misskey_provider.dart';

part 'scheduled_notes_notifier_provider.g.dart';

@riverpod
class ScheduledNotesNotifier extends _$ScheduledNotesNotifier {
  @override
  FutureOr<PaginationState<Note>> build(Account account) async {
    final response = await _fetchNotes();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId, int? offset}) async {
    try {
      final endpoints = await ref.read(endpointsProvider(account.host).future);
      if (endpoints.contains('notes/schedule/list')) {
        final response = await ref
            .read(misskeyProvider(account))
            .notes
            .schedule
            .list(NotesScheduleListRequest(untilId: untilId));
        final notes = await Future.wait(
          response.map((schedule) async {
            List<DriveFile> files = [];
            if (schedule.note.fileIds.isNotEmpty) {
              try {
                files = await Future.wait(
                  schedule.note.fileIds.map(
                    (fileId) => ref
                        .read(misskeyProvider(account))
                        .drive
                        .files
                        .show(DriveFilesShowRequest(fileId: fileId)),
                  ),
                );
              } catch (_) {}
            }
            return Note(
              id: schedule.id,
              createdAt: schedule.scheduledAt,
              text: schedule.note.text,
              user: schedule.note.user,
              userId: schedule.userId,
              visibility: schedule.note.visibility,
              files: files,
              fileIds: schedule.note.fileIds,
              reactionAcceptance: schedule.note.reactionAcceptance,
              visibleUserIds: schedule.note.visibleUsers
                  .map((user) => user.id)
                  .toList(),
            );
          }),
        );
        ref.read(notesNotifierProvider(account).notifier).addAll(notes);
        return notes;
      }
    } catch (_) {}

    final response = await ref
        .read(misskeyProvider(account))
        .notes
        .scheduled
        .list(NotesScheduledListRequest(offset: offset));
    final i = await ref.read(iNotifierProvider(account).future);
    final notes = response.map(
      (note) => Note(
        id: note.id,
        createdAt: note.scheduledAt ?? note.updatedAt,
        text: note.data.text,
        cw: note.data.cw,
        user: UserLite.fromJson(i!.toJson()),
        userId: i.id,
        visibility: note.data.visibility,
        localOnly: note.data.localOnly,
        fileIds: note.data.files.map((file) => file.id).toList(),
        files: note.data.files,
        replyId: note.reply?.id,
        renoteId: note.renote?.id,
        channelId: note.channel?.id,
        visibleUserIds: note.data.visibleUserIds,
        channel: note.channel,
        poll: note.data.poll,
      ),
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
      final response = await _fetchNotes(
        untilId: value.items.lastOrNull?.id,
        offset: value.items.length,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  Future<void> cancel(String noteId) async {
    try {
      final endpoints = await ref.read(endpointsProvider(account.host).future);
      if (endpoints.contains('notes/schedule/delete')) {
        await ref
            .read(misskeyProvider(account))
            .notes
            .schedule
            .delete(NotesScheduleDeleteRequest(noteId: noteId));
        final value = state.valueOrNull;
        if (value != null) {
          state = AsyncValue.data(
            value.copyWith(
              items: value.items.where((note) => note.id != noteId).toList(),
            ),
          );
        }
        ref.read(notesNotifierProvider(account).notifier).remove(noteId);
        return;
      }
    } catch (_) {}

    await ref
        .read(misskeyProvider(account))
        .notes
        .scheduled
        .cancel(NotesScheduledCancelRequest(draftId: noteId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items.where((note) => note.id != noteId).toList(),
        ),
      );
    }
    ref.read(notesNotifierProvider(account).notifier).remove(noteId);
  }
}
