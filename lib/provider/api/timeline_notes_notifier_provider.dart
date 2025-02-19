import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/id.dart';
import '../../model/pagination_state.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'timeline_notes_notifier_provider.g.dart';

@riverpod
class TimelineNotesNotifier extends _$TimelineNotesNotifier {
  @override
  FutureOr<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? untilId,
  }) async {
    final response = await _fetchNotes(untilId: untilId, limit: 30);
    return PaginationState.fromIterable(response);
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Future<Iterable<Note>> _fetchNotesFromCustomTimeline({
    String? untilId,
    int? limit,
  }) async {
    final endpoint = tabSettings.endpoint;
    if (endpoint == null) {
      return [];
    }
    final response = await _misskey.apiService.post<List<dynamic>>(endpoint, {
      if (untilId != null) 'untilId': untilId,
      if (limit != null) 'limit': limit,
      'withRenotes': tabSettings.withRenotes,
      'withReplies': tabSettings.withReplies,
      'withFiles': tabSettings.withFiles,
      ...?tabSettings.parameters,
    });
    return response.map((e) => Note.fromJson(e as Map<String, dynamic>));
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId, int? limit}) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline => _misskey.notes.homeTimeline(
        NotesTimelineRequest(
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
          allowPartial: true,
        ),
      ),
      TabType.localTimeline => _misskey.notes.localTimeline(
        NotesLocalTimelineRequest(
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
          allowPartial: true,
        ),
      ),
      TabType.hybridTimeline => _misskey.notes.hybridTimeline(
        NotesHybridTimelineRequest(
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
          allowPartial: true,
        ),
      ),
      TabType.globalTimeline => _misskey.notes.globalTimeline(
        NotesGlobalTimelineRequest(
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.roleTimeline => _misskey.roles.notes(
        RolesNotesRequest(
          roleId: tabSettings.roleId!,
          untilId: untilId,
          limit: limit,
        ),
      ),
      TabType.userList => _misskey.notes.userListTimeline(
        UserListTimelineRequest(
          listId: tabSettings.listId!,
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
          allowPartial: true,
        ),
      ),
      TabType.antenna => _misskey.antennas.notes(
        AntennasNotesRequest(
          antennaId: tabSettings.antennaId!,
          untilId: untilId,
          limit: limit,
          pagination:
              untilId != null
                  ? Id.tryParse(untilId)?.date.millisecondsSinceEpoch.toString()
                  : null,
        ),
      ),
      TabType.channel => _misskey.channels.timeline(
        ChannelsTimelineRequest(
          channelId: tabSettings.channelId!,
          untilId: untilId,
          limit: limit,
          allowPartial: true,
        ),
      ),
      TabType.mention => _misskey.notes.mentions(
        NotesMentionsRequest(untilId: untilId, limit: limit),
      ),
      TabType.direct => _misskey.notes.mentions(
        NotesMentionsRequest(
          untilId: untilId,
          limit: limit,
          visibility: NoteVisibility.specified,
        ),
      ),
      TabType.user => _misskey.users.notes(
        UsersNotesRequest(
          userId: tabSettings.userId!,
          untilId: untilId,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withReplies: tabSettings.withReplies,
          withFiles: tabSettings.withFiles,
          withChannelNotes: true,
          allowPartial: true,
        ),
      ),
      TabType.notifications =>
        throw UnsupportedError(
          '_fetchNote() for TabType.notifications is not supported',
        ),
      TabType.custom => _fetchNotesFromCustomTimeline(untilId: untilId),
    };
    ref.read(notesNotifierProvider(tabSettings.account).notifier).addAll(notes);
    return notes;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value =
        state.hasError
            ? state.valueOrNull ?? const PaginationState()
            : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchNotes(untilId: value.items.lastOrNull?.id);
      return value.copyWith(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
