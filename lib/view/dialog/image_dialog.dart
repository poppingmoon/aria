import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:photo_view/photo_view.dart';

import '../../i18n/strings.g.dart';
import '../../provider/cache_manager_provider.dart';
import '../../util/future_with_dialog.dart';
import 'message_dialog.dart';

Future<void> showImageDialog(
  BuildContext context, {
  String? url,
  File? file,
}) {
  return showDialog(
    context: context,
    builder: (context) => ImageDialog(url: url, file: file),
    useSafeArea: false,
  );
}

class ImageDialog extends HookConsumerWidget {
  const ImageDialog({
    super.key,
    this.url,
    this.file,
  });

  final String? url;
  final File? file;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Dismissible(
          key: const ValueKey(''),
          direction: DismissDirection.vertical,
          onDismissed: (_) => context.pop(),
          child: PhotoView(
            imageProvider: file != null
                ? FileImage(file!) as ImageProvider
                : url != null
                    ? CachedNetworkImageProvider(
                        url!,
                        cacheManager: ref.watch(cacheManagerProvider),
                      )
                    : null,
            backgroundDecoration:
                const BoxDecoration(color: Colors.transparent),
          ),
        ),
        SafeArea(
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.white54),
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
          ),
        ),
        if (url != null)
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.white54),
                  onPressed: () async {
                    if (!await Gal.requestAccess()) {
                      if (!context.mounted) return;
                      await showMessageDialog(
                        context,
                        t.misskey.permissionDeniedError,
                      );
                      return;
                    }
                    if (!context.mounted) return;
                    await futureWithDialog(
                      context,
                      Future(() async {
                        final file = await ref
                            .read(cacheManagerProvider)
                            .getSingleFile(url!);
                        await Gal.putImage(file.path);
                      }),
                      message: t.aria.downloaded,
                    );
                  },
                  icon: const Icon(Icons.save),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
