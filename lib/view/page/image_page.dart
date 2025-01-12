import 'dart:typed_data';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_size_getter/image_size_getter.dart';
import 'package:twemoji_v2/twemoji_v2.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/layer.dart';
import '../../model/post_file.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/emoji_url_provider.dart';
import '../../provider/overlay_layers_notifier_provider.dart';
import '../../util/edit_image.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/text_field_dialog.dart';
import '../widget/emoji_picker.dart';
import '../widget/file_picker_sheet.dart';
import '../widget/layers_sheet.dart';
import '../widget/layers_viewer.dart';

enum _Modes {
  move,
  crop,
  flip,
  rotate,
  draw,
  text,
  image,
  emoji,
}

class ImagePage extends HookConsumerWidget {
  const ImagePage({
    super.key,
    required this.account,
    required this.image,
  });

  final Account account;
  final Uint8List image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundLayer = useState(ImageLayer.fromData(image));
    final backgroundSize = backgroundLayer.value.size;
    final overlayLayers = ref.watch(overlayLayersNotifierProvider);
    final poppedLayers = useState(<Layer>[]);
    final images = useState(<Uint8List, Image>{});
    useEffect(
      () {
        Future(() async {
          final data = backgroundLayer.value.data;
          final image = await decodeImageFromList(data);
          images.value = {...images.value, data: image};
        });
        return;
      },
      [],
    );
    backgroundLayer.addListener(() async {
      final data = backgroundLayer.value.data;
      final image = await decodeImageFromList(data);
      images.value = {...images.value, data: image};
    });
    ref.listen(overlayLayersNotifierProvider, (_, layers) async {
      await Future.wait(
        layers.map((layer) async {
          if (layer case ImageLayer(:final data)) {
            final value = await decodeImageFromList(data);
            images.value = {...images.value, data: value};
          }
        }),
      );
    });
    final layersViewerKey =
        useMemoized(() => GlobalKey<LayersViewerState>(), []);
    final transformationController = useTransformationController();
    final selectedIndex = useState(0);
    final mode = _Modes.values[selectedIndex.value];
    final drawColor = useState(Colors.white);
    final strokeWidthFactor = useState(1.0);
    final strokeWidth = strokeWidthFactor.value * backgroundSize.width / 100;
    final strokeWidthIndicatorSize =
        strokeWidthFactor.value * MediaQuery.of(context).size.width / 100;

