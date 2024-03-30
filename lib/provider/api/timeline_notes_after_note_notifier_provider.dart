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
  FutureOr<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? sinceId,
  }) async {
    if (sinceId != null) {
      final response = await _fetchNotes(sinceId);
      return PaginationState.fromIterable(response);
    } else {
      return PaginationState.fromIterable([]);
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Future<Iterable<Note>> _fetchNotesFromFanoutTimeline(String sinceId) async {
    // If we only specify `sinceId`, only notes cached on Redis will be returned.
    // So here we fetch api repeatedly with both `sinceDate` and `untilDate` to
    // get notes posted right after the specified note.
    final now = DateTime.now();
    int minutes = 1;
    DateTime sinceDate =
        Id.parse(sinceId).date.add(const Duration(milliseconds: 1));
    while (sinceDate.isBefore(now)) {
      final untilDate = sinceDate.add(Duration(minutes: minutes));
      final notes = await switch (tabSettings.tabType) {
        TabType.homeTimeline => _misskey.notes.homeTimeline(
            NotesTimelineRequest(
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
              withRenotes: tabSettings.withRenotes,
              withFiles: tabSettings.withFiles,
            ),
          ),
        TabType.localTimeline => _misskey.notes.localTimeline(
            NotesLocalTimelineRequest(
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
              withRenotes: tabSettings.withRenotes,
              withReplies: tabSettings.withReplies,
              withFiles: tabSettings.withFiles,
            ),
          ),
        TabType.hybridTimeline => _misskey.notes.hybridTimeline(
            NotesHybridTimelineRequest(
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
              withRenotes: tabSettings.withRenotes,
              withReplies: tabSettings.withReplies,
              withFiles: tabSettings.withFiles,
            ),
          ),
        TabType.userList => _misskey.notes.userListTimeline(
            UserListTimelineRequest(
              listId: tabSettings.listId!,
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
              withRenotes: tabSettings.withRenotes,
              withFiles: tabSettings.withFiles,
            ),
          ),
        TabType.channel => _misskey.channels.timeline(
            ChannelsTimelineRequest(
              channelId: tabSettings.channelId!,
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
            ),
          ),
        TabType.user => _misskey.users.notes(
            UsersNotesRequest(
              userId: tabSettings.userId!,
              sinceDate: sinceDate,
              untilDate: untilDate,
              limit: 100,
              withRenotes: tabSettings.withRenotes,
              withReplies: tabSettings.withReplies,
              withFiles: tabSettings.withFiles,
              withChannelNotes: true,
            ),
          ),
        _ => throw Error(),
      };
      if (notes.isNotEmpty) {
        ref
            .read(notesNotifierProvider(tabSettings.account).notifier)
            .addAll(notes);
        return notes;
      } else {
        minutes *= 2;
        sinceDate = untilDate;
      }
    }
    return [];
  }

  Future<Iterable<Note>> _fetchNotes(String sinceId) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline ||
      TabType.localTimeline ||
      TabType.hybridTimeline ||
      TabType.userList ||
      TabType.channel ||
      TabType.user =>
        _fetchNotesFromFanoutTimeline(sinceId),
      TabType.globalTimeline => _misskey.notes.globalTimeline(
          NotesGlobalTimelineRequest(
            sinceId: sinceId,
            withRenotes: tabSettings.withRenotes,
            withFiles: tabSettings.withFiles,
          ),
        ),
      TabType.roleTimeline => _misskey.roles.notes(
          RolesNotesRequest(
            roleId: tabSettings.roleId!,
            sinceId: sinceId,
          ),
        ),
      TabType.antenna => _misskey.antennas.notes(
          AntennasNotesRequest(
            antennaId: tabSettings.antennaId!,
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
    };
    ref.read(notesNotifierProvider(tabSettings.account).notifier).addAll(notes);
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
      final response = await _fetchNotes(value.items.first.id);
      return PaginationState(
        items: [...response, ...value.items],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  void addNote(Note note) {
    final value = state.valueOrNull;
    state = AsyncValue.data(
      PaginationState(
        items: [note, ...?value?.items],
        isLastLoaded: true,
      ),
    );
  }
}
