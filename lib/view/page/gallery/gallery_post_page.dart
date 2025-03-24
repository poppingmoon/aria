import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';

import '../../../constant/max_content_width.dart';
import '../../../extension/user_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/gallery_post_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/user_gallery_posts_notifier_provider.dart';
import '../../../provider/post_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/image_gallery_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/follow_button.dart';
import '../../widget/gallery_post_preview.dart';
import '../../widget/image_widget.dart';
import '../../widget/like_button.dart';
import '../../widget/mfm.dart';
import '../../widget/time_widget.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';

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
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final post = ref.watch(galleryPostNotifierProvider(account, postId));
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['gallery', postId]);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(post.valueOrNull?.title ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  if (!account.isGuest) ...[
                    if (post.valueOrNull?.user.username == account.username)
                      PopupMenuItem(
                        onTap:
                            () =>
                                context.push('/$account/gallery/$postId/edit'),
                        child: Text(t.misskey.edit),
                      ),
                    PopupMenuItem(
                      onTap: () {
                        ref
                            .read(postNotifierProvider(account).notifier)
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
                    onTap: () => launchUrl(ref, url),
                    child: Text(t.aria.openInBrowser),
                  ),
                  PopupMenuItem(
                    onTap: () => Share.share('${post.valueOrNull?.title} $url'),
                    child: Text(t.misskey.share),
                  ),
                  if (post.valueOrNull?.user case final user?
                      when !account.isGuest && i?.id != user.id)
                    PopupMenuItem(
                      onTap: () async {
                        final comment = await showTextFieldDialog(
                          context,
                          title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                          initialText: ['Post: $url', '-----', ''].join('\n'),
                          decoration: InputDecoration(
                            helperText: t.misskey.fillAbuseReportDescription,
                          ),
                          maxLines: null,
                        );
                        if (!context.mounted) return;
                        if (comment == null) return;
                        final confirmed = await confirm(
                          context,
                          title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                          message: comment,
                          okText: t.misskey.reportAbuse,
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(misskeyProvider(account))
                                .users
                                .reportAbuse(
                                  UsersReportAbuseRequest(
                                    userId: user.id,
                                    comment: comment,
                                  ),
                                ),
                          );
                        }
                      },
                      child: Text(t.misskey.reportAbuse),
                    ),
                ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh:
            () => ref.refresh(
              galleryPostNotifierProvider(account, postId).future,
            ),
        child: switch (post) {
          AsyncValue(valueOrNull: final post?) => ListView(
            children: [
              ...post.files.mapIndexed(
                (index, file) => Center(
                  child: SizedBox(
                    width: maxContentWidth,
                    child: InkWell(
                      onTap:
                          () => showImageGalleryDialog(
                            ref.context,
                            files: post.files,
                            initialIndex: index,
                          ),
                      child: ImageWidget(url: file.url, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    post.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              if (post case GalleryPost(:final description?))
                Center(
                  child: Material(
                    color: theme.colorScheme.surface,
                    child: Container(
                      width: maxContentWidth,
                      padding: const EdgeInsets.all(8.0),
                      child: Mfm(account: account, text: description),
                    ),
                  ),
                ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      LikeButton(
                        isLiked: post.isLiked ?? false,
                        likedCount: post.likedCount,
                        onTap:
                            !account.isGuest
                                ? () => futureWithDialog(
                                  context,
                                  post.isLiked ?? false
                                      ? ref
                                          .read(
                                            galleryPostNotifierProvider(
                                              account,
                                              postId,
                                            ).notifier,
                                          )
                                          .unlike()
                                      : ref
                                          .read(
                                            galleryPostNotifierProvider(
                                              account,
                                              postId,
                                            ).notifier,
                                          )
                                          .like(),
                                )
                                : null,
                      ),
                      const Spacer(),
                      if (post.user.username == account.username)
                        IconButton(
                          tooltip: t.misskey.edit,
                          onPressed:
                              () => context.push(
                                '/$account/gallery/$postId/edit',
                              ),
                          icon: const Icon(Icons.edit),
                        ),
                      if (!account.isGuest)
                        IconButton(
                          tooltip: t.misskey.shareWithNote,
                          onPressed: () {
                            ref
                                .read(postNotifierProvider(account).notifier)
                                .setText('${post.title} $url');
                            context.push('/$account/post');
                          },
                          icon: const Icon(Icons.repeat_rounded),
                        ),
                      IconButton(
                        tooltip: t.misskey.copyLink,
                        onPressed:
                            () => copyToClipboard(context, url.toString()),
                        icon: const Icon(Icons.link),
                      ),
                      IconButton(
                        tooltip: t.aria.openInBrowser,
                        onPressed: () => launchUrl(ref, url),
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
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: SizedBox(
                  width: maxContentWidth,
                  child: Material(
                    color: theme.colorScheme.surface,
                    child: UserPreview(
                      account: account,
                      user: post.user,
                      avatarSize: 50.0,
                      trailing: FollowButton(
                        account: account,
                        userId: post.userId,
                      ),
                      onTap:
                          () => context.push('/$account/users/${post.user.id}'),
                      onLongPress:
                          () => showUserSheet(
                            context: context,
                            account: account,
                            userId: post.user.id,
                          ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.75,
                      ),
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
                              textScaler: TextScaler.noScaling,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (post.updatedAt != post.createdAt)
                Center(
                  child: Container(
                    width: maxContentWidth,
                    color: theme.colorScheme.surface,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.75,
                        ),
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
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  height: 8.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                    color: theme.colorScheme.surface,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: maxContentWidth,
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: AdWidget(account: account),
                ),
              ),
              // Builder defers API call.
              Builder(
                builder:
                    (context) => Center(
                      child: SizedBox(
                        width: maxContentWidth,
                        child: ExpansionTile(
                          leading: const Icon(Icons.schedule),
                          title: Text(t.misskey.recentPosts),
                          initiallyExpanded: true,
                          backgroundColor: theme.colorScheme.surface,
                          collapsedBackgroundColor: theme.colorScheme.surface,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          collapsedShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
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
                                  (post) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4.0,
                                      horizontal: 8.0,
                                    ),
                                    child: GalleryPostPreview(
                                      account: account,
                                      post: post,
                                      onTap:
                                          () => context.push(
                                            '/$account/gallery/${post.id}',
                                          ),
                                    ),
                                  ),
                                ),
                          ],
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 120.0),
            ],
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
      ),
      floatingActionButton:
          !account.isGuest &&
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
