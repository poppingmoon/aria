import 'dart:typed_data';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';
import '../../util/edit_image.dart';
import '../../util/future_with_dialog.dart';

class CropImagePage extends HookWidget {
  const CropImagePage({super.key, required this.image, this.aspectRatio});

  final Uint8List image;
  final double? aspectRatio;

  @override
  Widget build(BuildContext context) {
    final editorKey = useMemoized(
      () => GlobalKey<ExtendedImageEditorState>(),
      [],
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.cropImage)),
      body: ExtendedImage.memory(
        image,
        fit: BoxFit.contain,
        mode: ExtendedImageMode.editor,
        extendedImageEditorKey: editorKey,
        cacheRawData: true,
        initEditorConfigHandler: (ExtendedImageState? state) =>
            EditorConfig(cropAspectRatio: aspectRatio),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.done,
        onPressed: () async {
          final state = editorKey.currentState;
          final cropRect = state?.getCropRect();
          if (cropRect == null) return;
          final result = await futureWithDialog(context, crop(image, cropRect));
          if (!context.mounted) return;
          if (result != null) {
            context.pop(result);
          }
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
