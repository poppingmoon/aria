import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'featured_plays_notifier_provider.g.dart';

@riverpod
class FeaturedPlaysNotifier extends _$FeaturedPlaysNotifier {
  @override
  Stream<PaginationState<Flash>> build(Account account) async* {
    final response = await _fetchPlays();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<Flash>> _fetchPlays({int? offset}) {
    return ref
        .read(misskeyProvider(account))
        .flash
        .featured(FlashFeaturedRequest(offset: offset));
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
      final response = await _fetchPlays(offset: value.items.length);
      if (response.any((play) => play.id == value.items.firstOrNull?.id)) {
        // Pagination for `flash/featured` was not supported
        // until Misskey 2024.10.0.
        return value.copyWith(isLastLoaded: true);
      } else {
        return PaginationState(
          items: [...value.items, ...response],
          isLastLoaded: response.isEmpty,
        );
      }
    });
  }
}
