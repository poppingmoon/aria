import 'dart:math';

import 'package:flutter/material.dart';

extension ScrollControllerExtension on ScrollController {
  Future<void> scrollToTop({
    Duration duration = const Duration(milliseconds: 300),
  }) async {
    if (!hasClients) return;
    final extentBefore = position.extentBefore;
    if (extentBefore == 0.0) return;
    await animateTo(
      max(position.minScrollExtent, offset - 10000.0),
      duration: duration,
      curve: Curves.ease,
    );
    jumpTo(position.minScrollExtent);
  }
}
