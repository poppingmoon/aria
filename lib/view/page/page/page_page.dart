import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/page_provider.dart';
import '../../../provider/api/post_notifier_provider.dart';
import '../../../provider/api/user_pages_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/extract_url.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/follow_button.dart';
import '../../widget/like_button.dart';
import '../../widget/media_list.dart';
import '../../widget/mfm.dart';
import '../../widget/note_detailed_widget.dart';
import '../../widget/note_widget.dart';
import '../../widget/page_preview.dart';
import '../../widget/time_widget.dart';
import '../../widget/url_preview.dart';
import '../../widget/user_tile.dart';

class PagePage extends ConsumerWidget {
  const PagePage({
    super.key,
    required this.account,
    this.pageId,
    this.pageName,
    this.username,
  });

  final Account account;
  final String? pageId;
  final String? pageName;
  final String? username;

  Widget _buildBlock(
    BuildContext context,
    Page page,
    AbstractPageContent block, {
    bool topLevel = true,
  }) {
    switch (block) {
      case PageText(:final text?):
        final nodes = const MfmParser().parse(text);
        final urls = extractUrl(nodes);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mfm(account: account, nodes: nodes),
            ...urls.map((url) => UrlPreview(account: account, link: url)),
          ],
        );
      case PageSection(:final title, :final children):
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.apply(fontSizeFactor: topLevel ? 1.35 : 1.0)
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            ...children.map(
              (child) => _buildBlock(context, page, child, topLevel: false),
            ),
          ],
        );
      case PageImage(:final fileId):
        return MediaList(
          account: account,
          files: [page.attachedFiles.firstWhere((file) => file.id == fileId)],
          user: page.user,
        );
      case PageNote(note: final noteId, :final detailed):
        if (detailed) {
          return NoteDetailedWidget(account: account, noteId: noteId);
        } else {
          return NoteWidget(account: account, noteId: noteId);
        }
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final page = ref.watch(
      pageNotifierProvider(
        account,
        pageId: pageId,
        pageName: pageName,
        username: username,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(page.valueOrNull?.title ?? '')),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(
          pageNotifierProvider(
            account,
            pageId: pageId,
            pageName: pageName,
            username: username,
          ).future,
        ),
        child: switch (page) {
          AsyncValue(valueOrNull: final page?) => Builder(
              builder: (context) {
                final url = Uri.https(
                  account.host,
                  '@${page.user.username}/pages/${page.name}',
                );
                return ListView(
                  children: [
                    if (page case Page(:final eyeCatchingImage?))
                      MediaList(
                        account: account,
                        files: [eyeCatchingImage],
                        user: page.user,
                      ),
                    ...page.content.map(
                      (block) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildBlock(context, page, block),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          LikeButton(
                            isLiked: page.isLiked ?? false,
                            likedCount: page.likedCount,
                            onTap: () => page.isLiked ?? false
                                ? ref
                                    .read(
                                      pageNotifierProvider(
                                        account,
                                        pageId: pageId,
                                        pageName: pageName,
                                        username: username,
                                      ).notifier,
                                    )
                                    .unlike()
                                : ref
                                    .read(
                                      pageNotifierProvider(
                                        account,
                                        pageId: pageId,
                                        pageName: pageName,
                                        username: username,
                                      ).notifier,
                                    )
                                    .like(),
                          ),
                          const Spacer(),
                          if (!account.isGuest)
                            IconButton(
                              tooltip: t.misskey.shareWithNote,
                              onPressed: () {
                                ref
                                    .read(
                                      postNotifierProvider(account).notifier,
                                    )
                                    .setText('${page.title} $url');
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
                            onPressed: () => Share.share('${page.title} $url'),
                            icon: const Icon(Icons.share),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    UserTile(
                      account: account,
                      user: page.user,
                      avatarSize: 50.0,
                      trailing:
                          FollowButton(account: account, userId: page.userId),
                      onTap: () =>
                          context.push('/$account/users/${page.user.id}'),
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
                                  time: page.createdAt,
                                  detailed: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (page.updatedAt != page.createdAt)
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
                                    time: page.updatedAt,
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
                    ExpansionTile(
                      leading: const Icon(Icons.schedule),
                      title: Text(t.misskey.recentPosts),
                      children: [
                        ...?ref
                            .watch(
                              userPagesNotifierProvider(account, page.userId),
                            )
                            .valueOrNull
                            ?.items
                            .map(
                              (page) => PagePreview(
                                account: account,
                                page: page,
                                onTap: () =>
                                    context.push('/$account/pages/${page.id}'),
                              ),
                            ),
                      ],
                    ),
                  ],
                );
              },
            ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}
