import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/gallery_post_notifier_provider.dart';
import '../../../provider/api/post_notifier_provider.dart';
import '../../../provider/api/user_gallery_posts_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../dialog/image_gallery_dialog.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/follow_button.dart';
import '../../widget/gallery_post_preview.dart';
import '../../widget/image_widget.dart';
import '../../widget/like_button.dart';
import '../../widget/mfm.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_tile.dart';

class GalleryPostPage extends ConsumerWidget {
  const GalleryPostPage({
    super.key,
    required this.account,
    required this.postId,
  });

  final Account account;
  final String postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final post = ref.watch(galleryPostNotifierProvider(account, postId));
    final url = Uri.https(account.host, 'gallery/$postId');

    return Scaffold(
      appBar: AppBar(
        title: Text(post.valueOrNull?.title ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder: (context) => [
              if (!account.isGuest) ...[
                if (post.valueOrNull?.user.username == account.username)
                  PopupMenuItem(
                    onTap: () => context.push('/$account/gallery/$postId/edit'),
                    child: Text(t.misskey.edit),
                  ),
                PopupMenuItem(
                  onTap: () {
                    ref
                        .read(
                          postNotifierProvider(account).notifier,
                        )
                        .setText('${post.valueOrNull?.title} $url');
                    context.push('/$account/post');
                  },
                  child: Text(t.misskey.shareWithNote),
                ),
              ],
              PopupMenuItem(
                onTap: () => copyToClipboard(context, url.toString()),
                child: Text(t.misskey.copyLink),
              ),
              PopupMenuItem(
                onTap: () => launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                ),
                child: Text(t.aria.openInBrowser),
              ),
              PopupMenuItem(
                onTap: () => Share.share('${post.valueOrNull?.title} $url'),
                child: Text(t.misskey.share),
              ),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          galleryPostNotifierProvider(account, postId).future,
        ),
        child: switch (post) {
          AsyncValue(valueOrNull: final post?) => ListView(
              children: [
                ...post.files.mapIndexed(
                  (index, file) => InkWell(
                    onTap: () => showDialog<void>(
                      context: ref.context,
                      builder: (context) => DefaultTextStyle.merge(
                        style: Theme.of(context).textTheme.bodyMedium,
                        child: ImageGalleryDialog(
                          files: post.files,
                          initialIndex: index,
                        ),
                      ),
                    ),
                    child: ImageWidget(url: file.url, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    post.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                if (post case GalleryPost(:final description?))
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Mfm(
                      account: account,
                      text: description,
                    ),
                  ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      LikeButton(
                        isLiked: post.isLiked ?? false,
                        likedCount: post.likedCount,
                        onTap: () => post.isLiked ?? false
                            ? ref
                                .read(
                                  galleryPostNotifierProvider(account, postId)
                                      .notifier,
                                )
                                .unlike()
                            : ref
                                .read(
                                  galleryPostNotifierProvider(account, postId)
                                      .notifier,
                                )
                                .like(),
                      ),
                      const Spacer(),
                      if (post.user.username == account.username)
                        IconButton(
                          tooltip: t.misskey.edit,
                          onPressed: () =>
                              context.push('/$account/gallery/$postId/edit'),
                          icon: const Icon(Icons.edit),
                        ),
                      if (!account.isGuest)
                        IconButton(
                          tooltip: t.misskey.shareWithNote,
                          onPressed: () {
                            ref
                                .read(
                                  postNotifierProvider(account).notifier,
                                )
                                .setText('${post.title} $url');
                            context.push('/$account/post');
                          },
                          icon: const Icon(Icons.repeat_rounded),
                        ),
                      IconButton(
                        tooltip: t.misskey.copyLink,
                        onPressed: () =>
                            copyToClipboard(context, url.toString()),
                        icon: const Icon(Icons.link),
                      ),
                      IconButton(
                        tooltip: t.aria.openInBrowser,
                        onPressed: () => launchUrl(
                          url,
                          mode: LaunchMode.externalApplication,
                        ),
                        icon: const Icon(Icons.open_in_browser),
                      ),
                      IconButton(
                        tooltip: t.misskey.share,
                        onPressed: () => Share.share('${post.title} $url'),
                        icon: const Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                UserTile(
                  account: account,
                  user: post.user,
                  avatarSize: 50.0,
                  trailing: FollowButton(account: account, userId: post.userId),
                  onTap: () => context.push('/$account/users/${post.user.id}'),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.75),
                    ),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: '${t.misskey.createdAt}: '),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: TimeWidget(
                              time: post.createdAt,
                              detailed: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (post.updatedAt != post.createdAt)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.75),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: '${t.misskey.updatedAt}: '),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: TimeWidget(
                                time: post.updatedAt,
                                detailed: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: AdWidget(account: account),
                ),
                Builder(
                  builder: (context) => ExpansionTile(
                    leading: const Icon(Icons.schedule),
                    title: Text(t.misskey.recentPosts),
                    initiallyExpanded: true,
                    children: [
                      ...?ref
                          .watch(
                            userGalleryPostsNotifierProvider(
                              account,
                              post.userId,
                            ),
                          )
                          .valueOrNull
                          ?.items
                          .map(
                            (post) => GalleryPostPreview(
                              account: account,
                              post: post,
                              onTap: () =>
                                  context.push('/$account/gallery/${post.id}'),
                            ),
                          ),
                    ],
                  ),
                ),
              ],
            ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      floatingActionButton: !account.isGuest &&
              post.valueOrNull?.user.username == account.username
          ? FloatingActionButton(
              tooltip: t.misskey.edit,
              onPressed: () => context.push('/$account/gallery/$postId/edit'),
              child: const Icon(Icons.edit),
            )
          : null,
    );
  }
}
