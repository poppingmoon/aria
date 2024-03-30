import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/api/drive_folders_notifier_provider.dart';
import '../../provider/file_system_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/text_field_dialog.dart';

class DriveCreateSheet extends ConsumerWidget {
  const DriveCreateSheet({
    super.key,
    required this.account,
    required this.folder,
  });

  final Account account;
  final DriveFolder? folder;

  Future<void> _upload(WidgetRef ref) async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );
    if (result == null || result.files.isEmpty) return;
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      Future.wait(
        result.files.map((file) async {
          final path = file.path;
          if (path != null) {
            await ref
                .read(driveFilesNotifierProvider(account, folder?.id).notifier)
                .upload(ref.read(fileSystemProvider).file(path));
          }
        }),
      ),
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _createFolder(WidgetRef ref) async {
    final name = await showTextFieldDialog(
      ref.context,
      title: Text(t.misskey.createFolder),
    );
    if (!ref.context.mounted) return;
    if (name != null) {
      await futureWithDialog(
        ref.context,
        ref
            .read(
              driveFoldersNotifierProvider(account, folder?.id).notifier,
            )
            .create(name),
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
          leading: const Icon(Icons.upload),
          title: Text(t.misskey.upload),
          onTap: () => _upload(ref),
        ),
        ListTile(
          leading: const Icon(Icons.folder),
          title: Text(t.misskey.createFolder),
          onTap: () => _createFolder(ref),
        ),
      ],
    );
  }
}
