import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:reorderable_grid/reorderable_grid.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/file_system_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/audio_dialog.dart';
import '../dialog/file_caption_edit_dialog.dart';
import '../dialog/image_dialog.dart';
import '../dialog/image_gallery_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../dialog/video_dialog.dart';
import 'post_file_thumbnail.dart';

class PostFormAttaches extends ConsumerWidget {
  const PostFormAttaches({
    super.key,
    required this.account,
    this.noteId,
    this.gallery = false,
    this.chat = false,
    this.maxCrossAxisExtent = 200.0,
  });

  final Account account;
  final String? noteId;
  final bool gallery;
  final bool chat;
  final double maxCrossAxisExtent;

  Future<void> _renameFile(WidgetRef ref, int index) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    )[index];
    final result = await showTextFieldDialog(
      ref.context,
      title: Text(t.misskey.renameFile),
      initialText: file.name,
    );
    if (!ref.context.mounted) return;
    if (result != null && result != file.name) {
      switch (file) {
        case DrivePostFile():
          final driveFile = await futureWithDialog(
            ref.context,
            ref
                .read(misskeyProvider(account))
                .drive
                .files
                .update(
                  DriveFilesUpdateRequest(fileId: file.file.id, name: result),
                ),
          );
          if (driveFile != null) {
            ref
                .read(
                  attachesNotifierProvider(
                    account,
                    noteId: noteId,
                    gallery: gallery,
                    chat: chat,
                  ).notifier,
                )
                .replace(index, DrivePostFile.fromDriveFile(driveFile));
          }
        case LocalPostFile():
          ref
              .read(
                attachesNotifierProvider(
                  account,
                  noteId: noteId,
                  gallery: gallery,
                  chat: chat,
                ).notifier,
              )
              .replace(index, file.copyWith(name: result));
      }
    }
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _updateIsSensitive(
    WidgetRef ref,
    int index,
    bool isSensitive,
  ) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    )[index];
    switch (file) {
      case DrivePostFile():
        final driveFile = await futureWithDialog(
          ref.context,
          ref
              .read(misskeyProvider(account))
              .drive
              .files
              .update(
                DriveFilesUpdateRequest(
                  fileId: file.file.id,
                  isSensitive: isSensitive,
                ),
              ),
        );
        if (driveFile != null) {
          ref
              .read(
                attachesNotifierProvider(
                  account,
                  noteId: noteId,
                  gallery: gallery,
                  chat: chat,
                ).notifier,
              )
              .replace(index, DrivePostFile.fromDriveFile(driveFile));
        }
      case LocalPostFile():
        ref
            .read(
              attachesNotifierProvider(
                account,
                noteId: noteId,
                gallery: gallery,
                chat: chat,
              ).notifier,
            )
            .replace(index, file.copyWith(isSensitive: isSensitive));
    }
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _describeFile(WidgetRef ref, int index) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    )[index];
    final result = await showDialog<String>(
      context: ref.context,
      builder: (context) => FileCaptionEditDialog(file: file),
    );
    if (!ref.context.mounted) return;
    if (result != null && result != file.comment) {
      switch (file) {
        case DrivePostFile():
          final driveFile = await futureWithDialog(
            ref.context,
            ref
                .read(misskeyProvider(account))
                .drive
                .files
                .update(
                  DriveFilesUpdateRequest(
                    fileId: file.file.id,
                    comment: result,
                  ),
                ),
          );
          if (driveFile != null) {
            ref
                .read(
                  attachesNotifierProvider(
                    account,
                    noteId: noteId,
                    gallery: gallery,
                    chat: chat,
                  ).notifier,
                )
                .replace(index, DrivePostFile.fromDriveFile(driveFile));
          }
        case LocalPostFile():
          ref
              .read(
                attachesNotifierProvider(
                  account,
                  noteId: noteId,
                  gallery: gallery,
                  chat: chat,
                ).notifier,
              )
              .replace(index, file.copyWith(comment: result));
      }
    }
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  Future<void> _editImage(WidgetRef ref, int index) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    )[index];
    final data = await switch (file) {
      LocalPostFile(:final file) => file,
      DrivePostFile(:final file) =>
        await ref.read(cacheManagerProvider).getSingleFile(file.url),
    }.readAsBytes();
    if (!ref.context.mounted) return;
    final result = await ref.context.push<Uint8List>(
      '/$account/image',
      extra: data,
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      final tempDirectory = await ref
          .read(fileSystemProvider)
          .systemTempDirectory
          .createTemp();
      final tempFile = tempDirectory.childFile(file.name);
      await tempFile.writeAsBytes(result);
      ref
          .read(
            attachesNotifierProvider(
              account,
              noteId: noteId,
              gallery: gallery,
              chat: chat,
            ).notifier,
          )
          .replace(
            index,
            LocalPostFile.fromFile(
              tempFile,
              name: file.name,
              isSensitive: file.isSensitive,
              comment: file.comment,
            ),
          );
    }
    if (!ref.context.mounted) return;
    ref.context.pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ),
    );
    final uploading = files.any(
      (file) => file is LocalPostFile && file.uploading,
    );

    return ReorderableGridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: maxCrossAxisExtent,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: (oldIndex, newIndex) => ref
          .read(
            attachesNotifierProvider(
              account,
              noteId: noteId,
              gallery: gallery,
              chat: chat,
            ).notifier,
          )
          .reorder(oldIndex, newIndex),
      itemDragEnable: (_) => !uploading,
      proxyDecorator: (child, _, animation) => AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          final animValue = Curves.easeInOut.transform(animation.value);
          final elevation = lerpDouble(0.0, 6.0, animValue)!;
          return Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.transparent,
            child: child,
          );
        },
        child: child,
      ),
      children: List.generate(
        files.length,
        (index) => _PostFormAttach(
          key: ValueKey(index),
          account: account,
          index: index,
          noteId: noteId,
          gallery: gallery,
          chat: chat,
          onTap: !uploading
              ? () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(title: Text(files[index].name)),
                      const Divider(height: 0.0),
                      if (files[index].type?.startsWith('image/') ?? false)
                        ListTile(
                          leading: const Icon(Icons.visibility),
                          title: Text(t.aria.showImage),
                          onTap: () => switch (files[index]) {
                            LocalPostFile(:final file) => showImageDialog(
                              context,
                              file: file,
                            ),
                            DrivePostFile(:final file) =>
                              showImageGalleryDialog(context, files: [file]),
                          },
                        ),
                      if (files[index].type?.startsWith('video/') ?? false)
                        ListTile(
                          leading: const Icon(Icons.play_arrow),
                          title: Text(t.aria.playVideo),
                          onTap: () => showDialog<void>(
                            context: context,
                            builder: (context) => VideoDialog(
                              url: switch (files[index]) {
                                DrivePostFile(:final file) => file.url,
                                _ => null,
                              },
                              file: switch (files[index]) {
                                LocalPostFile(:final file) => file,
                                _ => null,
                              },
                              fileName: files[index].name,
                            ),
                          ),
                        ),
                      if (files[index].type?.startsWith('audio/') ?? false)
                        if (files[index] case DrivePostFile(:final file))
                          ListTile(
                            leading: const Icon(Icons.play_arrow),
                            title: Text(t.aria.playAudio),
                            onTap: () => showDialog<void>(
                              context: context,
                              builder: (context) =>
                                  AudioDialog(account: account, file: file),
                            ),
                          ),
                      ListTile(
                        leading: const Icon(Icons.edit),
                        title: Text(t.misskey.renameFile),
                        onTap: () => _renameFile(ref, index),
                      ),
                      if (files[index].isSensitive)
                        ListTile(
                          leading: const Icon(Icons.visibility),
                          title: Text(t.misskey.unmarkAsSensitive),
                          onTap: () => _updateIsSensitive(ref, index, false),
                        )
                      else
                        ListTile(
                          leading: const Icon(Icons.visibility_off),
                          title: Text(t.misskey.markAsSensitive),
                          onTap: () => _updateIsSensitive(ref, index, true),
                        ),
                      ListTile(
                        leading: const Icon(Icons.edit_note),
                        title: Text(t.misskey.describeFile),
                        onTap: () => _describeFile(ref, index),
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
                                attachesNotifierProvider(
                                  account,
                                  noteId: noteId,
                                  gallery: gallery,
                                  chat: chat,
                                ).notifier,
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
    this.noteId,
    required this.gallery,
    required this.chat,
    this.onTap,
  });

  final Account account;
  final int index;
  final String? noteId;
  final bool gallery;
  final bool chat;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
        chat: chat,
      ).select((files) => files[index]),
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style;

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: PostFileThumbnail(file: file, fit: BoxFit.contain),
            ),
            if (file case LocalPostFile(uploading: true))
              const CircularProgressIndicator()
            else if (file case LocalPostFile(uploading: false))
              IconButton.filled(
                color: Theme.of(context).colorScheme.onPrimary,
                onPressed: () => ref
                    .read(
                      attachesNotifierProvider(
                        account,
                        noteId: noteId,
                        gallery: gallery,
                        chat: chat,
                      ).notifier,
                    )
                    .upload(index),
                icon: const Icon(Icons.upload),
              ),
            PositionedDirectional(
              start: 8.0,
              top: 8.0,
              child: DefaultTextStyle.merge(
                style: style.apply(
                  color: colors.accentLighten,
                  fontSizeFactor: 0.8,
                ),
                child: Column(
                  children: [
                    if (file.type?.startsWith('video/') ?? false)
                      if (file case DrivePostFile(
                        file: DriveFile(thumbnailUrl: _?),
                      ))
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Tooltip(
                                message: t.misskey.video,
                                child: Icon(
                                  Icons.movie,
                                  color: colors.accentLighten,
                                  size: style.lineHeight * 0.8,
                                ),
                              ),
                            ),
                          ),
                        ),
                    if (file.type case 'image/gif' || 'image/apng')
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text('GIF'),
                          ),
                        ),
                      ),
                    if (file case PostFile(:final comment?))
                      if (comment.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Tooltip(
                                message: comment,
                                child: const Text('ALT'),
                              ),
                            ),
                          ),
                        ),
                    if (file.isSensitive)
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Tooltip(
                              message: t.misskey.sensitive,
                              child: Icon(
                                Icons.warning_amber,
                                color: colors.warn,
                                size: style.lineHeight * 0.8,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            PositionedDirectional(
              end: 8.0,
              bottom: 8.0,
              child: Opacity(
                opacity: 0.8,
                child: IconButton(
                  style: IconButton.styleFrom(
                    iconSize: 18.0,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    foregroundColor: colors.bg,
                    backgroundColor: colors.fg,
                  ),
                  onPressed: onTap,
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
