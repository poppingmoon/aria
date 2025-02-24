import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'user_pages_notifier_provider.g.dart';

@riverpod
class UserPagesNotifier extends _$UserPagesNotifier {
  @override
  FutureOr<PaginationState<Page>> build(Account account, String userId) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchPages();
      return PaginationState.fromIterable(response);
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Future<Iterable<Page>> _fetchPages({String? untilId}) {
    return ref
        .read(misskeyProvider(account))
        .users
        .pages(UsersPagesRequest(userId: userId, untilId: untilId));
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
      final response = await _fetchPages(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
