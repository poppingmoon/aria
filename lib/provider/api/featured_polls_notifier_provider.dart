import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'featured_polls_notifier_provider.g.dart';

@riverpod
class FeaturedPollsNotifier extends _$FeaturedPollsNotifier {
  @override
  Stream<PaginationState<Note>> build(
    Account account, {
    String? channelId,
  }) async* {
    final response = await _fetchNotes();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<Note>> _fetchNotes({int? offset}) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .notes
        .polls
        .recommendation(NotesPollsRecommendationRequest(offset: offset));
    ref.read(notesNotifierProvider(account).notifier).addAll(notes);
    return notes;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchNotes(offset: value.items.length);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
