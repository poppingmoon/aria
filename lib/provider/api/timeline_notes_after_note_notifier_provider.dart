import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/id.dart';
import '../../model/pagination_state.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'timeline_notes_after_note_notifier_provider.g.dart';

@riverpod
class TimelineNotesAfterNoteNotifier extends _$TimelineNotesAfterNoteNotifier {
  @override
  Stream<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? sinceId,
  }) async* {
    if (sinceId != null) {
      final response = tabSettings.keepPosition
          ? await _fetchNotes(sinceId: sinceId)
          : await _fetchNotesEagerly(sinceId);
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 10) {
        await loadMore();
      }
    } else {
      yield const PaginationState(items: [], isLastLoaded: true);
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Duration _duration = const Duration(minutes: 1);

  Future<Iterable<Note>> _fetchNotesFromCustomTimeline(String? sinceId) async {
    final endpoint = tabSettings.endpoint;
    if (endpoint == null) {
      return [];
    }
    final response = await _misskey.apiService.post<List<dynamic>>(endpoint, {
      'sinceId': ?sinceId,
      'withRenotes': tabSettings.withRenotes,
      'withReplies': tabSettings.withReplies,
      'withFiles': tabSettings.withFiles,
      ...?tabSettings.parameters,
    });
    return response.map((e) => Note.fromJson(e as Map<String, dynamic>));
  }

  Future<Iterable<Note>> _fetchNotes({
    String? sinceId,
    DateTime? sinceDate,
    DateTime? untilDate,
    int? limit,
  }) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline => _misskey.notes.homeTimeline(
        NotesTimelineRequest(
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.localTimeline => _misskey.notes.localTimeline(
        NotesLocalTimelineRequest(
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.hybridTimeline => _misskey.notes.hybridTimeline(
        NotesHybridTimelineRequest(
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.globalTimeline => _misskey.notes.globalTimeline(
        NotesGlobalTimelineRequest(
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.roleTimeline => _misskey.roles.notes(
        RolesNotesRequest(
          roleId: tabSettings.roleId!,
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
        ),
      ),
      TabType.userList => _misskey.notes.userListTimeline(
        UserListTimelineRequest(
          listId: tabSettings.listId!,
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.antenna => _misskey.antennas.notes(
        AntennasNotesRequest(
          antennaId: tabSettings.antennaId!,
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
        ),
      ),
      TabType.channel => _misskey.channels.timeline(
        ChannelsTimelineRequest(
          channelId: tabSettings.channelId!,
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
        ),
      ),
      TabType.hashtag => _misskey.notes.searchByTag(
        NotesSearchByTagRequest(
          tag: tabSettings.hashtag!,
          sinceId: sinceId,
          limit: limit,
          reply: tabSettings.withReplies ? null : false,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.mention => _misskey.notes.mentions(
        NotesMentionsRequest(sinceId: sinceId, limit: limit),
      ),
      TabType.direct => _misskey.notes.mentions(
        NotesMentionsRequest(
          sinceId: sinceId,
          limit: limit,
          visibility: NoteVisibility.specified,
        ),
      ),
      TabType.user => _misskey.users.notes(
        UsersNotesRequest(
          userId: tabSettings.userId!,
          sinceId: sinceId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
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
    return (sinceId != null
            ? notes.where((note) => sinceId.compareTo(note.id) < 0)
            : notes)
        .sortedByCompare((note) => note.id, (a, b) => b.compareTo(a));
  }

  Future<Iterable<Note>> _fetchNotesEagerly(String sinceId) async {
    if (tabSettings.tabType
        case TabType.hashtag ||
            TabType.mention ||
            TabType.direct ||
            TabType.custom) {
      return _fetchNotes(sinceId: sinceId);
    }
    final id = Id.tryParse(sinceId);
    if (id == null) {
      return _fetchNotes(sinceId: sinceId);
    }
    DateTime sinceDate = id.date.add(const Duration(milliseconds: 1));
    while (sinceDate.isBefore(DateTime.now())) {
      final untilDate = sinceDate.add(_duration);
      final notes = await _fetchNotes(
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: 100,
      );
      if (notes.length < 5) {
        _duration *= 2;
      } else if (notes.length > 80) {
        _duration ~/= 2;
      }
      if (notes.isNotEmpty) {
        return notes.where((note) => sinceId.compareTo(note.id) < 0);
      } else {
        sinceDate = untilDate;
      }
    }
    return [];
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = tabSettings.keepPosition
          ? await _fetchNotes(sinceId: value.items.first.id)
          : await _fetchNotesEagerly(value.items.first.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...response, ...value.items],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
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
