import 'package:flutter/material.dart';

extension ScrollControllerExtension on ScrollController {
  void scrollToTop() {
    if (position.extentBefore < 1000) {
      animateTo(
        position.minScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
      );
    } else {
      jumpTo(position.minScrollExtent);
    }
  }
}