    return PopScope(
      canPop: image == backgroundLayer.value.data && overlayLayers.isEmpty,
      onPopInvokedWithResult: (_, __) async {
        final confirmed = await confirm(
          context,
          message: t.aria.discardChangesConfirm,
        );
        if (!context.mounted) return;
        if (confirmed) {
          context.pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.aria.editImage),
          actions: [
            IconButton(
              onPressed: () async {
                if (overlayLayers.isEmpty) {
                  context.pop(backgroundLayer.value.data);
                } else {
                  final data = await futureWithDialog(
                    context,
                    layersViewerKey.currentState?.exportImage(),
                  );
                  if (!context.mounted) return;
                  if (data != null) {
                    context.pop(data);
                  }
                }
              },
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: Column(
          children: [
            if (mode == _Modes.draw)
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      drawColor.value = await showColorPickerDialog(
                        context,
                        drawColor.value,
                        pickersEnabled: {
                          ColorPickerType.primary: false,
                          ColorPickerType.accent: false,
                          ColorPickerType.wheel: true,
                        },
                        enableOpacity: true,
                      );
                    },
                    icon: DecoratedBox(
                      decoration: BoxDecoration(
                        color: drawColor.value,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: SizedBox(
                        width: strokeWidthIndicatorSize,
                        height: strokeWidthIndicatorSize,
                      ),
                    ),
                  ),
                  Slider(
                    value: strokeWidthFactor.value,
                    max: 5.0,
                    onChanged: (value) => strokeWidthFactor.value = value,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: overlayLayers.firstOrNull is DrawLayer
                        ? () {
                            final layer = ref
                                .read(overlayLayersNotifierProvider.notifier)
                                .remove(0) as DrawLayer;
                            poppedLayers.value = [layer, ...poppedLayers.value];
                          }
                        : null,
                    icon: const Icon(Icons.undo),
                  ),
                  IconButton(
                    onPressed: poppedLayers.value.isNotEmpty
                        ? () {
                            final layer = poppedLayers.value.first;
                            poppedLayers.value = poppedLayers.value.sublist(1);
                            ref
                                .read(overlayLayersNotifierProvider.notifier)
                                .add(layer);
                          }
                        : null,
                    icon: const Icon(Icons.redo),
                  ),
                ],
              ),
            Expanded(
              child: LayersViewer(
                key: layersViewerKey,
                layers: [backgroundLayer.value, ...overlayLayers.reversed],
                images: images.value,
                panEnabled: mode == _Modes.move,
                scaleEnabled: mode == _Modes.move,
                onInteractionStart: (details) {
                  switch (mode) {
                    case _Modes.draw:
                      poppedLayers.value = [];
                      ref.read(overlayLayersNotifierProvider.notifier).add(
                            DrawLayer(
                              offset: transformationController
                                  .toScene(details.localFocalPoint),
                              color: drawColor.value,
                              strokeWidth: strokeWidth,
                            ),
                          );
                    case _Modes.text:
                      if (overlayLayers.firstOrNull is TextLayer) {
                        ref
                            .read(overlayLayersNotifierProvider.notifier)
                            .setOffset(
                              0,
                              transformationController
                                  .toScene(details.localFocalPoint),
                            );
                      }
                    case _Modes.image || _Modes.emoji:
                      if (overlayLayers.firstOrNull
                          case ImageLayer(:final size)) {
                        ref
                            .read(overlayLayersNotifierProvider.notifier)
                            .setOffset(
                              0,
                              transformationController
                                      .toScene(details.localFocalPoint) -
                                  Offset(size.width / 2, size.height / 2),
                            );
                      }
                    default:
                  }
                },
                onInteractionUpdate: (details) {
                  switch (mode) {
                    case _Modes.draw:
                      if (overlayLayers.firstOrNull
                          case DrawLayer(:final offsets, :final offset)) {
                        if (offsets.isEmpty || offsets.last != null) {
                          ref
                              .read(overlayLayersNotifierProvider.notifier)
                              .setOffsets(
                            0,
                            [
                              ...offsets,
                              transformationController
                                      .toScene(details.localFocalPoint) -
                                  offset,
                            ],
                          );
                        }
                      }
                    case _Modes.text:
                      if (overlayLayers.firstOrNull is TextLayer) {
                        if (details.pointerCount == 2) {
                          ref
                              .read(overlayLayersNotifierProvider.notifier)
                              .setScale(0, details.scale);
                        } else {
                          ref
                              .read(overlayLayersNotifierProvider.notifier)
                              .setOffset(
                                0,
                                transformationController
                                    .toScene(details.localFocalPoint),
                              );
                        }
                      }
                    case _Modes.image || _Modes.emoji:
                      if (overlayLayers.firstOrNull
                          case ImageLayer(:final size)) {
                        if (details.pointerCount == 2) {
                          ref
                              .read(overlayLayersNotifierProvider.notifier)
                              .setScale(0, details.scale);
                        } else {
                          ref
                              .read(overlayLayersNotifierProvider.notifier)
                              .setOffset(
                                0,
                                transformationController
                                        .toScene(details.localFocalPoint) -
                                    Offset(size.width / 2, size.height / 2),
                              );
                        }
                      }
                    default:
                  }
                },
                onInteractionEnd: (details) {
                  if (mode == _Modes.draw) {
                    if (overlayLayers.firstOrNull
                        case DrawLayer(:final offsets)) {
                      ref
                          .read(overlayLayersNotifierProvider.notifier)
                          .setOffsets(0, [...offsets, null]);
                    }
                  }
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex.value,
          destinations: [
            NavigationDestination(
              icon: const Icon(Icons.swipe),
              label: t.misskey.move,
            ),
            NavigationDestination(
              icon: const Icon(Icons.crop),
              label: t.aria.crop,
            ),
            NavigationDestination(
              icon: const Icon(Icons.flip),
              label: t.misskey.flip,
            ),
            NavigationDestination(
              icon: const Icon(Icons.rotate_right),
              label: t.aria.rotate,
            ),
            NavigationDestination(
              icon: const Icon(Icons.draw),
              label: t.aria.draw,
            ),
            NavigationDestination(
              icon: const Icon(Icons.text_fields),
              label: t.misskey.text,
            ),
            NavigationDestination(
              icon: const Icon(Icons.photo),
              label: t.misskey.image,
            ),
            NavigationDestination(
              icon: const Icon(Icons.mood),
              label: t.misskey.emoji,
            ),
          ],
          onDestinationSelected: (index) async {
            final mode = _Modes.values[index];
            poppedLayers.value = [];
            switch (mode) {
              case _Modes.move:
                selectedIndex.value = index;
              case _Modes.crop:
                final data = overlayLayers.isEmpty
                    ? backgroundLayer.value.data
                    : await futureWithDialog(
                          context,
                          layersViewerKey.currentState?.exportImage(),
                        ) ??
                        backgroundLayer.value.data;
                if (!context.mounted) return;
                final cropped = await context
                    .push<Uint8List>('/$account/image/crop', extra: data);
                if (cropped == null) return;
                backgroundLayer.value = ImageLayer.fromData(cropped);
                ref.read(overlayLayersNotifierProvider.notifier).removeAll();
                selectedIndex.value = 0;
              case _Modes.flip:
                final data = overlayLayers.isEmpty
                    ? backgroundLayer.value.data
                    : await futureWithDialog(
                          context,
                          layersViewerKey.currentState?.exportImage(),
                        ) ??
                        backgroundLayer.value.data;
                if (!context.mounted) return;
                final flipped = await futureWithDialog(context, flip(data));
                if (flipped == null) return;
                backgroundLayer.value = ImageLayer.fromData(flipped);
                ref.read(overlayLayersNotifierProvider.notifier).removeAll();
                selectedIndex.value = 0;
              case _Modes.rotate:
                final data = overlayLayers.isEmpty
                    ? backgroundLayer.value.data
                    : await futureWithDialog(
                          context,
                          layersViewerKey.currentState?.exportImage(),
                        ) ??
                        backgroundLayer.value.data;
                if (!context.mounted) return;
                final rotated = await futureWithDialog(context, rotate(data));
                if (rotated == null) return;
                backgroundLayer.value = ImageLayer.fromData(rotated);
                ref.read(overlayLayersNotifierProvider.notifier).removeAll();
                selectedIndex.value = 0;
              case _Modes.draw:
                selectedIndex.value = index;
              case _Modes.text:
                final result = await showTextFieldDialog(
                  context,
                  title: Text(t.misskey.text),
                  maxLines: null,
                );
                if (result == null) return;
                ref.read(overlayLayersNotifierProvider.notifier).add(
                      TextLayer(
                        text: result,
                        offset: Offset(
                          backgroundSize.width / 2,
                          backgroundSize.height / 2,
                        ),
                      ),
                    );
                selectedIndex.value = index;
              case _Modes.image:
                final file = await showModalBottomSheet<PostFile>(
                  context: context,
                  builder: (context) => FilePickerSheet(
                    account: account,
                    type: FileType.image,
                  ),
                  clipBehavior: Clip.hardEdge,
                );
                if (file == null) return;
                final data = await switch (file) {
                  LocalPostFile(:final file) => file,
                  DrivePostFile(:final file) => await ref
                      .read(cacheManagerProvider)
                      .getSingleFile(file.url),
                }
                    .readAsBytes();
                final imageSize =
                    ImageSizeGetter.getSizeResult(MemoryInput(data)).size;
                ref.read(overlayLayersNotifierProvider.notifier).add(
                      ImageLayer(
                        data: data,
                        size: imageSize,
                        offset: Offset(
                          (backgroundSize.width - imageSize.width) / 2,
                          (backgroundSize.height - imageSize.height) / 2,
                        ),
                      ),
                    );
                selectedIndex.value = index;
              case _Modes.emoji:
                final emoji = await pickEmoji(
                  ref,
                  account,
                  saveHistory: false,
                  confirmBeforePop: true,
                );
                if (emoji == null) return;
                if (emoji.startsWith(':')) {
                  final url = ref.read(emojiUrlProvider(account, emoji)).$2;
                  final file =
                      await ref.read(cacheManagerProvider).getSingleFile(url);
                  final data = await file.readAsBytes();
                  final imageSize =
                      ImageSizeGetter.getSizeResult(MemoryInput(data)).size;
                  ref.read(overlayLayersNotifierProvider.notifier).add(
                        ImageLayer(
                          data: data,
                          size: imageSize,
                          offset: Offset(
                            (backgroundSize.width - imageSize.width) / 2,
                            (backgroundSize.height - imageSize.height) / 2,
                          ),
                        ),
                      );
                } else {
                  final unicode = TwemojiUtils.toUnicode(emoji);
                  final url = Uri.https(
                    'raw.githubusercontent.com',
                    'jdecked/twemoji/main/assets/72x72/$unicode.png',
                  ).toString();
                  final file =
                      await ref.read(cacheManagerProvider).getSingleFile(url);
                  final data = await file.readAsBytes();
                  final imageSize =
                      ImageSizeGetter.getSizeResult(MemoryInput(data)).size;
                  ref.read(overlayLayersNotifierProvider.notifier).add(
                        ImageLayer(
                          data: data,
                          size: imageSize,
                          offset: Offset(
                            (backgroundSize.width - imageSize.width) / 2,
                            (backgroundSize.height - imageSize.height) / 2,
                          ),
                        ),
                      );
                }
                selectedIndex.value = index;
            }
          },
        ),
        floatingActionButton: FloatingActionButton.small(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withValues(alpha: 0.8),
          onPressed: () => showModalBottomSheet<void>(
            context: context,
            builder: (context) =>
                LayersSheet(backgroundLayer: backgroundLayer.value),
            clipBehavior: Clip.hardEdge,
          ),
          child: const Icon(Icons.layers),
        ),
      ),
    );
  }
}
