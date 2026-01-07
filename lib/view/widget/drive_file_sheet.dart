import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/selected_drive_files_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/show_toast.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/file_caption_edit_dialog.dart';
import '../dialog/gallery_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../page/drive_page.dart';
import 'post_file_thumbnail.dart';
import 'time_widget.dart';

class DriveFileSheet extends ConsumerWidget {
  const DriveFileSheet({super.key, required this.account, required this.file});

  final Account account;
  final DriveFile file;

  Future<void> _renameFile(WidgetRef ref) async {
    final result = await showTextFieldDialog(
      ref.context,
      title: Text(t.misskey.renameFile),
      initialText: file.name,
    );
    if (!ref.context.mounted) return;
    if (result != null && result != file.name) {
      await futureWithDialog(
        ref.context,
        ref
            .read(driveFilesNotifierProvider(account, file.folderId).notifier)
            .updateName(file.id, result),
      );
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  Future<void> _updateIsSensitive(WidgetRef ref, bool isSensitive) async {
    await futureWithDialog(
      ref.context,
      ref
          .read(driveFilesNotifierProvider(account, file.folderId).notifier)
          .updateIsSensitive(file.id, isSensitive),
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _describeFile(WidgetRef ref) async {
    final result = await showDialog<String>(
      context: ref.context,
      builder: (context) =>
          FileCaptionEditDialog(file: DrivePostFile.fromDriveFile(file)),
    );
    if (!ref.context.mounted) return;
    if (result != null && result != file.name) {
      await futureWithDialog(
        ref.context,
        ref
            .read(driveFilesNotifierProvider(account, file.folderId).notifier)
            .updateComment(file.id, result.isNotEmpty ? result : null),
      );
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  Future<void> _editImage(WidgetRef ref) async {
    final localFile = await futureWithDialog(
      ref.context,
      ref.read(cacheManagerProvider).getSingleFile(file.url),
    );
    if (localFile == null) return;
    final image = await localFile.readAsBytes();
    if (!ref.context.mounted) return;
    final result = await ref.context.push<Uint8List>(
      '/$account/image',
      extra: image,
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      await futureWithDialog(
        ref.context,
        ref
            .read(driveFilesNotifierProvider(account, file.folderId).notifier)
            .uploadBinary(
              result,
              name: file.name,
              comment: file.comment,
              isSensitive: file.isSensitive,
            ),
        message: t.aria.uploaded,
      );
      if (!ref.context.mounted) return;
      ref.context.pop();
    }
  }

  Future<void> _download(WidgetRef ref) async {
    final result = await futureWithDialog(
      ref.context,
      ref
          .read(cacheManagerProvider)
          .getSingleFile(file.url)
          .then((file) => file.readAsBytes())
          .then(
            (bytes) =>
                FilePicker.platform.saveFile(fileName: file.name, bytes: bytes),
          ),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      showToast(context: ref.context, message: t.misskey.saved);
    }
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _move(WidgetRef ref) async {
    final result = await showDialog<(DriveFolder?,)>(
      context: ref.context,
      builder: (context) => DrivePage(account: account, selectFolder: true),
    );
    if (result == null) return;
    if (!ref.context.mounted) return;
    final moved = await futureWithDialog(
      ref.context,
      ref
          .read(driveFilesNotifierProvider(account, file.folderId).notifier)
          .move(fileId: file.id, folderId: result.$1?.id)
          .then((_) => true),
      message: t.aria.moved,
    );
    if (!ref.context.mounted) return;
    if (moved ?? false) {
      ref.context.pop((deleted: true));
    }
  }

  Future<void> _delete(WidgetRef ref) async {
    final result = await confirm(
      ref.context,
      message: t.misskey.driveFileDeleteConfirm(name: file.name),
    );
    if (!ref.context.mounted) return;
    if (result) {
      final deleted = await futureWithDialog(
        ref.context,
        ref
            .read(driveFilesNotifierProvider(account, file.folderId).notifier)
            .delete(file.id)
            .then((_) => true),
        message: t.misskey.removed,
      );
      if (deleted ?? false) {
        ref.read(selectedDriveFilesNotifierProvider.notifier).remove(file.id);
        if (!ref.context.mounted) return;
        ref.context.pop((deleted: true));
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: PostFileThumbnail(file: DrivePostFile.fromDriveFile(file)),
            ),
          ),
          title: Text(file.name),
          subtitle: TimeWidget(time: file.createdAt, detailed: true),
        ),
        const Divider(height: 0.0),
        ListTile(
          leading: const Icon(Icons.edit),
          title: Text(t.misskey.renameFile),
          onTap: () => _renameFile(ref),
        ),
        if (file.isSensitive)
          ListTile(
            leading: const Icon(Icons.visibility),
            title: Text(t.misskey.unmarkAsSensitive),
            onTap: () => _updateIsSensitive(ref, false),
          )
        else
          ListTile(
            leading: const Icon(Icons.visibility_off),
            title: Text(t.misskey.markAsSensitive),
            onTap: () => _updateIsSensitive(ref, true),
          ),
        ListTile(
          leading: const Icon(Icons.edit_note),
          title: Text(t.misskey.describeFile),
          onTap: () => _describeFile(ref),
        ),
        if (file.type.startsWith('image/'))
          ListTile(
            leading: const Icon(Icons.crop),
            title: Text(t.aria.editImage),
            onTap: () => _editImage(ref),
          ),
        ListTile(
          leading: const Icon(Icons.edit_outlined),
          title: Text(t.misskey.createNoteFromTheFile),
          onTap: () {
            ref
                .read(attachesNotifierProvider(account).notifier)
                .add(DrivePostFile.fromDriveFile(file));
            context.push('/$account/post');
          },
        ),
        ListTile(
          leading: const Icon(Icons.link),
          title: Text(t.misskey.copyLink),
          onTap: () => copyToClipboard(context, file.url),
        ),
        ListTile(
          leading: const Icon(Icons.download),
          title: Text(t.misskey.download),
          onTap: () => _download(ref),
        ),
        ListTile(
          leading: const Icon(Icons.collections),
          title: Text(t.misskey.gallery),
          trailing: const Icon(Icons.navigate_next),
          onTap: () => showDialog<void>(
            context: context,
            builder: (context) =>
                GalleryDialog(account: account, files: [file]),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.drive_file_move),
          title: Text(t.misskey.move),
          onTap: () => _move(ref),
        ),
        ListTile(
          leading: const Icon(Icons.delete),
          title: Text(t.misskey.deleteFile),
          onTap: () => _delete(ref),
          iconColor: Theme.of(context).colorScheme.error,
          textColor: Theme.of(context).colorScheme.error,
        ),
      ],
    );
  }
}
