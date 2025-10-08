import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'search_notes_notifier_provider.g.dart';

@riverpod
class SearchNotesNotifier extends _$SearchNotesNotifier {
  @override
  Stream<PaginationState<Note>> build(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? sinceId,
    String? untilId,
  }) async* {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchNotes(untilId: untilId);
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 10) {
        await loadMore();
      }
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .notes
        .search(
          NotesSearchRequest(
            query: query,
            userId: userId,
            channelId: channelId,
            host: (localOnly ?? false) ? '.' : null,
            sinceId: sinceId,
            untilId: untilId,
          ),
        );
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    if (untilId != null) {
      return notes.where((note) => note.id.compareTo(untilId) < 0);
    } else {
      return notes;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchNotes(untilId: value.items.lastOrNull?.id);
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
