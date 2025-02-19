import 'dart:math';
import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/layer.dart';
import '../../provider/overlay_layers_notifier_provider.dart';
import 'reorderable_drag_start_listener_wrapper.dart';

class LayersSheet extends ConsumerWidget {
  const LayersSheet({super.key, required this.backgroundLayer});

  final ImageLayer backgroundLayer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overlayLayers = ref.watch(overlayLayersNotifierProvider);
    const leadingSize = 32.0;

    return ReorderableListView.builder(
      itemBuilder: (context, index) {
        if (index < overlayLayers.length) {
          final layer = overlayLayers[index];
          return ReorderableDragStartListenerWrapper(
            key: ValueKey(index),
            index: index,
            child: ListTile(
              leading: switch (layer) {
                ImageLayer() => ExtendedImage.memory(
                  layer.data,
                  width: leadingSize,
                  height: leadingSize,
                ),
                TextLayer() => Icon(
                  Icons.text_fields,
                  size: leadingSize,
                  color: layer.color,
                ),
                DrawLayer() => Icon(
                  Icons.gesture,
                  size: leadingSize,
                  color: layer.color,
                ),
              },
              title: Text(switch (layer) {
                ImageLayer() => t.misskey.image,
                TextLayer() => layer.text,
                DrawLayer() => t.aria.draw,
              }),
              trailing: IconButton(
                onPressed:
                    () => ref
                        .read(overlayLayersNotifierProvider.notifier)
                        .remove(index),
                icon: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              onTap:
                  () => showModalBottomSheet<void>(
                    context: context,
                    builder:
                        (context) => _LayerSheet(
                          backgroundLayer: backgroundLayer,
                          index: index,
                        ),
                  ),
            ),
          );
        } else {
          return ReorderableDragStartListenerWrapper(
            key: ValueKey(index),
            index: index,
            enabled: false,
            child: ListTile(
              leading: ExtendedImage.memory(
                backgroundLayer.data,
                width: leadingSize,
                height: leadingSize,
              ),
              title: Text(t.aria.background),
            ),
          );
        }
      },
      itemCount: overlayLayers.length + 1,
      onReorder: (oldIndex, newIndex) {
        ref
            .read(overlayLayersNotifierProvider.notifier)
            .reorder(oldIndex, newIndex);
      },
      shrinkWrap: true,
      buildDefaultDragHandles: false,
    );
  }
}

class _LayerSheet extends HookConsumerWidget {
  const _LayerSheet({required this.backgroundLayer, required this.index});

