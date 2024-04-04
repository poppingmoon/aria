import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/notes_create_request_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/post_notifier_provider.dart';
import '../widget/note_widget.dart';

Future<bool> confirmPost(BuildContext context, Account account) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => PostConfirmationDialog(account: account),
  );
  return result ?? false;
}

class PostConfirmationDialog extends ConsumerWidget {
  const PostConfirmationDialog({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final request = ref.watch(postNotifierProvider(account));
    final files = ref
        .watch(attachesNotifierProvider(account))
        .map((file) => file is DrivePostFile ? file.file : null)
        .nonNulls
        .toList();
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final note = request.toNote(i: i);

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
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
                NoteWidget(account: account, noteId: request.renoteId!)
              else
                NoteWidget(
                  account: account,
                  noteId: '',
                  note: note.copyWith(files: files),
                  showFooter: false,
                  tapAction: NoteActionType.none,
                  doubleTapAction: NoteActionType.none,
                  longPressAction: NoteActionType.none,
                ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
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
