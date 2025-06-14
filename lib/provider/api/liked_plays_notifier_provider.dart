import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'liked_plays_notifier_provider.g.dart';

@riverpod
class LikedPlaysNotifier extends _$LikedPlaysNotifier {
  @override
  Stream<PaginationState<FlashMyLikesResponse>> build(Account account) async* {
    final response = await _fetchPlays();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<FlashMyLikesResponse>> _fetchPlays({String? untilId}) async {
    final plays = await ref
        .read(misskeyProvider(account))
        .flash
        .myLikes(FlashMyLikesRequest(untilId: untilId));
    if (untilId != null) {
      return plays.where((play) => play.id.compareTo(untilId) < 0);
    } else {
      return plays;
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
      final response = await _fetchPlays(untilId: value.items.lastOrNull?.id);
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
