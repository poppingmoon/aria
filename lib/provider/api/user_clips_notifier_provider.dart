import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'user_clips_notifier_provider.g.dart';

@riverpod
class UserClipsNotifier extends _$UserClipsNotifier {
  @override
  FutureOr<PaginationState<Clip>> build(Account account, String userId) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchClips();
      return PaginationState.fromIterable(response);
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Future<Iterable<Clip>> _fetchClips({String? untilId}) {
    return ref
        .read(misskeyProvider(account))
        .users
        .clips(UsersClipsRequest(userId: userId, untilId: untilId));
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
      final response = await _fetchClips(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
