import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/post_file.dart';
import '../widget/post_file_thumbnail.dart';
import 'image_dialog.dart';
import 'video_dialog.dart';

class FileCaptionEditDialog extends HookWidget {
  const FileCaptionEditDialog({super.key, required this.file});

  final PostFile file;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: file.comment);

    return AlertDialog(
      title: Text(t.misskey.describeFile),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: switch (file.type) {
                final type? when type.startsWith('image/') => () =>
                    showDialog<void>(
                      context: context,
                      builder: (context) => ImageDialog(
                        url: switch (file) {
                          DrivePostFile(:final file) => file.url,
                          _ => null,
                        },
                        file: switch (file) {
                          LocalPostFile(:final file) => file,
                          _ => null,
                        },
                      ),
                    ),
                final type? when type.startsWith('video/') => () =>
                    showDialog<void>(
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
                      ),
                    ),
                _ => null,
              },
              child: PostFileThumbnail(
                file: file,
                height: 400.0,
                width: double.maxFinite,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Shortcuts(
            shortcuts: {
              ...disablingTextShortcuts,
              submitActivator:
                  VoidCallbackIntent(() => context.pop(controller.text)),
            },
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: t.misskey.caption,
                enabledBorder: Theme.of(context).inputDecorationTheme.border,
                alignLabelWithHint: true,
              ),
              onSubmitted: (value) => context.pop(value),
              maxLines: 5,
              autofocus: true,
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(controller.text),
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
