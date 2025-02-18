import 'dart:ui';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/layer.dart';

part 'overlay_layers_notifier_provider.g.dart';

@riverpod
class OverlayLayersNotifier extends _$OverlayLayersNotifier {
  @override
  List<Layer> build() {
    return [];
  }

  void add(Layer layer) {
    state = [layer, ...state];
  }

  Layer remove(int index) {
    final layer = state[index];
    state = [...state.sublist(0, index), ...state.sublist(index + 1)];
    return layer;
  }

  void removeAll() {
    state = [];
  }

  Future<void> reorder(int oldIndex, int newIndex) async {
    final items = state.toList();
    final item = items.removeAt(oldIndex);
    items.insert(oldIndex < newIndex ? newIndex - 1 : newIndex, item);
    state = items;
  }

  void setOffset(int index, Offset offset) {
    final layer = state[index];
    state = [
      ...state.sublist(0, index),
      switch (layer) {
        ImageLayer() => layer.copyWith(offset: offset),
        TextLayer() => layer.copyWith(offset: offset),
        DrawLayer() => layer.copyWith(offset: offset),
      },
      ...state.sublist(index + 1),
    ];
  }

  void setScale(int index, double scale) {
    final layer = state[index];
    state = [
      ...state.sublist(0, index),
      switch (layer) {
        ImageLayer() => layer.copyWith(scale: scale),
        TextLayer() => layer.copyWith(scale: scale),
        DrawLayer() => layer.copyWith(scale: scale),
      },
      ...state.sublist(index + 1),
    ];
  }

  void setAngle(int index, double angle) {
    final layer = state[index];
    state = [
      ...state.sublist(0, index),
      switch (layer) {
        ImageLayer() => layer.copyWith(angle: angle),
        TextLayer() => layer.copyWith(angle: angle),
        DrawLayer() => layer.copyWith(angle: angle),
      },
      ...state.sublist(index + 1),
    ];
  }

  void setFlipX(int index, bool flipX) {
    final layer = state[index];
    state = [
      ...state.sublist(0, index),
      switch (layer) {
        ImageLayer() => layer.copyWith(flipX: flipX),
        TextLayer() => layer.copyWith(flipX: flipX),
        DrawLayer() => layer.copyWith(flipX: flipX),
      },
      ...state.sublist(index + 1),
    ];
  }

  void setOpacity(int index, double opacity) {
    final layer = state[index];
    if (layer is ImageLayer) {
      state = [
        ...state.sublist(0, index),
        layer.copyWith(opacity: opacity),
        ...state.sublist(index + 1),
      ];
    }
  }

  void setColor(int index, Color color) {
    final layer = state[index];
    state = [
      ...state.sublist(0, index),
      switch (layer) {
        TextLayer() => layer.copyWith(color: color),
        DrawLayer() => layer.copyWith(color: color),
        _ => layer,
      },
      ...state.sublist(index + 1),
    ];
  }

  void setBackgroundColor(int index, Color backgroundColor) {
    final layer = state[index];
    if (layer is TextLayer) {
      state = [
        ...state.sublist(0, index),
        layer.copyWith(backgroundColor: backgroundColor),
        ...state.sublist(index + 1),
      ];
    }
  }

  void setOffsets(int index, List<Offset?> offsets) {
    final layer = state[index];
    if (layer is DrawLayer) {
      state = [
        ...state.sublist(0, index),
        layer.copyWith(offsets: offsets),
        ...state.sublist(index + 1),
      ];
    }
  }

  void setStrokeWidth(int index, double strokeWidth) {
    final layer = state[index];
    if (layer is DrawLayer) {
      state = [
        ...state.sublist(0, index),
        layer.copyWith(strokeWidth: strokeWidth),
        ...state.sublist(index + 1),
      ];
    }
  }
}
