import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/user_gallery_posts_notifier_provider.dart';
import '../../widget/gallery_post_preview.dart';
import '../../widget/paginated_list_view.dart';

class UserGallery extends ConsumerWidget {
  const UserGallery({
    super.key,
    required this.account,
    required this.userId,
  });

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(userGalleryPostsNotifierProvider(account, userId));

    return PaginatedListView(
      paginationState: posts,
      itemBuilder: (context, post) => GalleryPostPreview(
        account: account,
        post: post,
        onTap: () => context.push('/$account/gallery/${post.id}'),
      ),
      onRefresh: () => ref.refresh(
        userGalleryPostsNotifierProvider(account, userId).future,
      ),
      loadMore: (skipError) => ref
          .read(
            userGalleryPostsNotifierProvider(account, userId).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.nothing,
    );
  }
}
