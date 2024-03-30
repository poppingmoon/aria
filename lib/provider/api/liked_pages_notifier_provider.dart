import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'liked_pages_notifier_provider.g.dart';

@riverpod
class LikedPagesNotifier extends _$LikedPagesNotifier {
  @override
  FutureOr<PaginationState<IPageLikesResponse>> build(Account account) async {
    final response = await _fetchPages();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<IPageLikesResponse>> _fetchPages({String? untilId}) async {
    return ref
        .read(misskeyProvider(account))
        .i
        .pageLikes(IPageLikesRequest(untilId: untilId));
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
