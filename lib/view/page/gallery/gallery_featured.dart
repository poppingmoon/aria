import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_gallery_posts_notifier_provider.dart';
import '../../widget/gallery_post_preview.dart';
import '../../widget/paginated_list_view.dart';

class GalleryFeatured extends ConsumerWidget {
  const GalleryFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(featuredGalleryPostsNotifierProvider(account));

    return PaginatedListView(
      paginationState: posts,
      itemBuilder: (context, post) => GalleryPostPreview(
        account: account,
        post: post,
        onTap: () => context.push('/$account/gallery/${post.id}'),
      ),
      onRefresh: () =>
          ref.refresh(featuredGalleryPostsNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(featuredGalleryPostsNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      showDivider: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
