import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'renote_mutings_notifier_provider.g.dart';

@riverpod
class RenoteMutingsNotifier extends _$RenoteMutingsNotifier {
  @override
  FutureOr<PaginationState<RenoteMuting>> build(Account account) async {
    final response = await _fetchRenoteMutings();
    return PaginationState.fromIterable(response);
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<RenoteMuting>> _fetchRenoteMutings({String? untilId}) async {
    return await ref.read(misskeyProvider(account)).renoteMute.list(
          RenoteMuteListRequest(untilId: untilId),
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
          await _fetchRenoteMutings(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }

  Future<void> delete(String userId) async {
    await _misskey.renoteMute.delete(RenoteMuteDeleteRequest(userId: userId));
    final value = state.valueOrNull;
    if (value != null) {
      state = AsyncValue.data(
        value.copyWith(
          items:
              value.items.where((muting) => muting.muteeId != userId).toList(),
        ),
      );
    }
  }
}
