import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/post_file.dart';

class PostFileEditorDialog extends HookWidget {
  const PostFileEditorDialog({super.key, required this.file});

  final PostFile file;

  @override
  Widget build(BuildContext context) {
    final file = this.file;
    final nameController = useTextEditingController(text: file.name);
    final commentController = useTextEditingController(text: file.comment);
    final isSensitive = useState(file.isSensitive);

    return AlertDialog(
      title: Text(t.aria.editFile),
      content: Shortcuts(
        shortcuts: disablingTextShortcuts,
        child: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: t.misskey.fileName,
                  hintText: t.misskey.inputNewFileName,
                  suffixIcon: IconButton(
                    onPressed: () => nameController.text =
                        '${const Uuid().v4()}.${file.name.split('.').last}',
                    icon: const Icon(Icons.casino),
                  ),
                ),
                textInputAction: TextInputAction.next,
              ),
              TextField(
                controller: commentController,
                decoration: InputDecoration(
                  labelText: t.misskey.caption,
                  hintText: t.misskey.inputNewDescription,
                ),
                maxLines: null,
              ),
              SwitchListTile(
                title: Text(t.misskey.markAsSensitive),
                value: isSensitive.value,
                onChanged: (value) => isSensitive.value = value,
              ),
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(
            switch (file) {
              LocalPostFile() => file.copyWith(
                  name: nameController.text,
                  isSensitive: isSensitive.value,
                  comment: commentController.text,
                ),
              DrivePostFile() => file.copyWith(
                  name: nameController.text,
                  isSensitive: isSensitive.value,
                  comment: commentController.text,
                ),
            },
          ),
          child: Text(t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
