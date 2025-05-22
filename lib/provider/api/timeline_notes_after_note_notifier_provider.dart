import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/pagination_state.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'timeline_notes_after_note_notifier_provider.g.dart';

@riverpod
class TimelineNotesAfterNoteNotifier extends _$TimelineNotesAfterNoteNotifier {
  @override
  FutureOr<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? sinceId,
  }) async {
    if (sinceId != null) {
      final response = await _fetchNotes(sinceId);
      return PaginationState.fromIterable(response);
    } else {
      return const PaginationState(items: [], isLastLoaded: true);
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Future<Iterable<Note>> _fetchNotesFromCustomTimeline(String sinceId) async {
    final endpoint = tabSettings.endpoint;
    if (endpoint == null) {
      return [];
    }
    final response = await _misskey.apiService.post<List<dynamic>>(endpoint, {
      'sinceId': sinceId,
      'withRenotes': tabSettings.withRenotes,
      'withReplies': tabSettings.withReplies,
      'withFiles': tabSettings.withFiles,
      ...?tabSettings.parameters,
    });
    return response.map((e) => Note.fromJson(e as Map<String, dynamic>));
  }

  Future<Iterable<Note>> _fetchNotes(String sinceId) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline => _misskey.notes.homeTimeline(
        NotesTimelineRequest(
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.localTimeline => _misskey.notes.localTimeline(
        NotesLocalTimelineRequest(
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.hybridTimeline => _misskey.notes.hybridTimeline(
        NotesHybridTimelineRequest(
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.globalTimeline => _misskey.notes.globalTimeline(
        NotesGlobalTimelineRequest(
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.roleTimeline => _misskey.roles.notes(
        RolesNotesRequest(roleId: tabSettings.roleId!, sinceId: sinceId),
      ),
      TabType.userList => _misskey.notes.userListTimeline(
        UserListTimelineRequest(
          listId: tabSettings.listId!,
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.antenna => _misskey.antennas.notes(
        AntennasNotesRequest(
          antennaId: tabSettings.antennaId!,
          sinceId: sinceId,
        ),
      ),
      TabType.channel => _misskey.channels.timeline(
        ChannelsTimelineRequest(
          channelId: tabSettings.channelId!,
          sinceId: sinceId,
        ),
      ),
      TabType.mention => _misskey.notes.mentions(
        NotesMentionsRequest(sinceId: sinceId),
      ),
      TabType.direct => _misskey.notes.mentions(
        NotesMentionsRequest(
          sinceId: sinceId,
          visibility: NoteVisibility.specified,
        ),
      ),
      TabType.user => _misskey.users.notes(
        UsersNotesRequest(
          userId: tabSettings.userId!,
          sinceId: sinceId,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
          withChannelNotes: true,
        ),
      ),
      TabType.notifications => throw UnsupportedError(
        '_fetchNote() for TabType.notifications is not supported',
      ),
      TabType.custom => _fetchNotesFromCustomTimeline(sinceId),
    };
    ref.read(notesNotifierProvider(tabSettings.account).notifier).addAll(notes);
    return notes.sortedBy((note) => note.id).reversed;
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
      final response = await _fetchNotes(value.items.first.id);
      return PaginationState(
        items: [...response, ...value.items],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  void addNote(Note note) {
    final value = state.valueOrNull;
    if (value?.items.firstOrNull?.id != note.id) {
      state = AsyncValue.data(
        PaginationState(
          items: [note, ...?value?.items],
          isLastLoaded: value?.isLastLoaded ?? false,
        ),
      );
    }
  }
}
