import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'user_featured_notes_notifier_provider.g.dart';

@riverpod
class UserFeaturedNotesNotifier extends _$UserFeaturedNotesNotifier {
  @override
  Stream<PaginationState<Note>> build(Account account, String userId) async* {
    final response = await _fetchNotes();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<Note>> _fetchNotes({String? untilId}) async {
    final notes = await ref
        .read(misskeyProvider(account))
        .users
        .featuredNotes(
          UsersFeaturedNotesRequest(userId: userId, untilId: untilId),
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
    final value = skipError ? state.valueOrNull! : await future;
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
