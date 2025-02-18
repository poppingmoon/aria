import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'gallery_featured.dart';
import 'gallery_liked.dart';
import 'gallery_my.dart';
import 'gallery_popular.dart';
import 'gallery_recent.dart';

class GalleryPage extends ConsumerWidget {
  const GalleryPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3 + (account.isGuest ? 0 : 2),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.gallery),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.recentPosts),
              Tab(text: t.misskey.popularPosts),
              Tab(text: t.misskey.featured),
              if (!account.isGuest) ...[
                Tab(text: t.misskey.gallery_.my),
                Tab(text: t.misskey.gallery_.liked),
              ],
            ],
            isScrollable: !account.isGuest,
            tabAlignment: !account.isGuest ? TabAlignment.center : null,
          ),
        ),
        body: TabBarView(
          children: [
            GalleryRecent(account: account),
            GalleryPopular(account: account),
            GalleryFeatured(account: account),
            if (!account.isGuest) ...[
              GalleryMy(account: account),
              GalleryLiked(account: account),
            ],
          ],
        ),
        floatingActionButton:
            !account.isGuest
                ? FloatingActionButton(
                  tooltip: t.misskey.postToGallery,
                  onPressed: () => context.push('/$account/gallery/new'),
                  child: const Icon(Icons.add),
                )
                : null,
      ),
    );
  }
}
