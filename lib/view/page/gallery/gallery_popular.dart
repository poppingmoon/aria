import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/popular_gallery_posts_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/gallery_post_preview.dart';

class GalleryPopular extends ConsumerWidget {
  const GalleryPopular({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(popularGalleryPostsProvider(account));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(popularGalleryPostsProvider(account).future),
      child: switch (pages) {
        AsyncValue(valueOrNull: final posts?) =>
          posts.isEmpty
              ? LayoutBuilder(
                builder:
                    (context, constraint) => SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        height: constraint.maxHeight,
                        child: Center(child: Text(t.misskey.nothing)),
                      ),
                    ),
              )
              : ListView.builder(
                itemBuilder:
                    (context, index) => Center(
                      child: Container(
                        width: maxContentWidth,
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: index == 0 ? 8.0 : 4.0,
                          right: 8.0,
                          bottom: index == posts.length - 1 ? 120.0 : 4.0,
                        ),
                        child: GalleryPostPreview(
                          account: account,
                          post: posts[index],
                          onTap:
                              () => context.push(
                                '/$account/gallery/${posts[index].id}',
                              ),
                        ),
                      ),
                    ),
                itemCount: posts.length,
              ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              width: maxContentWidth,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
