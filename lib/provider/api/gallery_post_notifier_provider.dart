import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'gallery_post_notifier_provider.g.dart';

@riverpod
class GalleryPostNotifier extends _$GalleryPostNotifier {
  @override
  FutureOr<GalleryPost> build(Account account, String postId) async {
    return _misskey.gallery.posts.show(GalleryPostsShowRequest(postId: postId));
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> like() async {
    await _misskey.gallery.posts.like(GalleryPostsLikeRequest(postId: postId));
    final page = await future;
    state = AsyncValue.data(
      page.copyWith(isLiked: true, likedCount: page.likedCount + 1),
    );
  }

  Future<void> unlike() async {
    await _misskey.gallery.posts
        .unlike(GalleryPostsUnlikeRequest(postId: postId));
    final page = await future;
    state = AsyncValue.data(
      page.copyWith(isLiked: false, likedCount: page.likedCount - 1),
    );
  }
}