  final ImageLayer backgroundLayer;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layer = ref.watch(
      overlayLayersNotifierProvider.select((layers) => layers[index]),
    );
    const minAngle = -pi;
    const maxAngle = pi;
    final minOffsetX = layer is ImageLayer ? -layer.size.width.toDouble() : 0.0;
    final maxOffsetX = backgroundLayer.size.width.toDouble();
    final minOffsetY =
        layer is ImageLayer ? -layer.size.height.toDouble() : 0.0;
    final maxOffsetY = backgroundLayer.size.height.toDouble();
    const minScale = 0.0;
    const maxScale = 10.0;
    const minStrokeWidthFactor = 0.0;
    const maxStrokeWidthFactor = 5.0;
    final baseStrokeWidth = maxOffsetX / 100;
    final strokeWidthFactor = useState(
      layer is DrawLayer
          ? clampDouble(
            layer.strokeWidth / baseStrokeWidth,
            minStrokeWidthFactor,
            maxStrokeWidthFactor,
          )
          : 0.0,
    );

    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text(t.misskey.angle),
          subtitle: Slider(
            value: clampDouble(layer.angle, minAngle, maxAngle),
            onChanged:
                (value) => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setAngle(index, value),
            min: minAngle,
            max: maxAngle,
          ),
          trailing: IconButton(
            onPressed:
                () => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setAngle(index, 0.0),
            icon: const Icon(Icons.refresh),
          ),
        ),
        ListTile(
          title: Text('X ${t.misskey.position}'),
          subtitle: Slider(
            value: clampDouble(layer.offset.dx, minOffsetX, maxOffsetX),
            onChanged:
                (value) => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setOffset(index, Offset(value, layer.offset.dy)),
            min: minOffsetX,
            max: maxOffsetX,
          ),
          trailing: IconButton(
            onPressed:
                () => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setOffset(
                      index,
                      Offset((minOffsetX + maxOffsetX) / 2, layer.offset.dy),
                    ),
            icon: const Icon(Icons.refresh),
          ),
        ),
        ListTile(
          title: Text('Y ${t.misskey.position}'),
          subtitle: Slider(
            value: clampDouble(layer.offset.dy, minOffsetY, maxOffsetY),
            onChanged:
                (value) => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setOffset(index, Offset(layer.offset.dx, value)),
            min: minOffsetY,
            max: maxOffsetY,
          ),
          trailing: IconButton(
            onPressed:
                () => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setOffset(
                      index,
                      Offset(layer.offset.dx, (minOffsetY + maxOffsetY) / 2),
                    ),
            icon: const Icon(Icons.refresh),
          ),
        ),
        SwitchListTile(
          title: Text(t.misskey.flip),
          value: layer.flipX,
          onChanged:
              (value) => ref
                  .read(overlayLayersNotifierProvider.notifier)
                  .setFlipX(index, value),
        ),
        ListTile(
          title: Text(t.misskey.size),
          subtitle: Slider(
            value: clampDouble(layer.scale, minScale, maxScale),
            onChanged:
                (value) => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setScale(index, value),
            max: maxScale,
          ),
          trailing: IconButton(
            onPressed:
                () => ref
                    .read(overlayLayersNotifierProvider.notifier)
                    .setScale(index, 1.0),
            icon: const Icon(Icons.refresh),
          ),
        ),
        if (layer is ImageLayer)
          ListTile(
            title: Text(t.aria.opacity),
            subtitle: Slider(
              value: layer.opacity,
              onChanged:
                  (value) => ref
                      .read(overlayLayersNotifierProvider.notifier)
                      .setOpacity(index, value),
            ),
            trailing: IconButton(
              onPressed:
                  () => ref
                      .read(overlayLayersNotifierProvider.notifier)
                      .setOpacity(index, 1.0),
              icon: const Icon(Icons.refresh),
            ),
          ),
        if (layer case TextLayer(:final color) || DrawLayer(:final color))
          ListTile(
            title: Text(t.misskey.color),
            trailing: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
                shape: BoxShape.circle,
              ),
              child: const SizedBox(width: 28.0, height: 28.0),
            ),
            onTap: () async {
              final result = await showColorPickerDialog(
                context,
                color ?? Colors.white,
                pickersEnabled: {
                  ColorPickerType.primary: false,
                  ColorPickerType.accent: false,
                  ColorPickerType.wheel: true,
                },
                enableOpacity: true,
              );
              ref
                  .read(overlayLayersNotifierProvider.notifier)
                  .setColor(index, result);
            },
          ),
        if (layer is TextLayer)
          ListTile(
            title: Text(t.misskey.backgroundColor),
            trailing: DecoratedBox(
              decoration: BoxDecoration(
                color: layer.backgroundColor,
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: BorderRadius.circular(28.0),
              ),
              child: const SizedBox(width: 28.0, height: 28.0),
            ),
            onTap: () async {
              final result = await showColorPickerDialog(
                context,
                layer.backgroundColor ?? Colors.transparent,
                pickersEnabled: {
                  ColorPickerType.primary: false,
                  ColorPickerType.accent: false,
                  ColorPickerType.wheel: true,
                },
                enableOpacity: true,
              );
              ref
                  .read(overlayLayersNotifierProvider.notifier)
                  .setBackgroundColor(index, result);
            },
          ),
        if (layer is DrawLayer)
          ListTile(
            title: Text(t.misskey.width),
            subtitle: Slider(
              value: strokeWidthFactor.value,
              onChanged: (value) => strokeWidthFactor.value = value,
              onChangeEnd:
                  (value) => ref
                      .read(overlayLayersNotifierProvider.notifier)
                      .setStrokeWidth(index, value * baseStrokeWidth),
              max: maxStrokeWidthFactor,
            ),
            trailing: IconButton(
              onPressed:
                  () => ref
                      .read(overlayLayersNotifierProvider.notifier)
                      .setStrokeWidth(index, baseStrokeWidth),
              icon: const Icon(Icons.refresh),
            ),
          ),
      ],
    );
  }
}
