import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'plays_notifier_provider.g.dart';

@riverpod
class PlaysNotifier extends _$PlaysNotifier {
  @override
  FutureOr<PaginationState<Flash>> build(Account account) async {
    final response = await _fetchPlays();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<Flash>> _fetchPlays({String? untilId}) async {
    final plays = await ref
        .read(misskeyProvider(account))
        .flash
        .my(FlashMyRequest(untilId: untilId));
    return plays;
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
      final response = await _fetchPlays(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
