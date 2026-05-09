import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/post_file.dart';
import '../../provider/api/misskey_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/post_file_thumbnail.dart';
import 'audio_dialog.dart';
import 'file_caption_edit_dialog.dart';
import 'image_dialog.dart';
import 'image_gallery_dialog.dart';
import 'video_dialog.dart';

class MissingFileCommentDialog extends ConsumerWidget {
  const MissingFileCommentDialog({
    super.key,
    required this.account,
    required this.file,
  });

  final Account account;
  final PostFile file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final aspectRatio = switch (file) {
      DrivePostFile(
        file: DriveFile(
          properties: DriveFileProperties(:final width?, :final height?),
        ),
      ) =>
        width / height,
      _ => 16 / 9,
    };
    final theme = Theme.of(context);

    return AlertDialog(
      icon: const Icon(Icons.help_outline, size: 36.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8.0,
        children: [
          Text(t.aria.missingFileCommentWarning),
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double.maxFinite,
              minHeight: 90.0,
              maxHeight: 360.0,
            ),
            child: AspectRatio(
              aspectRatio: aspectRatio,
              child: Card(
                margin: EdgeInsets.zero,
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: switch (file.type) {
                    final type? when type.startsWith('image/') =>
                      () => switch (file) {
                        LocalPostFile(:final file) => showImageDialog(
                          context,
                          file: file,
                        ),
                        DrivePostFile(:final file) => showImageGalleryDialog(
                          context,
                          files: [file],
                        ),
                      },
                    final type? when type.startsWith('video/') =>
                      () => showDialog<void>(
                        context: context,
                        builder: (context) => VideoDialog(
                          url: switch (file) {
                            DrivePostFile(:final file) => file.url,
                            _ => null,
                          },
                          file: switch (file) {
                            LocalPostFile(:final file) => file,
                            _ => null,
                          },
                          fileName: file.name,
                          thumbnailUrl: switch (file) {
                            DrivePostFile(:final file) => file.thumbnailUrl,
                            _ => null,
                          },
                        ),
                      ),
                    final type? when type.startsWith('audio/') =>
                      () => showDialog<void>(
                        context: context,
                        builder: (context) => AudioDialog(
                          account: account,
                          url: switch (file) {
                            DrivePostFile(:final file) => file.url,
                            _ => null,
                          },
                          file: switch (file) {
                            LocalPostFile(:final file) => file,
                            _ => null,
                          },
                          fileName: file.name,
                          user: switch (file) {
                            DrivePostFile(:final file) => file.user,
                            _ => null,
                          },
                        ),
                      ),
                    _ => null,
                  },
                  onLongPress: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => ListView(
                      shrinkWrap: true,
                      children: [ListTile(title: Text(file.name))],
                    ),
                  ),
                  child: PostFileThumbnail(
                    height: 360.0,
                    file: file,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () async {
            final result = await showDialog<String>(
              context: context,
              builder: (context) =>
                  FileCaptionEditDialog(account: account, file: file),
            );
            if (!ref.context.mounted) return;
            if (result != null && result.isNotEmpty) {
              final file = this.file;
              switch (file) {
                case LocalPostFile():
                  context.pop((file.copyWith(comment: result),));
                case DrivePostFile():
                  final driveFile = await futureWithDialog(
                    ref.context,
                    ref
                        .read(misskeyProvider(account))
                        .apiService
                        .post<Map<String, dynamic>>(
                          'drive/files/update',
                          DriveFilesUpdateRequest(
                            fileId: file.file.id,
                            comment: result.isNotEmpty ? result : null,
                          ).toJson(),
                          excludeRemoveNullPredicate: (key, _) =>
                              key == 'comment',
                        )
                        .then(DriveFile.fromJson),
                  );
                  if (!context.mounted) return;
                  if (driveFile != null) {
                    context.pop((DrivePostFile.fromDriveFile(driveFile),));
                  }
              }
            }
          },
          child: Text(t.misskey.describeFile),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop((null,)),
          child: Text(t.misskey.doNothing),
        ),
      ],
    );
  }
}
