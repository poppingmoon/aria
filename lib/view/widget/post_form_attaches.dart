import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:reorderable_grid/reorderable_grid.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/file_system_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/post_file_editor_dialog.dart';
import 'post_file_thumbnail.dart';

class PostFormAttaches extends ConsumerWidget {
  const PostFormAttaches({super.key, required this.account});

  final Account account;

  Future<void> _editFile(WidgetRef ref, int index) async {
    final file = ref.read(attachesNotifierProvider(account))[index];
    final result = await showDialog<PostFile>(
      context: ref.context,
      builder: (context) => PostFileEditorDialog(file: file),
    );
    if (!ref.context.mounted) return;
    if (result != null && result != file) {
      if (result is DrivePostFile) {
        final driveFile = await futureWithDialog(
          ref.context,
          ref.read(misskeyProvider(account)).drive.files.update(
                DriveFilesUpdateRequest(
                  fileId: result.file.id,
                  name: result.name,
                  isSensitive: result.isSensitive,
                  comment: result.comment,
                ),
              ),
        );
        if (driveFile != null) {
          ref
              .read(attachesNotifierProvider(account).notifier)
              .replace(index, DrivePostFile.fromDriveFile(driveFile));
        }
      } else {
        ref
            .read(attachesNotifierProvider(account).notifier)
            .replace(index, result);
      }
    }
  }

  Future<void> _editImage(WidgetRef ref, int index) async {
    final file = ref.read(attachesNotifierProvider(account))[index];
    final data = await switch (file) {
      LocalPostFile(:final file) => file,
      DrivePostFile(:final file) =>
        await ref.read(cacheManagerProvider).getSingleFile(file.url),
    }
        .readAsBytes();
    if (!ref.context.mounted) return;
    final result = await ref.context.push<Uint8List>(
      '/$account/image',
      extra: data,
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      final tempDirectory =
          await ref.read(fileSystemProvider).systemTempDirectory.createTemp();
      final tempFile = tempDirectory.childFile(file.name);
      await tempFile.writeAsBytes(result);
      ref.read(attachesNotifierProvider(account).notifier).replace(
            index,
            LocalPostFile.fromFile(
              tempFile,
              name: file.name,
              isSensitive: file.isSensitive,
              comment: file.comment,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(attachesNotifierProvider(account));
    final uploading =
        files.any((file) => file is LocalPostFile && file.uploading);

    return ReorderableGridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 200,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: (oldIndex, newIndex) => ref
          .read(attachesNotifierProvider(account).notifier)
          .reorder(oldIndex, newIndex),
      itemDragEnable: (_) => !uploading,
      children: List.generate(
        files.length,
        (index) => _PostFormAttach(
          key: ValueKey(index),
          account: account,
          index: index,
          onTap: !uploading
              ? () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => ListView(
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.settings),
                          title: Text(t.aria.editFile),
                          onTap: () => _editFile(ref, index),
                        ),
                        if (files[index].type?.startsWith('image/') ?? false)
                          ListTile(
                            leading: const Icon(Icons.crop),
                            title: Text(t.aria.editImage),
                            onTap: () => _editImage(ref, index),
                          ),
                        ListTile(
                          leading: const Icon(Icons.close),
                          title: Text(t.misskey.attachCancel),
                          onTap: () {
                            ref
                                .read(
                                  attachesNotifierProvider(account).notifier,
                                )
                                .remove(index);
                            context.pop();
                          },
                        ),
                      ],
                    ),
                    clipBehavior: Clip.hardEdge,
                  )
              : null,
        ),
      ),
    );
  }
}

class _PostFormAttach extends ConsumerWidget {
  const _PostFormAttach({
    super.key,
    required this.account,
    required this.index,
    this.onTap,
  });

  final Account account;
  final int index;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(
      attachesNotifierProvider(account).select((files) => files[index]),
    );

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PostFileThumbnail(file: file, fit: BoxFit.contain),
                  if (file case LocalPostFile(uploading: true))
                    const CircularProgressIndicator()
                  else if (file case LocalPostFile(uploading: false))
                    IconButton.filled(
                      color: Theme.of(context).colorScheme.onPrimary,
                      onPressed: () => ref
                          .read(attachesNotifierProvider(account).notifier)
                          .upload(index),
                      icon: const Icon(Icons.upload),
                    ),
                ],
              ),
            ),
            Row(
              children: [
                if (file.isSensitive)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tooltip(
                      message: t.misskey.sensitive,
                      child: const Icon(Icons.warning_amber),
                    ),
                  ),
                Expanded(
                  child: Text(
                    file.name,
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
