import 'dart:async';

import 'package:collection/collection.dart';
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
  Stream<PaginationState<Note>> build(
    TabSettings tabSettings, {
    String? untilId,
  }) async* {
    final response = tabSettings.tabType == TabType.user
        ? untilId != null
              ? switch (Id.tryParse(untilId)?.date) {
                  final untilDate? => await _fetchNotesEagerly(
                    untilDate: untilDate,
                    limit: 30,
                  ),
                  _ => await _fetchNotes(untilId: untilId),
                }
              : await _fetchNotesEagerly(untilDate: DateTime.now(), limit: 30)
        : await _fetchNotes(untilId: untilId, limit: 30);
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(tabSettings.account));

  Future<Iterable<Note>> _fetchNotesFromCustomTimeline({
    String? untilId,
    DateTime? sinceDate,
    DateTime? untilDate,
    int? limit,
  }) async {
    final endpoint = tabSettings.endpoint;
    if (endpoint == null || endpoint.contains('//')) {
      return [];
    }
    final response = await _misskey.apiService.post<List<dynamic>>(endpoint, {
      'untilId': ?untilId,
      'sinceDate': ?sinceDate?.millisecondsSinceEpoch,
      'untilDate': ?untilDate?.millisecondsSinceEpoch,
      'limit': ?limit,
      'withRenotes': tabSettings.withRenotes,
      'withReplies': tabSettings.withReplies,
      'withFiles': tabSettings.withFiles,
      ...?tabSettings.parameters,
    });
    return response.map((e) => Note.fromJson(e as Map<String, dynamic>));
  }

  Future<Iterable<Note>> _fetchNotes({
    String? untilId,
    DateTime? sinceDate,
    DateTime? untilDate,
    int? limit,
  }) async {
    final notes = await switch (tabSettings.tabType) {
      TabType.homeTimeline => _misskey.notes.homeTimeline(
        NotesTimelineRequest(
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          withRenotes: tabSettings.withRenotes,
          withFiles: tabSettings.withFiles,
          allowPartial: true,
        ),
      ),
      TabType.localTimeline => _misskey.notes.localTimeline(
        NotesLocalTimelineRequest(
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
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
          sinceDate: sinceDate,
          untilDate: untilDate,
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
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
        ),
      ),
      TabType.userList => _misskey.notes.userListTimeline(
        UserListTimelineRequest(
          listId: tabSettings.listId!,
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
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
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          pagination: untilId != null
              ? Id.tryParse(untilId)?.date.millisecondsSinceEpoch.toString()
              : null,
        ),
      ),
      TabType.channel => _misskey.channels.timeline(
        ChannelsTimelineRequest(
          channelId: tabSettings.channelId!,
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          allowPartial: true,
        ),
      ),
      TabType.hashtag => _misskey.notes.searchByTag(
        NotesSearchByTagRequest(
          tag: tabSettings.hashtag!,
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          reply: tabSettings.withReplies ? null : false,
          withFiles: tabSettings.withFiles,
        ),
      ),
      TabType.mention => _misskey.notes.mentions(
        NotesMentionsRequest(
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
        ),
      ),
      TabType.direct => _misskey.notes.mentions(
        NotesMentionsRequest(
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
          visibility: NoteVisibility.specified,
        ),
      ),
      TabType.user => _misskey.users.notes(
        UsersNotesRequest(
          userId: tabSettings.userId!,
          untilId: untilId,
          sinceDate: sinceDate,
          untilDate: untilDate,
          limit: limit,
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
      TabType.custom => _fetchNotesFromCustomTimeline(
        untilId: untilId,
        sinceDate: sinceDate,
        untilDate: untilDate,
        limit: limit,
      ),
    };
    ref.read(notesNotifierProvider(tabSettings.account).notifier).addAll(notes);
    if (untilId != null) {
      return notes.where((note) => note.id.compareTo(untilId) < 0);
    } else if (untilDate != null) {
      return notes.where((note) => note.createdAt.isBefore(untilDate));
    } else {
      return notes;
    }
  }

  Future<Iterable<Note>> _fetchNotesEagerly({
    required DateTime untilDate,
    int? limit,
  }) async {
    final sinceDate = untilDate.subtract(const Duration(days: 100));
    final response = await _fetchNotes(
      sinceDate: sinceDate,
      untilDate: untilDate,
      limit: limit,
    );
    if (response.isNotEmpty) {
      return response;
    }
    return _fetchNotes(untilDate: sinceDate, limit: limit);
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = state.hasError
        ? state.value ?? const PaginationState()
        : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = tabSettings.tabType == TabType.user
          ? await _fetchNotesEagerly(untilDate: value.items.last.createdAt)
          : await _fetchNotes(untilId: value.items.lastOrNull?.id);
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }
}
