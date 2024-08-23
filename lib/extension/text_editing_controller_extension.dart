import 'dart:math';

import 'package:flutter/material.dart';

extension TextEditingControllerExtension on TextEditingController {
  void insert(String insertText, [String closeTag = '']) {
    final startIndex = max(0, selection.start);
    final endIndex = max(0, selection.end);
    final beforeSelection = text.substring(0, startIndex);
    final selectionText = text.substring(startIndex, endIndex);
    final afterSelection = text.substring(endIndex);
    value = value.copyWith(
      text: '$beforeSelection$insertText$selectionText$closeTag$afterSelection',
      selection: TextSelection(
        baseOffset: startIndex + insertText.length,
        extentOffset: endIndex + insertText.length,
      ),
      composing: TextRange.empty,
    );
  }

  void replace(int length, String replace) {
    final startIndex = max(0, selection.start);
    final beforeSelection = text.substring(0, startIndex - length);
    final afterSelection = text.substring(startIndex);
    value = value.copyWith(
      text: '$beforeSelection$replace$afterSelection',
      selection:
          TextSelection.collapsed(offset: startIndex - length + replace.length),
      composing: TextRange.empty,
    );
  }
}
