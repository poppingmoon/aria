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
  FutureOr<PaginationState<Note>> build(
    Account account,
    String query, {
    String? userId,
    String? channelId,
    bool? localOnly,
    String? sinceId,
    String? untilId,
  }) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchNotes(untilId: untilId);
      return PaginationState.fromIterable(response);
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
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
