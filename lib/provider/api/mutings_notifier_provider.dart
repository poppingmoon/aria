import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'mutings_notifier_provider.g.dart';

@riverpod
class MutingsNotifier extends _$MutingsNotifier {
  @override
  Stream<PaginationState<Muting>> build(Account account) async* {
    final response = await _fetchMutings();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<Muting>> _fetchMutings({String? untilId}) async {
    final mutings = await _misskey.mute.list(MuteListRequest(untilId: untilId));
    if (untilId != null) {
      return mutings.where((muting) => muting.id.compareTo(untilId) < 0);
    } else {
      return mutings;
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
      final response = await _fetchMutings(untilId: value.items.lastOrNull?.id);
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

  Future<void> delete(String userId) async {
    await _misskey.mute.delete(MuteDeleteRequest(userId: userId));
    final value = state.value;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items: value.items
              .where((muting) => muting.muteeId != userId)
              .toList(),
        ),
      );
    }
  }
}
