import 'package:flutter/material.dart';

extension ScrollControllerExtension on ScrollController {
  Future<void> scrollToTop() async {
    if (!hasClients) return;
    final extentBefore = position.extentBefore;
    if (extentBefore == 0.0) return;
    if (extentBefore < 10000.0) {
      await animateTo(
        position.minScrollExtent,
        duration: const Duration(milliseconds: 125),
        curve: Curves.ease,
      );
    } else {
      jumpTo(position.minScrollExtent);
    }
  }
}
