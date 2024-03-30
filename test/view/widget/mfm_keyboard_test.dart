import 'package:aria/model/account.dart';
import 'package:aria/provider/shared_preferences_provider.dart';
import 'package:aria/view/widget/mfm_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../test_util/fake_shared_preferences.dart';

void main() {
  group('getLastTag', () {
    final controller = TextEditingController();
    final widget =
        MfmKeyboard(account: Account.dummy(), controller: controller);

    test('emoji', () {
      controller.text = ':';
      controller.selection = const TextSelection.collapsed(offset: 0);
      expect(widget.getLastTag(), equals((null, -1)));
      controller.selection = const TextSelection.collapsed(offset: 1);
      expect(widget.getLastTag(), equals((TagType.emoji, 0)));
      controller.text = ':emoji:';
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.emoji, 0)));
      controller.selection = const TextSelection.collapsed(offset: 7);
      expect(widget.getLastTag(), equals((TagType.emoji, 6)));
      controller.text = ':えもじ';
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.emoji, 0)));
    });

    test('mfmFn', () {
      controller.text = r'$[';
      controller.selection = const TextSelection.collapsed(offset: 0);
      expect(widget.getLastTag(), equals((null, -1)));
      controller.selection = const TextSelection.collapsed(offset: 2);
      expect(widget.getLastTag(), equals((TagType.mfmFn, 0)));
      controller.text = r'$[tada $[]]';
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.mfmFn, 0)));
      controller.selection = const TextSelection.collapsed(offset: 9);
      expect(widget.getLastTag(), equals((TagType.mfmFn, 7)));
      controller.text = r'$[tada.speed=1.5s,delay=0s';
      controller.selection = const TextSelection.collapsed(offset: 26);
      expect(widget.getLastTag(), equals((TagType.mfmFn, 0)));
    });

    test('mention', () {
      controller.text = '@';
      controller.selection = const TextSelection.collapsed(offset: 0);
      expect(widget.getLastTag(), equals((null, -1)));
      controller.selection = const TextSelection.collapsed(offset: 1);
      expect(widget.getLastTag(), equals((TagType.mention, 0)));
      controller.text = '@user @';
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.mention, 0)));
      controller.selection = const TextSelection.collapsed(offset: 7);
      expect(widget.getLastTag(), equals((TagType.mention, 6)));
    });

    test('hashtag', () {
      controller.text = '#';
      controller.selection = const TextSelection.collapsed(offset: 0);
      expect(widget.getLastTag(), equals((null, -1)));
      controller.selection = const TextSelection.collapsed(offset: 1);
      expect(widget.getLastTag(), equals((TagType.hashtag, 0)));
      controller.text = '#hashtag #';
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.hashtag, 0)));
      controller.selection = const TextSelection.collapsed(offset: 10);
      expect(widget.getLastTag(), equals((TagType.hashtag, 9)));
    });

    test('mixed', () {
      controller.text = r':emoji: #hashtag $[tada a] @user';
      controller.selection = const TextSelection.collapsed(offset: 0);
      expect(widget.getLastTag(), equals((null, -1)));
      controller.selection = const TextSelection.collapsed(offset: 3);
      expect(widget.getLastTag(), equals((TagType.emoji, 0)));
      controller.selection = const TextSelection.collapsed(offset: 12);
      expect(widget.getLastTag(), equals((TagType.hashtag, 8)));
      controller.selection = const TextSelection.collapsed(offset: 20);
      expect(widget.getLastTag(), equals((TagType.mfmFn, 17)));
      controller.selection = const TextSelection.collapsed(offset: 30);
      expect(widget.getLastTag(), equals((TagType.mention, 27)));
    });
  });

  group('widget', () {
    testWidgets('show fallback keyboards', (tester) async {
      final controller = TextEditingController();
      await tester.pumpWidget(
        MaterialApp(
          home: MfmKeyboard(
            account: Account.dummy(),
            controller: controller,
          ),
        ),
      );

      expect(find.text(':'), findsOneWidget);
      final lastItemFinder = find.text('?[]()');
      await tester.scrollUntilVisible(lastItemFinder, 500.0);
      expect(lastItemFinder, findsOneWidget);
      await tester.tap(lastItemFinder);
      await tester.pumpAndSettle();
      expect(controller.text, '?[]()');
    });

    testWidgets('show emoji keyboards', (tester) async {
      final controller = TextEditingController(text: ':');
      controller.selection = const TextSelection.collapsed(offset: 1);
      final map = {
        '/accountSettings': '{"recentlyUsedEmojis": ["❤️"]}',
      };
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            sharedPreferencesProvider
                .overrideWithValue(FakeSharedPreferences(map)),
          ],
          child: MaterialApp(
            home: MfmKeyboard(
              account: Account.dummy(),
              controller: controller,
            ),
          ),
        ),
      );

      final buttonFinder = find.byKey(const ValueKey('❤️'));
      expect(buttonFinder, findsOneWidget);
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();
      expect(controller.text, '❤️');
    });
  });
}
