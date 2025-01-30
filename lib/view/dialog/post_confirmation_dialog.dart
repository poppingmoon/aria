import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/channel_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/note_widget.dart';

Future<bool> confirmPost(
  WidgetRef ref,
  Account account,
  NotesCreateRequest request, {
  List<DriveFile>? files,
}) async {
  if (request.replyId case final replyId?) {
    final reply = ref.read(noteProvider(account, replyId));
    if (reply == null) {
      final reply = await futureWithDialog(
        ref.context,
        ref.read(notesNotifierProvider(account).notifier).show(replyId),
      );
      if (reply == null) {
        return false;
      }
    }
  }
  if (request.renoteId case final renoteId?) {
    final renote = ref.read(noteProvider(account, renoteId));
    if (renote == null) {
      if (!ref.context.mounted) return false;
      final renote = await futureWithDialog(
        ref.context,
        ref.read(notesNotifierProvider(account).notifier).show(renoteId),
      );
      if (renote == null) {
        return false;
      }
    }
  }
  if (!ref.context.mounted) {
    return false;
  }
  final result = await showDialog<bool>(
    context: ref.context,
    builder: (context) => PostConfirmationDialog(
      account: account,
      request: request,
      files: files ?? [],
    ),
  );
  return result ?? false;
}

class PostConfirmationDialog extends ConsumerWidget {
  const PostConfirmationDialog({
    super.key,
    required this.account,
    required this.request,
    required this.files,
  });

  final Account account;
  final NotesCreateRequest request;
  final List<DriveFile> files;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final channel = request.channelId != null
        ? ref
            .watch(channelNotifierProvider(account, request.channelId!))
            .valueOrNull
        : null;
    final note = request.toNote(i: i, channel: channel);

    return Dialog(
      child: Container(
        width: 800.0,
        margin: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    request.isRenote
                        ? t.aria.renoteConfirm
                        : t.aria.postConfirm,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
              if (request.isRenote)
                NoteWidget(
                  account: account,
                  noteId: request.renoteId!,
                  showFooter: false,
                  backgroundColor: Colors.transparent,
                )
              else
                NoteWidget(
                  account: account,
                  noteId: '',
                  note: note.copyWith(files: files),
                  showFooter: false,
                  backgroundColor: Colors.transparent,
                ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        autofocus: true,
                        onPressed: () => context.pop(true),
                        child: Text(t.misskey.ok),
                      ),
                      const SizedBox(width: 8.0),
                      OutlinedButton(
                        onPressed: () => context.pop(false),
                        child: Text(t.misskey.cancel),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
