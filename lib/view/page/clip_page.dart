import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clip_notes_notifier_provider.dart';
import '../../provider/api/clip_notifier_provider.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/clip_settings_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../widget/like_button.dart';
import '../widget/mfm.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';
import '../widget/user_avatar.dart';
import '../widget/user_sheet.dart';
import '../widget/username_widget.dart';

class ClipPage extends HookConsumerWidget {
  const ClipPage({super.key, required this.account, required this.clipId});

  final Account account;
  final String clipId;

  Future<void> _edit(WidgetRef ref, Clip clip) async {
    final result = await showDialog<ClipSettings>(
      context: ref.context,
      builder: (context) =>
          ClipSettingsDialog(settings: ClipSettings.fromClip(clip)),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      await futureWithDialog(
        ref.context,
        ref
            .read(clipsNotifierProvider(account).notifier)
            .updateClip(
              clipId,
              name: result.name ?? '',
              description: result.description,
              isPublic: result.isPublic,
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myClip = ref
        .watch(clipsNotifierProvider(account))
        .valueOrNull
        ?.firstWhereOrNull((clip) => clip.id == clipId);
    final clip =
        myClip ?? ref.watch(clipNotifierProvider(account, clipId)).valueOrNull;
    final notes = ref.watch(clipNotesNotifierProvider(account, clipId));
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['clips', clipId]);

    return Scaffold(
      appBar: AppBar(
        title: Text(clip?.name ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () => launchUrl(ref, url),
                child: Text(t.aria.openInBrowser),
              ),
              PopupMenuItem(
                onTap: () => copyToClipboard(context, url.toString()),
                child: Text(t.misskey.copyLink),
              ),
              if (clip?.isPublic ?? false)
                PopupMenuItem(
                  onTap: () => SharePlus.instance.share(ShareParams(uri: url)),
                  child: Text(t.misskey.share),
                ),
              if (myClip != null) ...[
                PopupMenuItem(
                  onTap: () => _edit(ref, myClip),
                  child: Text(t.misskey.edit),
                ),
                PopupMenuItem(
                  onTap: () async {
                    final confirmed = await confirm(
                      context,
                      message: t.misskey.deleteAreYouSure(x: myClip.name ?? ''),
                    );
                    if (!context.mounted) return;
                    if (confirmed) {
                      await futureWithDialog(
                        context,
                        ref
                            .read(clipsNotifierProvider(account).notifier)
                            .delete(clipId),
                      );
                      if (!context.mounted) return;
                      context.pop();
                    }
                  },
                  child: Text(
                    t.misskey.delete,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
      body: PaginatedListView(
        header: SliverToBoxAdapter(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Card(
                color: Theme.of(context).colorScheme.surface,
                elevation: 0.0,
                margin: const EdgeInsets.only(top: 8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ClipDescription(
                    account: account,
                    clipId: clipId,
                    clip: clip,
                    isMyClip: myClip != null,
                  ),
                ),
              ),
            ),
          ),
        ),
        paginationState: notes,
        itemBuilder: (context, note) => NoteWidget(
          account: account,
          noteId: note.id,
          clipId: clipId,
          withHardMute: false,
        ),
        onRefresh: () =>
            ref.refresh(clipNotesNotifierProvider(account, clipId).future),
        loadMore: (skipError) => ref
            .read(clipNotesNotifierProvider(account, clipId).notifier)
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noNotes,
      ),
      floatingActionButton: myClip != null
          ? FloatingActionButton(
              tooltip: t.misskey.edit,
              onPressed: () => _edit(ref, myClip),
              child: const Icon(Icons.edit),
            )
          : null,
    );
  }
}

class _ClipDescription extends ConsumerWidget {
  const _ClipDescription({
    required this.account,
    required this.clipId,
    required this.clip,
    required this.isMyClip,
  });

  final Account account;
  final String clipId;
  final Clip? clip;
  final bool isMyClip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (clip case Clip(:final description?, :final user))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Mfm(account: account, text: description, author: user),
          )
        else
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text('(${t.misskey.noDescription})'),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: LikeButton(
            isLiked: clip?.isFavorited ?? false,
            likedCount: clip?.favoritedCount ?? 0,
            onTap: !account.isGuest
                ? () {
                    if (isMyClip) {
                      if (clip?.isFavorited ?? false) {
                        futureWithDialog(
                          context,
                          ref
                              .read(clipsNotifierProvider(account).notifier)
                              .unfavorite(clipId),
                        );
                      } else {
                        futureWithDialog(
                          context,
                          ref
                              .read(clipsNotifierProvider(account).notifier)
                              .favorite(clipId),
                        );
                      }
                    } else {
                      if (clip?.isFavorited ?? false) {
                        futureWithDialog(
                          context,
                          ref
                              .read(
                                clipNotifierProvider(account, clipId).notifier,
                              )
                              .unfavorite(),
                        );
                      } else {
                        futureWithDialog(
                          context,
                          ref
                              .read(
                                clipNotifierProvider(account, clipId).notifier,
                              )
                              .favorite(),
                        );
                      }
                    }
                  }
                : null,
          ),
        ),
        if (clip case Clip(:final user)) ...[
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Row(
              children: [
                UserAvatar(
                  account: account,
                  user: user,
                  size: 32.0,
                  showOnlineIndicator: true,
                  onTap: () => context.push('/$account/users/${user.id}'),
                ),
                const SizedBox(width: 4.0),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: InkWell(
                      onTap: () => context.push('/$account/users/${user.id}'),
                      onLongPress: () => showUserSheet(
                        context: context,
                        account: account,
                        userId: user.id,
                      ),
                      child: UsernameWidget(account: account, user: user),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
