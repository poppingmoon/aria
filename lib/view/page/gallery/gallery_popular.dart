import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
      child: Center(
        child: switch (pages) {
          AsyncValue(valueOrNull: final posts?) => posts.isEmpty
              ? Text(t.misskey.nothing)
              : Container(
                  width: 800.0,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) => GalleryPostPreview(
                      account: account,
                      post: posts[index],
                      onTap: () =>
                          context.push('/$account/gallery/${posts[index].id}'),
                    ),
                    itemCount: posts.length,
                  ),
                ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
