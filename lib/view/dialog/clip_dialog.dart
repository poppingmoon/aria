import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../provider/api/note_clips_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import 'clip_settings_dialog.dart';
import 'confirmation_dialog.dart';

class ClipDialog extends HookConsumerWidget {
  const ClipDialog({
    super.key,
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clips = ref.watch(clipsNotifierProvider(account)).valueOrNull;
    final noteClips =
        ref.watch(noteClipsNotifierProvider(account, noteId)).valueOrNull ?? [];

    return SimpleDialog(
      title: Text(t.misskey.clip),
      children: [
        ...?clips?.mapIndexed((index, clip) {
          final isClipped = noteClips.any((noteClip) => noteClip.id == clip.id);
          return ListTile(
            leading: isClipped
                ? const Icon(Icons.check)
                : SizedBox(width: Theme.of(context).iconTheme.size),
            title: Text(clip.name ?? ''),
            onTap: () async {
              await futureWithDialog(
                context,
                Future(() async {
                  if (isClipped) {
                    await ref
                        .read(
                          noteClipsNotifierProvider(account, noteId).notifier,
                        )
                        .removeClip(clip.id);
                  } else {
                    try {
                      await ref
                          .read(
                            noteClipsNotifierProvider(account, noteId).notifier,
                          )
                          .addClip(clip);
                    } on DioException catch (e) {
                      if (((e.response?.data as Map?)?['error']
                              as Map?)?['code'] ==
                          'ALREADY_CLIPPED') {
                        if (!context.mounted) return;
                        final confirmed = await confirm(
                          context,
                          message: t.misskey.confirmToUnclipAlreadyClippedNote(
                            name: clip.name ?? '',
                          ),
                        );
                        if (confirmed) {
                          await ref
                              .read(
                                noteClipsNotifierProvider(account, noteId)
                                    .notifier,
                              )
                              .removeClip(clip.id);
                        }
                      }
                    }
                  }
                }),
              );
            },
          );
        }),
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
                ref.read(clipsNotifierProvider(account).notifier).create(
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