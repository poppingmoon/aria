import 'package:collection/collection.dart';
import 'package:flutter/material.dart' hide Page;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:share_plus/share_plus.dart';

import '../../../constant/max_content_width.dart';
import '../../../extension/user_extension.dart';
import '../../../gen/fonts.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/page_provider.dart';
import '../../../provider/api/user_pages_notifier_provider.dart';
import '../../../provider/post_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/extract_url.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/image_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/follow_button.dart';
import '../../widget/image_widget.dart';
import '../../widget/like_button.dart';
import '../../widget/media_list.dart';
import '../../widget/mfm.dart';
import '../../widget/note_detailed_widget.dart';
import '../../widget/note_widget.dart';
import '../../widget/page_preview.dart';
import '../../widget/time_widget.dart';
import '../../widget/url_preview.dart';
import '../../widget/user_avatar.dart';
import '../../widget/user_preview.dart';
import '../../widget/user_sheet.dart';
import '../../widget/username_widget.dart';

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
        final nodes = parse(text);
        final urls = extractUrl(nodes);
        return Column(
          crossAxisAlignment:
              page.alignCenter ?? false
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
          children: [
            Mfm(
              account: account,
              nodes: nodes,
              style: TextStyle(
                fontFamilyFallback:
                    page.font == 'serif'
                        ? ['serif', FontFamily.notoSerifJP]
                        : null,
              ),
              textAlign: page.alignCenter ?? false ? TextAlign.center : null,
            ),
            ...urls.map(
              (url) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: UrlPreview(account: account, link: url),
              ),
            ),
          ],
        );
      case PageSection(:final title, :final children):
        return Column(
          crossAxisAlignment:
              page.alignCenter ?? false
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
          children: [
            Text(
              title ?? '',
              style: Theme.of(context).textTheme.bodyMedium
                  ?.apply(fontSizeFactor: topLevel ? 1.35 : 1.0)
                  .copyWith(
                    fontWeight: FontWeight.bold,
                    fontFamilyFallback:
                        page.font == 'serif'
                            ? ['serif', FontFamily.notoSerifJP]
                            : null,
                  ),
              textAlign: page.alignCenter ?? false ? TextAlign.center : null,
            ),
            const SizedBox(height: 8.0),
            ...?children?.map(
              (child) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: _buildBlock(context, page, child, topLevel: false),
              ),
            ),
          ],
        );
      case PageImage(:final fileId?):
        final file = page.attachedFiles?.firstWhereOrNull(
          (file) => file.id == fileId,
        );
        if (file != null) {
          return MediaList(account: account, files: [file], user: page.user);
        } else {
          return const SizedBox.shrink();
        }
      case PageNote(note: final noteId?, :final detailed):
        if (detailed ?? false) {
          return NoteDetailedWidget(account: account, noteId: noteId);
        } else {
          return NoteWidget(account: account, noteId: noteId);
        }
      case AbstractPageContent(
        type: PageContentType.button ||
            PageContentType.condition ||
            PageContentType.textarea ||
            PageContentType.post ||
            PageContentType.canvas ||
            PageContentType.numberInput ||
            PageContentType.textInput ||
            PageContentType.switcher ||
            PageContentType.radioButton ||
            PageContentType.counter ||
            PageContentType.textareaInput,
      ):
        return DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: ListTile(
            title: Text(
              t.misskey.pages_.blocks.dynamic,
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              t.misskey.pages_.blocks.dynamicDescription(play: 'Play'),
              textAlign: TextAlign.center,
            ),
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final page = ref.watch(
      pageNotifierProvider(
        account,
        pageId: pageId,
        pageName: pageName,
        username: username,
      ),
    );
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(
      pathSegments: [
        '@${page.valueOrNull?.user.username}',
        'pages',
        '${page.valueOrNull?.name}',
      ],
    );
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(page.valueOrNull?.title ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  if (!account.isGuest)
                    PopupMenuItem(
                      onTap: () {
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setText('${page.valueOrNull?.title} $url');
                        context.push('/$account/post');
                      },
                      child: Text(t.misskey.shareWithNote),
                    ),
                  PopupMenuItem(
                    onTap: () => copyToClipboard(context, url.toString()),
                    child: Text(t.misskey.copyLink),
                  ),
                  PopupMenuItem(
                    onTap: () => launchUrl(ref, url),
                    child: Text(t.aria.openInBrowser),
                  ),
                  PopupMenuItem(
                    onTap: () => Share.share('${page.valueOrNull?.title} $url'),
                    child: Text(t.misskey.share),
                  ),
                  if (page.valueOrNull?.user case final user?
                      when !account.isGuest && i?.id != user.id)
                    PopupMenuItem(
                      onTap: () async {
                        final comment = await showTextFieldDialog(
                          context,
                          title: Text(t.misskey.reportAbuseOf(name: user.acct)),
                          initialText: ['Page: $url', '-----', ''].join('\n'),
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
              pageNotifierProvider(
                account,
                pageId: pageId,
                pageName: pageName,
                username: username,
              ).future,
            ),
        child: switch (page) {
          AsyncValue(valueOrNull: final page?) => ListView(
            children: [
              const SizedBox(height: 8.0),
              if (page case Page(:final eyeCatchingImage?))
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(8.0),
                      ),
                      color: theme.colorScheme.surface,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap:
                          () => showImageDialog(
                            context,
                            url: eyeCatchingImage.url,
                          ),
                      child: ImageWidget(
                        url: eyeCatchingImage.url,
                        blurHash: eyeCatchingImage.blurhash,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ListTile(
                    title: Text(page.title),
                    subtitle: Row(
                      children: [
                        UserAvatar(
                          account: account,
                          user: page.user,
                          onTap:
                              () => context.push(
                                '/$account/users/${page.userId}',
                              ),
                        ),
                        const SizedBox(width: 2.0),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: InkWell(
                              onTap:
                                  () => context.push(
                                    '/$account/users/${page.userId}',
                                  ),
                              onLongPress:
                                  () => showUserSheet(
                                    context: context,
                                    account: account,
                                    userId: page.userId,
                                  ),
                              child: UsernameWidget(
                                account: account,
                                user: page.user,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    tileColor: theme.colorScheme.surface,
                    shape:
                        page.eyeCatchingImage == null
                            ? const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(8.0),
                              ),
                            )
                            : null,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  height: 16.0,
                  color: theme.colorScheme.surface,
                ),
              ),
              ...page.content.map(
                (block) => Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: Material(
                      color: theme.colorScheme.surface,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildBlock(context, page, block),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  padding: const EdgeInsets.all(8.0),
                  color: theme.colorScheme.surface,
                  child: Row(
                    children: [
                      LikeButton(
                        isLiked: page.isLiked ?? false,
                        likedCount: page.likedCount ?? 0,
                        onTap:
                            !account.isGuest
                                ? () => futureWithDialog(
                                  context,
                                  page.isLiked ?? false
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
                                )
                                : null,
                      ),
                      const Spacer(),
                      if (!account.isGuest)
                        IconButton(
                          tooltip: t.misskey.shareWithNote,
                          onPressed: () {
                            ref
                                .read(postNotifierProvider(account).notifier)
                                .setText('${page.title} $url');
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
                        onPressed: () => Share.share('${page.title} $url'),
                        icon: const Icon(Icons.share),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: Material(
                    color: theme.colorScheme.surface,
                    child: UserPreview(
                      account: account,
                      user: page.user,
                      avatarSize: 50.0,
                      trailing: FollowButton(
                        account: account,
                        userId: page.userId,
                      ),
                      onTap:
                          () => context.push('/$account/users/${page.user.id}'),
                      onLongPress:
                          () => showUserSheet(
                            context: context,
                            account: account,
                            userId: page.user.id,
                          ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  color: theme.colorScheme.surface,
                  child: const Divider(),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  color: theme.colorScheme.surface,
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
                              time: page.createdAt,
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
              if (page.updatedAt != page.createdAt)
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: theme.colorScheme.surface,
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
                                time: page.updatedAt,
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
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
              const SizedBox(height: 8.0),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: AdWidget(account: account),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              // Builder defers API call.
              Builder(
                builder:
                    (context) => Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                  userPagesNotifierProvider(
                                    account,
                                    page.userId,
                                  ),
                                )
                                .valueOrNull
                                ?.items
                                .map(
                                  (page) => Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: PagePreview(
                                      account: account,
                                      page: page,
                                      onTap:
                                          () => context.push(
                                            '/$account/pages/${page.id}',
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
    );
  }
}
