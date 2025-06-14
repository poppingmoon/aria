import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'my_gallery_posts_notifier_provider.g.dart';

@riverpod
class MyGalleryPostsNotifier extends _$MyGalleryPostsNotifier {
  @override
  Stream<PaginationState<GalleryPost>> build(Account account) async* {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final response = await _fetchPosts();
      yield PaginationState.fromIterable(response);
      if (response.isNotEmpty && response.length < 10) {
        await loadMore();
      }
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<GalleryPost>> _fetchPosts({String? untilId}) async {
    final posts = await _misskey.i.gallery.posts(
      IGalleryPostsRequest(limit: 100, untilId: untilId),
    );
    if (untilId != null) {
      return posts.where((post) => post.id.compareTo(untilId) < 0);
    } else {
      return posts;
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
      final response = await _fetchPosts(untilId: value.items.lastOrNull?.id);
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

  Future<void> create({
    required String title,
    String? description,
    required List<String> fileIds,
    bool? isSensitive,
  }) async {
    final post = await _misskey.gallery.posts.create(
      GalleryPostsCreateRequest(
        title: title,
        description: description,
        fileIds: fileIds,
        isSensitive: isSensitive,
      ),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(value.copyWith(items: [...value.items, post]));
  }

  Future<void> updatePost({
    required String postId,
    required String title,
    String? description,
    required List<String> fileIds,
    bool? isSensitive,
  }) async {
    final updated = await _misskey.gallery.posts.update(
      GalleryPostsUpdateRequest(
        postId: postId,
        title: title,
        description: description,
        fileIds: fileIds,
        isSensitive: isSensitive,
      ),
    );
    final value = state.valueOrNull ?? const PaginationState();
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map((post) => post.id == postId ? updated : post)
            .toList(),
      ),
    );
  }
}
