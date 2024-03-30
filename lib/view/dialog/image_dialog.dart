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

class ImageDialog extends HookConsumerWidget {
  const ImageDialog({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Dismissible(
          key: const ValueKey(''),
          direction: DismissDirection.vertical,
          onDismissed: (_) => context.pop(),
          child: PhotoView(
            imageProvider: CachedNetworkImageProvider(
              url,
              cacheManager: ref.watch(cacheManagerProvider),
            ),
            backgroundDecoration:
                const BoxDecoration(color: Colors.transparent),
          ),
        ),
        Align(
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
        Align(
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
                    final file =
                        await ref.read(cacheManagerProvider).getSingleFile(url);
                    await Gal.putImage(file.path);
                  }),
                  message: t.aria.downloaded,
                );
              },
              icon: const Icon(Icons.save),
            ),
          ),
        ),
      ],
    );
  }
}
