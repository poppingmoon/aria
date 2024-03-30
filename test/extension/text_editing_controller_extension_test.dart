import 'package:aria/extension/text_editing_controller_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('insert', () {
    test('first', () {
      final controller = TextEditingController(text: 'abc');
      controller.insert('x');
      expect(controller.text, equals('xabc'));
    });

    test('middle', () {
      final controller = TextEditingController(text: 'abc');
      controller.selection = const TextSelection.collapsed(offset: 1);
      controller.insert('x');
      expect(controller.text, equals('axbc'));
    });

    test('last', () {
      final controller = TextEditingController(text: 'abc');
      controller.selection = const TextSelection.collapsed(offset: 3);
      controller.insert('x');
      expect(controller.text, equals('abcx'));
    });

    test('range', () {
      final controller = TextEditingController(text: 'abc');
      controller.selection = const TextSelection(
        baseOffset: 1,
        extentOffset: 2,
      );
      controller.insert('x');
      expect(controller.text, equals('axbc'));
    });

    test('with close tag', () {
      final controller = TextEditingController(text: 'abc');
      controller.selection = const TextSelection(
        baseOffset: 1,
        extentOffset: 2,
      );
      controller.insert('x', 'y');
      expect(controller.text, equals('axbyc'));
    });
  });
}
