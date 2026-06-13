import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../extension/me_detailed_extension.dart';
import '../../model/account.dart';
import '../../model/id.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'endpoints_notifier_provider.dart';
import 'i_notifier_provider.dart';
import 'misskey_provider.dart';

part 'scheduled_notes_notifier_provider.g.dart';

@riverpod
class ScheduledNotesNotifier extends _$ScheduledNotesNotifier {
  @override
  Stream<PaginationState<NoteDraft>> build(Account account) async* {
    final response = await _fetchDrafts();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<List<String>> _getEndpoints() async {
    try {
      final endpoints = await ref.read(
        endpointsNotifierProvider(account.host).future,
      );
      return endpoints;
    } catch (_) {
      return [];
    }
  }

  Future<Iterable<NoteDraft>> _fetchDrafts({
    String? untilId,
    int? offset,
  }) async {
    final endpoints = await _getEndpoints();
    if (endpoints.contains('notes/schedule/list')) {
      final response = await _misskey.notes.schedule.list(
        NotesScheduleListRequest(untilId: untilId),
      );
      return Future.wait(
        response
            .where(
              (schedule) =>
                  untilId == null || schedule.id.compareTo(untilId) < 0,
            )
            .map((schedule) async {
              List<DriveFile> files = [];
              if (schedule.note.fileIds.isNotEmpty) {
                try {
                  files = await Future.wait(
                    schedule.note.fileIds.map(
                      (fileId) => _misskey.drive.files.show(
                        DriveFilesShowRequest(fileId: fileId),
                      ),
                    ),
                  );
                } catch (_) {}
              }
              return NoteDraft(
                id: schedule.id,
                createdAt:
                    Id.tryParse(schedule.id)?.date ?? schedule.scheduledAt,
                text: schedule.note.text,
                cw: schedule.note.cw,
                userId: schedule.userId,
                user: schedule.note.user,
                visibility: schedule.note.visibility,
                visibleUserIds: schedule.note.visibleUsers
                    .map((user) => user.id)
                    .toList(),
                fileIds: schedule.note.fileIds,
                files: files,
                reactionAcceptance: schedule.note.reactionAcceptance,
                scheduledAt: schedule.scheduledAt,
                isActuallyScheduled: true,
              );
            }),
      );
    } else if (endpoints.contains('notes/scheduled/list')) {
      final response = await _misskey.notes.scheduled.list(
        NotesScheduledListRequest(offset: offset),
      );
      MeDetailed? i;
      try {
        i = await ref.read(iNotifierProvider(account).future);
      } catch (_) {}
      return response.map(
        (note) => NoteDraft(
          id: note.id,
          createdAt: note.updatedAt,
          text: note.data.text,
          cw: note.data.cw,
          userId: i?.id ?? '',
          user: i?.toUserLite() ?? const UserLite(id: '', username: ''),
          replyId: note.reply?.id,
          renoteId: note.renote?.id,
          visibility: note.data.visibility,
          visibleUserIds: note.data.visibleUserIds,
          fileIds: note.data.files.map((file) => file.id).toList(),
          files: note.data.files,
          poll: switch (note.data.poll) {
            NotePoll(:final multiple, :final expiresAt, :final choices) =>
              NoteDraftPoll(
                multiple: multiple,
                expiresAt: expiresAt,
                choices: choices.map((choice) => choice.text).toList(),
              ),
            null => null,
          },
          channelId: note.channel?.id,
          channel: note.channel,
          localOnly: note.data.localOnly,
          scheduledAt: note.scheduledAt,
          isActuallyScheduled: true,
        ),
      );
    } else {
      final drafts = await _misskey.notes.drafts.list(
        NotesDraftsListRequest(untilId: untilId, scheduled: true),
      );
      ref.read(notesNotifierProvider(account).notifier).addAll([
        for (final draft in drafts) ...[?draft.reply, ?draft.renote],
      ]);
      if (untilId != null) {
        return drafts.where((draft) => draft.id.compareTo(untilId) < 0);
      } else {
        return drafts;
      }
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value : await future;
    if (value?.isLastLoaded ?? false) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchDrafts(
        untilId: value?.items.lastOrNull?.id,
        offset: value?.items.length,
      );
      return PaginationState(
        items: [...?value?.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  Future<void> delete(String draftId) async {
    final endpoints = await _getEndpoints();
    if (endpoints.contains('notes/schedule/delete')) {
      await _misskey.notes.schedule.delete(
        NotesScheduleDeleteRequest(noteId: draftId),
      );

      return;
    } else if (endpoints.contains('notes/scheduled/cancel')) {
      await _misskey.notes.scheduled.cancel(
        NotesScheduledCancelRequest(draftId: draftId),
      );
    } else {
      await _misskey.notes.drafts.delete(
        NotesDraftsDeleteRequest(draftId: draftId),
      );
    }
    final value = state.value;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items.where((draft) => draft.id != draftId).toList(),
        ),
      );
    }
  }

  Future<void> cancel(String draftId) async {
    await _misskey.apiService.post<void>('notes/drafts/update', {
      'draftId': draftId,
      'scheduledAt': null,
      'isActuallyScheduled': false,
    }, excludeRemoveNullPredicate: (_, _) => true);
    final value = state.value;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items.where((draft) => draft.id != draftId).toList(),
        ),
      );
    }
  }
}
