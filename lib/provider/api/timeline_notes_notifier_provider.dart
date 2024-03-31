import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    final response = await _fetchNotes(untilId: untilId);
    return PaginationState.fromIterable(response);
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline => _misskey.notes.homeTimeline(
          NotesTimelineRequest(
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withFiles: tabSettings.withFiles,
            allowPartial: true,
          ),
        ),
      TabType.localTimeline => _misskey.notes.localTimeline(
          NotesLocalTimelineRequest(
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withReplies: tabSettings.withReplies,
            withFiles: tabSettings.withFiles,
            allowPartial: true,
          ),
        ),
      TabType.hybridTimeline => _misskey.notes.hybridTimeline(
          NotesHybridTimelineRequest(
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withReplies: tabSettings.withReplies,
            withFiles: tabSettings.withFiles,
            allowPartial: true,
          ),
        ),
      TabType.globalTimeline => _misskey.notes.globalTimeline(
          NotesGlobalTimelineRequest(
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withFiles: tabSettings.withFiles,
          ),
        ),
      TabType.roleTimeline => _misskey.roles.notes(
          RolesNotesRequest(
            roleId: tabSettings.roleId!,
            untilId: untilId,
          ),
        ),
      TabType.userList => _misskey.notes.userListTimeline(
          UserListTimelineRequest(
            listId: tabSettings.listId!,
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withFiles: tabSettings.withFiles,
            allowPartial: true,
          ),
        ),
      TabType.antenna => _misskey.antennas.notes(
          AntennasNotesRequest(
            antennaId: tabSettings.antennaId!,
            untilId: untilId,
          ),
        ),
      TabType.channel => _misskey.channels.timeline(
          ChannelsTimelineRequest(
            channelId: tabSettings.channelId!,
            untilId: untilId,
            allowPartial: true,
          ),
        ),
      TabType.mention => _misskey.notes.mentions(
          NotesMentionsRequest(untilId: untilId),
        ),
      TabType.direct => _misskey.notes.mentions(
          NotesMentionsRequest(
            untilId: untilId,
            visibility: NoteVisibility.specified,
          ),
        ),
      TabType.user => _misskey.users.notes(
          UsersNotesRequest(
            userId: tabSettings.userId!,
            untilId: untilId,
            withRenotes: tabSettings.withRenotes,
            withReplies: tabSettings.withReplies,
            withFiles: tabSettings.withFiles,
            withChannelNotes: true,
            allowPartial: true,
          ),
        ),
      TabType.notifications => throw UnsupportedError(
          '_fetchNote() for TabType.notifications is not supported',
        ),
    };
    ref.read(notesNotifierProvider(tabSettings.account).notifier).addAll(notes);
    return notes;
  }

  Future<void> loadMore({
    bool skipError = false,
  }) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = state.hasError
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
