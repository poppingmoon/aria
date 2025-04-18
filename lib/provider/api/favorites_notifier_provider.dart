import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'favorites_notifier_provider.g.dart';

@riverpod
class FavoritesNotifier extends _$FavoritesNotifier {
  @override
  FutureOr<PaginationState<IFavoritesResponse>> build(Account account) async {
    final response = await _fetchFavorites();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<IFavoritesResponse>> _fetchFavorites({
    String? untilId,
  }) async {
    final favorites = await ref
        .read(misskeyProvider(account))
        .i
        .favorites(IFavoritesRequest(untilId: untilId));
    ref
        .read(notesNotifierProvider(account).notifier)
        .addAll(favorites.map((favorite) => favorite.note));
    return favorites;
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
      final response = await _fetchFavorites(
        untilId: value.items.lastOrNull?.id,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
