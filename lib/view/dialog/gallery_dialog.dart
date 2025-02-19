import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/my_gallery_posts_notifier_provider.dart';
import '../../model/post_file.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/error_message.dart';

class GalleryDialog extends ConsumerWidget {
  const GalleryDialog({super.key, required this.account, required this.files});

  final Account account;
  final List<DriveFile> files;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(myGalleryPostsNotifierProvider(account));

    return SimpleDialog(
      title: Text(t.misskey.gallery),
      children: [
        ...switch (posts) {
          AsyncValue(valueOrNull: final posts?) => posts.items.map(
            (post) => CheckboxListTile(
              title: Text(post.title),
              value: files.every((file) => post.fileIds.contains(file.id)),
              onChanged: (value) async {
                if (value == null) return;
                final fileIds =
                    value
                        ? {
                          ...post.fileIds,
                          ...files.map((file) => file.id),
                        }.toList()
                        : post.fileIds
                            .where(
                              (fileId) =>
                                  files.every((file) => file.id != fileId),
                            )
                            .toList();
                await futureWithDialog(
                  context,
                  ref
                      .read(myGalleryPostsNotifierProvider(account).notifier)
                      .updatePost(
                        postId: post.id,
                        title: post.title,
                        description: post.description,
                        fileIds: fileIds,
                        isSensitive: post.isSensitive,
                      ),
                );
              },
            ),
          ),
          AsyncValue(:final error?, :final stackTrace) => [
            ErrorMessage(error: error, stackTrace: stackTrace),
          ],
          _ => [const Center(child: CircularProgressIndicator())],
        },
        ListTile(
          leading: const Icon(Icons.add),
          title: Text(t.misskey.create),
          onTap: () async {
            final sub = ref.listenManual(
              attachesNotifierProvider(account, gallery: true),
              (_, __) {},
            );
            ref
                .read(attachesNotifierProvider(account, gallery: true).notifier)
                .addAll(files.map((file) => DrivePostFile.fromDriveFile(file)));
            await context.push('/$account/gallery/new');
            sub.close();
          },
        ),
      ],
    );
  }
}
