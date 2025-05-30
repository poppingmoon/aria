import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/selected_drive_files_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/gallery_dialog.dart';
import '../page/drive_page.dart';

class DriveFilesSheet extends ConsumerWidget {
  const DriveFilesSheet({
    super.key,
    required this.account,
    required this.files,
  });

  final Account account;
  final List<DriveFile> files;

  Future<void> _move(WidgetRef ref) async {
    final result = await showDialog<(DriveFolder?,)>(
      context: ref.context,
      builder: (context) => DrivePage(account: account, selectFolder: true),
    );
    if (result == null) return;
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      ref
          .read(driveFilesNotifierProvider(account, result.$1?.id).notifier)
          .moveBulkFrom(files),
      message: t.aria.moved,
    );
    ref.read(selectedDriveFilesNotifierProvider.notifier).removeAll();
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _delete(WidgetRef ref) async {
    final confirmed = await confirm(
      ref.context,
      message: t.aria.deleteFilesConfirm(n: files.length),
    );
    if (!ref.context.mounted) return;
    if (confirmed) {
      await futureWithDialog(
        ref.context,
        Future.wait(
          files.map(
            (file) => ref
                .read(
                  driveFilesNotifierProvider(account, file.folderId).notifier,
                )
                .delete(file.id),
          ),
        ),
        message: t.misskey.removed,
      );
      ref.read(selectedDriveFilesNotifierProvider.notifier).removeAll();
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(title: Text(t.aria.nFiles(n: files.length))),
        ListTile(
          leading: const Icon(Icons.edit),
          title: Text(t.misskey.createNoteFromTheFile),
          onTap: () {
            ref
                .read(attachesNotifierProvider(account).notifier)
                .addAll(files.map((file) => DrivePostFile.fromDriveFile(file)));
            context.push('/$account/post');
          },
        ),
        ListTile(
          leading: const Icon(Icons.collections),
          title: Text(t.misskey.gallery),
          trailing: const Icon(Icons.navigate_next),
          onTap: () => showDialog<void>(
            context: context,
            builder: (context) => GalleryDialog(account: account, files: files),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.drive_file_move),
          title: Text(t.misskey.move),
          onTap: () => _move(ref),
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: Text(t.misskey.delete),
          onTap: () => _delete(ref),
          iconColor: Theme.of(context).colorScheme.error,
          textColor: Theme.of(context).colorScheme.error,
        ),
      ],
    );
  }
}
