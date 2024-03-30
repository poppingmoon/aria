import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/drive_folders_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../page/drive_page.dart';
import 'time_widget.dart';

class DriveFolderSheet extends ConsumerWidget {
  const DriveFolderSheet({
    super.key,
    required this.account,
    required this.folder,
  });

  final Account account;
  final DriveFolder folder;

  Future<void> _changeName(WidgetRef ref) async {
    final name = await showTextFieldDialog(
      ref.context,
      title: Text(t.misskey.inputNewFolderName),
      initialText: folder.name,
    );
    if (!ref.context.mounted) return;
    if (name != null && name != folder.name) {
      await futureWithDialog(
        ref.context,
        ref
            .read(
              driveFoldersNotifierProvider(account, folder.parentId).notifier,
            )
            .updateName(folder.id, name),
      );
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  Future<void> _move(WidgetRef ref) async {
    final result = await showDialog<(DriveFolder?,)>(
      context: ref.context,
      builder: (context) => DrivePage(
        account: account,
        selectFolder: true,
      ),
    );
    if (result == null) return;
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      ref
          .read(driveFoldersNotifierProvider(account, folder.parentId).notifier)
          .move(
            folderId: folder.id,
            parentId: result.$1?.id,
          ),
      message: t.aria.moved,
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _delete(WidgetRef ref) async {
    final confirmed = await confirm(
      ref.context,
      message: t.misskey.deleteAreYouSure(x: folder.name),
    );
    if (!ref.context.mounted) return;
    if (confirmed) {
      await futureWithDialog(
        ref.context,
        ref
            .read(
              driveFoldersNotifierProvider(account, folder.parentId).notifier,
            )
            .delete(folder.id),
        message: t.misskey.removed,
      );
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: const Icon(Icons.folder, size: 50.0),
          title: Text(folder.name),
          subtitle: TimeWidget(time: folder.createdAt),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(t.misskey.renameFolder),
          onTap: () => _changeName(ref),
        ),
        ListTile(
          leading: const Icon(Icons.drive_file_move),
          title: Text(t.misskey.move),
          onTap: () => _move(ref),
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: Text(t.misskey.deleteFolder),
          onTap: () => _delete(ref),
          iconColor: Theme.of(context).colorScheme.error,
          textColor: Theme.of(context).colorScheme.error,
        ),
      ],
    );
  }
}
