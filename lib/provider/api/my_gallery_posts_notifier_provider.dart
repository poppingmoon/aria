import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'my_gallery_posts_notifier_provider.g.dart';

@riverpod
class MyGalleryPostsNotifier extends _$MyGalleryPostsNotifier {
  @override
  FutureOr<PaginationState<GalleryPost>> build(Account account) async {
    final response = await _fetchPosts();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<GalleryPost>> _fetchPosts({String? untilId}) async {
    final posts = await ref
        .read(misskeyProvider(account))
        .i
        .gallery
        .posts(IGalleryPostsRequest(untilId: untilId));
    return posts;
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
      final response = await _fetchPosts(untilId: value.items.lastOrNull?.id);
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
