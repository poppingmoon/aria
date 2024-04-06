import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mime/mime.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/api/drive_folders_notifier_provider.dart';
import '../../provider/file_system_provider.dart';
import '../../util/compress_image.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/text_field_dialog.dart';

class DriveCreateSheet extends HookConsumerWidget {
  const DriveCreateSheet({
    super.key,
    required this.account,
    required this.folder,
  });

  final Account account;
  final DriveFolder? folder;

  Future<void> _upload(WidgetRef ref, bool keepOriginal) async {
    final result = await FilePicker.platform.pickFiles(
      type: defaultTargetPlatform == TargetPlatform.iOS
          ? FileType.media
          : FileType.any,
      allowMultiple: true,
    );
    if (result == null || result.files.isEmpty) return;
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      Future.wait(
        result.files.map((file) async {
          if (file case PlatformFile(:final path?)) {
            final data =
                await ref.read(fileSystemProvider).file(path).readAsBytes();
            final type = lookupMimeType(path);
            final resized =
                keepOriginal ? null : await compressImage(data, type);
            await ref
                .read(driveFilesNotifierProvider(account, folder?.id).notifier)
                .uploadAsBinary(
                  resized ?? data,
                  name: file.name,
                );
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
    final keepOriginal = useState(
      ref.watch(
        accountSettingsNotifierProvider(account)
            .select((settings) => settings.keepOriginalUploading),
      ),
    );

    return ListView(
      shrinkWrap: true,
      children: [
        SwitchListTile(
          title: Text(t.misskey.keepOriginalUploading),
          value: keepOriginal.value,
          onChanged: (value) => keepOriginal.value = value,
        ),
        ListTile(
          leading: const Icon(Icons.upload),
          title: Text(t.misskey.upload),
          onTap: () => _upload(ref, keepOriginal.value),
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
