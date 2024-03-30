import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/drive_files_notifier_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/selected_drive_files_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/message_dialog.dart';
import '../dialog/post_file_editor_dialog.dart';
import '../page/drive_page.dart';
import 'post_file_thumbnail.dart';
import 'time_widget.dart';

class DriveFileSheet extends ConsumerWidget {
  const DriveFileSheet({
    super.key,
    required this.account,
    required this.file,
  });

  final Account account;
  final DriveFile file;

  Future<void> _editFile(WidgetRef ref) async {
    final postFile = DrivePostFile.fromDriveFile(file);
    final result = await showDialog<PostFile>(
      context: ref.context,
      builder: (context) => PostFileEditorDialog(file: postFile),
    );
    if (!ref.context.mounted) return;
    if (result != null && result != postFile) {
      await futureWithDialog(
        ref.context,
        ref
            .read(
              driveFilesNotifierProvider(account, file.folderId).notifier,
            )
            .updateFile(
              fileId: file.id,
              name: result.name,
              isSensitive: result.isSensitive,
              comment: result.comment,
            ),
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
            .read(
              driveFilesNotifierProvider(account, file.folderId).notifier,
            )
            .uploadAsBinary(
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
    final isImage = file.type.startsWith('image/');
    final isVideo = file.type.startsWith('image/');
    if (!isImage && !isVideo) {
      await launchUrl(Uri.parse(file.url));
      return;
    }
    if (!await Gal.requestAccess()) {
      if (!ref.context.mounted) return;
      await showMessageDialog(ref.context, t.misskey.permissionDeniedError);
      return;
    }
    if (!ref.context.mounted) return;
    await futureWithDialog(
      ref.context,
      Future(() async {
        final file =
            await ref.read(cacheManagerProvider).getSingleFile(this.file.url);
        if (isImage) {
          await Gal.putImage(file.path);
        } else {
          await Gal.putVideo(file.path);
        }
      }),
      message: t.aria.downloaded,
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
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
          .read(driveFilesNotifierProvider(account, file.folderId).notifier)
          .move(
            fileId: file.id,
            folderId: result.$1?.id,
          ),
      message: t.aria.moved,
    );
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _delete(WidgetRef ref) async {
    final result = await confirm(
      ref.context,
      message: t.misskey.driveFileDeleteConfirm(name: file.name),
    );
    if (!ref.context.mounted) return;
    if (result) {
      await futureWithDialog(
        ref.context,
        ref
            .read(
              driveFilesNotifierProvider(account, file.folderId).notifier,
            )
            .delete(file.id),
        message: t.misskey.removed,
      );
      ref.read(selectedDriveFilesNotifierProvider.notifier).remove(file.id);
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
          leading: AspectRatio(
            aspectRatio: 1,
            child: PostFileThumbnail(file: DrivePostFile.fromDriveFile(file)),
          ),
          title: Text(file.name),
          subtitle: TimeWidget(time: file.createdAt, detailed: true),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.settings),
          title: Text(t.aria.editFile),
          onTap: () => _editFile(ref),
        ),
        if (file.type.startsWith('image/'))
          ListTile(
            leading: const Icon(Icons.crop),
            title: Text(t.aria.editImage),
            onTap: () => _editImage(ref),
          ),
        ListTile(
          leading: const Icon(Icons.edit),
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
