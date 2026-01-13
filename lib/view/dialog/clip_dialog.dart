import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clip_notes_notifier_provider.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/note_clips_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/pagination_bottom_widget.dart';
import 'clip_settings_dialog.dart';
import 'confirmation_dialog.dart';

class ClipDialog extends HookConsumerWidget {
  const ClipDialog({
    super.key,
    required this.account,
    required this.noteId,
    this.clipId,
  });

  final Account account;
  final String noteId;
  final String? clipId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clips = ref.watch(clipsNotifierProvider(account));
    final noteClips =
        ref.watch(noteClipsNotifierProvider(account, noteId)).value ?? [];
    final i = ref.watch(iNotifierProvider(account)).value;
    final clipId = useState(this.clipId);

    return SimpleDialog(
      title: Text(t.misskey.clip),
      children: [
        ...?clips.value?.items.mapIndexed((index, clip) {
          final isClipped = noteClips.any((noteClip) => noteClip.id == clip.id);
          return ListTile(
            leading: clip.id == clipId.value || isClipped
                ? const Icon(Icons.check)
                : SizedBox(width: Theme.of(context).iconTheme.size),
            title: Text(clip.name ?? ''),
            subtitle: clip.notesCount != null
                ? Text(
                    [
                      '${t.misskey.notesCount}: ',
                      NumberFormat().format(clip.notesCount),
                      if (i?.policies?.noteEachClipsLimit
                          case final noteEachClipsLimit?) ...[
                        ' / ',
                        NumberFormat().format(noteEachClipsLimit),
                        ' (',
                        t.misskey.remainingN(
                          n: noteEachClipsLimit - clip.notesCount!,
                        ),
                        ')',
                      ],
                    ].join(),
                  )
                : null,
            onTap: () async {
              if (clip.id == clipId.value) {
                final result = await futureWithDialog(
                  context,
                  ref
                      .read(
                        clipNotesNotifierProvider(account, clip.id).notifier,
                      )
                      .removeNote(noteId)
                      .then((_) => ()),
                );
                if (result != null) {
                  ref
                      .read(clipsNotifierProvider(account).notifier)
                      .decrementNotesCount(clip.id);
                  clipId.value = null;
                }
              } else if (isClipped) {
                final result = await futureWithDialog(
                  context,
                  ref
                      .read(clipsNotifierProvider(account).notifier)
                      .removeNote(clip.id, noteId)
                      .then((_) => ()),
                );
                if (result != null) {
                  ref
                      .read(noteClipsNotifierProvider(account, noteId).notifier)
                      .removeClip(clip.id);
                }
              } else {
                try {
                  await futureWithDialog(
                    context,
                    ref
                        .read(clipsNotifierProvider(account).notifier)
                        .addNote(clip.id, noteId),
                    throwOnError: true,
                  );
                  ref
                      .read(noteClipsNotifierProvider(account, noteId).notifier)
                      .addClip(clip);
                } on MisskeyException catch (e) {
                  if (e.code == 'ALREADY_CLIPPED') {
                    if (!context.mounted) return;
                    final confirmed = await confirm(
                      context,
                      message: t.misskey.confirmToUnclipAlreadyClippedNote(
                        name: clip.name ?? '',
                      ),
                    );
                    if (!context.mounted) return;
                    if (confirmed) {
                      final result = await futureWithDialog(
                        context,
                        ref
                            .read(clipsNotifierProvider(account).notifier)
                            .removeNote(clip.id, noteId)
                            .then((_) => ()),
                      );
                      if (result != null) {
                        ref
                            .read(
                              noteClipsNotifierProvider(
                                account,
                                noteId,
                              ).notifier,
                            )
                            .removeClip(clip.id);
                      }
                    }
                  } else {
                    rethrow;
                  }
                }
              }
            },
          );
        }),
        PaginationBottomWidget(
          paginationState: clips,
          loadMore: () => ref
              .read(clipsNotifierProvider(account).notifier)
              .loadMore(skipError: true),
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: Text(t.misskey.createNewClip),
          onTap: () async {
            final result = await showDialog<ClipSettings>(
              context: context,
              builder: (context) => const ClipSettingsDialog(),
            );
            if (!ref.context.mounted) return;
            if (result != null) {
              await futureWithDialog(
                ref.context,
                ref
                    .read(clipsNotifierProvider(account).notifier)
                    .create(
                      name: result.name ?? '',
                      description: result.description,
                      isPublic: result.isPublic,
                    ),
              );
            }
          },
        ),
      ],
    );
  }
}
