import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/liked_gallery_posts_notifier_provider.dart';
import '../../widget/gallery_post_preview.dart';
import '../../widget/paginated_list_view.dart';

class GalleryLiked extends ConsumerWidget {
  const GalleryLiked({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likes = ref.watch(likedGalleryPostsNotifierProvider(account));

    return PaginatedListView(
      paginationState: likes,
      itemBuilder:
          (context, like) => GalleryPostPreview(
            account: account,
            post: like.post,
            onTap: () => context.push('/$account/gallery/${like.post.id}'),
          ),
      onRefresh:
          () => ref.refresh(likedGalleryPostsNotifierProvider(account).future),
      loadMore:
          (skipError) => ref
              .read(likedGalleryPostsNotifierProvider(account).notifier)
              .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
