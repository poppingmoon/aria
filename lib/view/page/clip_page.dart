import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clip_notes_notifier_provider.dart';
import '../../provider/api/clip_provider.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/clip_settings_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';

class ClipPage extends HookConsumerWidget {
  const ClipPage({
    super.key,
    required this.account,
    required this.clipId,
  });

  final Account account;
  final String clipId;

  Future<void> _edit(WidgetRef ref, Clip clip) async {
    final result = await showDialog<ClipSettings>(
      context: ref.context,
      builder: (context) => ClipSettingsDialog(
        settings: ClipSettings.fromClip(clip),
      ),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      await futureWithDialog(
        ref.context,
        ref.read(clipsNotifierProvider(account).notifier).updateClip(
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
    final clip = myClip ?? ref.watch(clipProvider(account, clipId)).valueOrNull;
    final notes = ref.watch(clipNotesNotifierProvider(account, clipId));

    return Scaffold(
      appBar: AppBar(
        title: Text(clip?.name ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () => launchUrl(
                  Uri.https(account.host, 'clips/$clipId'),
                  mode: LaunchMode.externalApplication,
                ),
                child: Text(t.aria.openInBrowser),
              ),
              PopupMenuItem(
                onTap: () => copyToClipboard(
                  context,
                  'https://${account.host}/clips/$clipId',
                ),
                child: Text(t.misskey.copyLink),
              ),
              if (clip?.isPublic ?? false)
                PopupMenuItem(
                  onTap: () => Share.shareUri(
                    Uri.https(account.host, 'clips/$clipId'),
                  ),
                  child: Text(t.misskey.share),
                ),
              if (myClip != null) ...[
                PopupMenuItem(
                  onTap: () => _edit(ref, myClip),
                  child: Text(t.misskey.editList),
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
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
      body: PaginatedListView(
        paginationState: notes,
        itemBuilder: (context, note) =>
            NoteWidget(account: account, noteId: note.id),
        onRefresh: () =>
            ref.refresh(clipNotesNotifierProvider(account, clipId).future),
        loadMore: (skipError) => ref
            .read(clipNotesNotifierProvider(account, clipId).notifier)
            .loadMore(skipError: skipError),
        noItemsLabel: t.misskey.noNotes,
      ),
      floatingActionButton: myClip != null
          ? FloatingActionButton(
              onPressed: () => _edit(ref, myClip),
              child: const Icon(Icons.edit),
            )
          : null,
    );
  }
}
