import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/post_file.dart';
import '../../../provider/api/attaches_notifier_provider.dart';
import '../../../provider/api/gallery_post_notifier_provider.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../widget/file_picker_sheet.dart';
import '../../widget/post_form_attaches.dart';

class GalleryEditPage extends HookConsumerWidget {
  const GalleryEditPage({super.key, required this.account, this.postId});

  final Account account;
  final String? postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final files = ref.watch(attachesNotifierProvider(account, gallery: true));
    final post = postId != null
        ? ref.watch(galleryPostNotifierProvider(account, postId!)).valueOrNull
        : null;
    final title = useState('');
    final description = useState<String?>(null);
    final isSensitive = useState(false);
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController(
      text: post?.description,
    );
    final canSave = files.isNotEmpty && title.value.isNotEmpty;
    useEffect(() {
      if (post != null) {
        Future(
          () => ref
              .read(attachesNotifierProvider(account, gallery: true).notifier)
              .addAll(
                post.files.map((file) => DrivePostFile.fromDriveFile(file)),
              ),
        );
        title.value = post.title;
        description.value = post.description;
        isSensitive.value = post.isSensitive;
        titleController.text = post.title;
        descriptionController.text = post.description ?? '';
      }
      return;
    }, [post]);
    useEffect(() {
      titleController.addListener(() => title.value = titleController.text);
      descriptionController.addListener(
        () => description.value = descriptionController.text,
      );
      return;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(postId == null ? t.misskey.postToGallery : t.misskey.edit),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 4.0),
          ListTile(
            title: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: t.misskey.title),
                textInputAction: TextInputAction.next,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          ListTile(
            title: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: t.misskey.description,
                  alignLabelWithHint: true,
                ),
                textInputAction: TextInputAction.next,
                minLines: 3,
                maxLines: 10,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          ListTile(
            title: Text(t.misskey.files),
            trailing: Text(
              '${files.length}/32',
              style: TextStyle(
                color: files.isEmpty || files.length > 32
                    ? Theme.of(context).colorScheme.error
                    : null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: PostFormAttaches(account: account, gallery: true),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () async {
                final files = await showModalBottomSheet<List<PostFile>>(
                  context: context,
                  builder: (context) => FilePickerSheet(
                    account: account,
                    type: FileType.image,
                    allowMultiple: true,
                  ),
                  clipBehavior: Clip.hardEdge,
                );
                if (files != null) {
                  ref
                      .read(
                        attachesNotifierProvider(
                          account,
                          gallery: true,
                        ).notifier,
                      )
                      .addAll(files);
                }
              },
              icon: const Icon(Icons.add),
              label: Text(t.misskey.attachFile),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.markAsSensitive),
            value: isSensitive.value,
            onChanged: (value) => isSensitive.value = value,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.save,
        backgroundColor: Theme.of(
          context,
        ).colorScheme.primary.withValues(alpha: canSave ? 1.0 : 0.5),
        disabledElevation: 0.0,
        onPressed: canSave
            ? () async {
                final files = await futureWithDialog(
                  context,
                  ref
                      .read(
                        attachesNotifierProvider(
                          account,
                          gallery: true,
                        ).notifier,
                      )
                      .uploadAll(),
                );
                if (files == null) return;
                if (!context.mounted) return;
                if (postId == null) {
                  final result = await futureWithDialog(
                    context,
                    ref
                        .read(misskeyProvider(account))
                        .gallery
                        .posts
                        .create(
                          GalleryPostsCreateRequest(
                            title: title.value,
                            description: description.value,
                            fileIds: files.map((file) => file.id).toList(),
                            isSensitive: isSensitive.value,
                          ),
                        ),
                  );
                  if (!context.mounted) return;
                  if (result != null) {
                    context.pop();
                  }
                } else {
                  final result = await futureWithDialog(
                    context,
                    ref
                        .read(misskeyProvider(account))
                        .gallery
                        .posts
                        .update(
                          GalleryPostsUpdateRequest(
                            postId: postId!,
                            title: title.value,
                            description: description.value,
                            fileIds: files.map((file) => file.id).toList(),
                            isSensitive: isSensitive.value,
                          ),
                        ),
                  );
                  if (!context.mounted) return;
                  if (result != null) {
                    context.pop();
                  }
                }
              }
            : null,
        child: const Icon(Icons.save),
      ),
    );
  }
}
