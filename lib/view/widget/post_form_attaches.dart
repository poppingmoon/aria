import 'dart:typed_data';
import 'dart:ui';

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
import '../dialog/image_dialog.dart';
import '../dialog/post_file_editor_dialog.dart';
import '../dialog/video_dialog.dart';
import 'post_file_thumbnail.dart';

class PostFormAttaches extends ConsumerWidget {
  const PostFormAttaches({
    super.key,
    required this.account,
    this.noteId,
    this.gallery = false,
  });

  final Account account;
  final String? noteId;
  final bool gallery;

  Future<void> _editFile(WidgetRef ref, int index) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
      ),
    )[index];
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
              .read(
                attachesNotifierProvider(
                  account,
                  noteId: noteId,
                  gallery: gallery,
                ).notifier,
              )
              .replace(index, DrivePostFile.fromDriveFile(driveFile));
        }
      } else {
        ref
            .read(
              attachesNotifierProvider(
                account,
                noteId: noteId,
                gallery: gallery,
              ).notifier,
            )
            .replace(index, result);
      }
    }
  }

  Future<void> _editImage(WidgetRef ref, int index) async {
    final file = ref.read(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
      ),
    )[index];
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
      ref
          .read(
            attachesNotifierProvider(
              account,
              noteId: noteId,
              gallery: gallery,
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
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
      ),
    );
    final uploading =
        files.any((file) => file is LocalPostFile && file.uploading);

    return ReorderableGridView.extent(
      shrinkWrap: true,
      maxCrossAxisExtent: 200,
      physics: const NeverScrollableScrollPhysics(),
      onReorder: (oldIndex, newIndex) => ref
          .read(
            attachesNotifierProvider(
              account,
              noteId: noteId,
              gallery: gallery,
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
                            onTap: () => showDialog<void>(
                              context: context,
                              builder: (context) => ImageDialog(
                                url: switch (files[index]) {
                                  DrivePostFile(:final file) => file.url,
                                  _ => null,
                                },
                                file: switch (files[index]) {
                                  LocalPostFile(:final file) => file,
                                  _ => null,
                                },
                              ),
                            ),
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
                                builder: (context) => AudioDialog(
                                  account: account,
                                  file: file,
                                ),
                              ),
                            ),
                        ListTile(
                          leading: const Icon(Icons.edit),
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
                                  attachesNotifierProvider(
                                    account,
                                    noteId: noteId,
                                    gallery: gallery,
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
    this.onTap,
  });

  final Account account;
  final int index;
  final String? noteId;
  final bool gallery;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final file = ref.watch(
      attachesNotifierProvider(
        account,
        noteId: noteId,
        gallery: gallery,
      ).select((files) => files[index]),
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
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
                      ).notifier,
                    )
                    .upload(index),
                icon: const Icon(Icons.upload),
              ),
            Positioned(
              left: 8.0,
              top: 8.0,
              child: DefaultTextStyle.merge(
                style: style.apply(
                  color: colors.accentLighten,
                  fontSizeFactor: 0.8,
                ),
                child: Column(
                  children: [
                    if (file.type?.startsWith('video/') ?? false)
                      if (file
                          case DrivePostFile(file: DriveFile(thumbnailUrl: _?)))
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
            Positioned(
              right: 8.0,
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
