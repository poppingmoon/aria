import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'reactions_notifier_provider.g.dart';

@riverpod
class ReactionsNotifier extends _$ReactionsNotifier {
  @override
  FutureOr<PaginationState<NotesReactionsResponse>> build(
    Account account,
    String noteId,
    String reaction,
  ) async {
    final response = await _fetchReactions();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<NotesReactionsResponse>> _fetchReactions({
    String? untilId,
  }) async {
    return ref.read(misskeyProvider(account)).notes.reactions.reactions(
          NotesReactionsRequest(
            noteId: noteId,
            type: reaction,
            untilId: untilId,
            limit: 20,
          ),
        );
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
      final response =
          await _fetchReactions(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
