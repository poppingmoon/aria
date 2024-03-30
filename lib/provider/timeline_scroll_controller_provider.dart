import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/tab_settings.dart';

part 'timeline_scroll_controller_provider.g.dart';

@riverpod
Raw<ScrollController> timelineScrollController(
  TimelineScrollControllerRef ref,
  TabSettings tabSettings,
) {
  final controller = ScrollController();
  ref.onDispose(() => controller.dispose());
  return controller;
}
