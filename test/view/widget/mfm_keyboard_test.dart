import 'package:aria/model/account.dart';
import 'package:aria/model/account_settings.dart';
import 'package:aria/model/general_settings.dart';
import 'package:aria/provider/account_settings_notifier_provider.dart';
import 'package:aria/provider/api/search_hashtags_provider.dart';
import 'package:aria/provider/api/search_users_by_username_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/recently_used_users_notifier_provider.dart';
import 'package:aria/provider/server_url_notifier_provider.dart';
import 'package:aria/view/widget/mfm_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';

import '../../test_util/dummy_me_detailed.dart';
import '../../test_util/dummy_user_detailed_not_me.dart';

Future<void> setupWidget(
  WidgetTester tester, {
  required Account account,
  required TextEditingController controller,
  AccountSettings accountSettings = const AccountSettings(),
  List<Override> overrides = const [],
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        accountSettingsNotifierProvider(
          account,
        ).overrideWithValue(accountSettings),
        generalSettingsNotifierProvider.overrideWithValue(
          const GeneralSettings(),
        ),
        serverUrlNotifierProvider(
          account.host,
        ).overrideWithValue(Uri.https(account.host)),
        ...overrides,
      ],
      child: MaterialApp(
        home: Material(
          child: MfmKeyboard(account: account, controller: controller),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('getLastTag', () {
    test('emoji', () {
      final controller = TextEditingController();
      final widget = MfmKeyboard(
        account: Account.dummy(),
        controller: controller,
      );
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
      final controller = TextEditingController();
      final widget = MfmKeyboard(
        account: Account.dummy(),
        controller: controller,
      );
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
      final controller = TextEditingController();
      final widget = MfmKeyboard(
        account: Account.dummy(),
        controller: controller,
      );
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
      final controller = TextEditingController();
      final widget = MfmKeyboard(
        account: Account.dummy(),
        controller: controller,
      );
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
      final controller = TextEditingController();
      final widget = MfmKeyboard(
        account: Account.dummy(),
        controller: controller,
      );
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
    group('basic', () {
      testWidgets('should show a basic keyboard', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(tester, account: account, controller: controller);
        expect(find.text(':'), findsOne);
        final lastItemFinder = find.text('?[]()');
        await tester.scrollUntilVisible(lastItemFinder, 500.0);
        expect(lastItemFinder, findsOne);
        await tester.tap(lastItemFinder);
        expect(controller.text, '?[]()');
      });
    });

    group('emoji', () {
      testWidgets('should show recently used emojis', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: ':');
        controller.selection = const TextSelection.collapsed(offset: 1);
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          accountSettings: const AccountSettings(recentlyUsedEmojis: ['❤️']),
        );
        await tester.pumpAndSettle();
        await tester.tap(find.byKey(const ValueKey('❤️')));
        expect(controller.text, '❤️');
      });

      testWidgets('should search emojis', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: ':heart');
        controller.selection = const TextSelection.collapsed(offset: 6);
        await setupWidget(tester, account: account, controller: controller);
        await tester.tap(find.byKey(const ValueKey('❤️')));
        await tester.pumpAndSettle();
        expect(controller.text, '❤️');
      });

      testWidgets(
        'should show an emoji keyboard if an open tag is between characters',
        (tester) async {
          const account = Account(host: 'misskey.tld', username: 'testuser');
          final controller = TextEditingController(text: 'a:b');
          controller.selection = const TextSelection.collapsed(offset: 2);
          await setupWidget(
            tester,
            account: account,
            controller: controller,
            accountSettings: const AccountSettings(recentlyUsedEmojis: ['❤️']),
          );
          await tester.tap(find.byKey(const ValueKey('❤️')));
          expect(controller.text, 'a❤️b');
        },
      );

      testWidgets('should not show an emoji keyboard after a close tag', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: ':heart:');
        controller.selection = const TextSelection.collapsed(offset: 7);
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          accountSettings: const AccountSettings(recentlyUsedEmojis: ['❤️']),
        );
        expect(find.text(':'), findsOne);
        expect(find.byKey(const ValueKey('❤️')), findsNothing);
      });

      testWidgets('should not show an emoji keyboard after a space', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: ': ');
        controller.selection = const TextSelection.collapsed(offset: 2);
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          accountSettings: const AccountSettings(recentlyUsedEmojis: ['❤️']),
        );
        expect(find.text(':'), findsOne);
        expect(find.byKey(const ValueKey('❤️')), findsNothing);
      });

      testWidgets(
        'should show an emoji keyboard after an emoji and an open tag',
        (tester) async {
          const account = Account(host: 'misskey.tld', username: 'testuser');
          final controller = TextEditingController(text: ':heart::');
          controller.selection = const TextSelection.collapsed(offset: 8);
          await setupWidget(
            tester,
            account: account,
            controller: controller,
            accountSettings: const AccountSettings(recentlyUsedEmojis: ['❤️']),
          );
          await tester.tap(find.byKey(const ValueKey('❤️')));
          await tester.pumpAndSettle();
          expect(controller.text, ':heart:❤️');
        },
      );
    });

    group('MFM fn', () {
      testWidgets('should show MFM fn names', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: r'$[');
        controller.selection = const TextSelection.collapsed(offset: 2);
        await setupWidget(tester, account: account, controller: controller);
        expect(find.text('tada'), findsOne);
        controller.text = r'$[x';
        controller.selection = const TextSelection.collapsed(offset: 3);
        await tester.pumpAndSettle();
        expect(find.text('tada'), findsNothing);
        await tester.tap(find.text('x2'));
        expect(controller.text, r'$[x2 ');
      });

      testWidgets('should show MFM fn args', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: r'$[spin');
        controller.selection = const TextSelection.collapsed(offset: 6);
        await setupWidget(tester, account: account, controller: controller);
        expect(find.text('speed'), findsOne);
        expect(find.text('x'), findsOne);
        controller.text = r'$[spin.';
        controller.selection = const TextSelection.collapsed(offset: 7);
        await tester.pumpAndSettle();
        expect(find.text('speed'), findsOne);
        expect(find.text('x'), findsOne);
        controller.text = r'$[spin.s';
        controller.selection = const TextSelection.collapsed(offset: 8);
        await tester.pumpAndSettle();
        expect(find.text('x'), findsNothing);
        await tester.tap(find.text('speed'));
        await tester.pumpAndSettle();
        expect(controller.text, r'$[spin.speed=1.5s');
        expect(find.text('speed'), findsNothing);
        await tester.tap(find.text('x'));
        expect(controller.text, r'$[spin.speed=1.5s,x');
      });

      testWidgets(
        'should show an MFM fn keyboard if an open tag is between characters',
        (tester) async {
          const account = Account(host: 'misskey.tld', username: 'testuser');
          final controller = TextEditingController(text: r'a$[b');
          controller.selection = const TextSelection.collapsed(offset: 3);
          await setupWidget(tester, account: account, controller: controller);
          await tester.tap(find.text('tada'));
          expect(controller.text, r'a$[tada b');
        },
      );

      testWidgets('should not show an MFM fn keyboard after a close tag', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: r'$[]');
        controller.selection = const TextSelection.collapsed(offset: 3);
        await setupWidget(tester, account: account, controller: controller);
        expect(find.text(':'), findsOne);
        expect(find.text('tada'), findsNothing);
      });

      testWidgets('should not show an MFM fn keyboard after a space', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController(text: r'$[ ');
        controller.selection = const TextSelection.collapsed(offset: 3);
        await setupWidget(tester, account: account, controller: controller);
        expect(find.text(':'), findsOne);
        expect(find.text('tada'), findsNothing);
      });
    });

    group('mention', () {
      testWidgets('should show recently used users', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          overrides: [
            recentlyUsedUsersNotifierProvider(account).overrideWithBuild(
              (_, _) => [
                dummyMeDetailed.copyWith(username: 'testuser'),
                dummyUserDetailedNotMe.copyWith(
                  username: 'testuser',
                  host: 'misskey2.tld',
                ),
              ],
            ),
          ],
        );
        controller.text = '@';
        controller.selection = const TextSelection.collapsed(offset: 1);
        await tester.pumpAndSettle();
        expect(find.text('@testuser'), findsOne);
        await tester.tap(find.text('@testuser@misskey2.tld'));
        expect(controller.text, '@testuser@misskey2.tld ');
      });

      testWidgets('should search users', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          overrides: [
            searchUsersByUsernameProvider(
              account,
              'testuser',
              null,
            ).overrideWithValue(
              AsyncValue.data([
                dummyMeDetailed.copyWith(username: 'testuser'),
                dummyUserDetailedNotMe.copyWith(
                  username: 'testuser',
                  host: 'misskey2.tld',
                ),
              ]),
            ),
          ],
        );
        controller.text = '@testuser';
        controller.selection = const TextSelection.collapsed(offset: 9);
        await tester.pumpAndSettle(const Duration(seconds: 1));
        expect(find.text('@testuser'), findsOne);
        await tester.tap(find.text('@testuser@misskey2.tld'));
        expect(controller.text, '@testuser@misskey2.tld ');
      });

      testWidgets(
        'should show a mention keyboard if an open tag is between characters',
        (tester) async {
          const account = Account(host: 'misskey.tld', username: 'testuser');
          final controller = TextEditingController();
          await setupWidget(
            tester,
            account: account,
            controller: controller,
            overrides: [
              recentlyUsedUsersNotifierProvider(account).overrideWithBuild(
                (_, _) => [dummyMeDetailed.copyWith(username: 'testuser')],
              ),
            ],
          );
          controller.text = 'a@b';
          controller.selection = const TextSelection.collapsed(offset: 2);
          await tester.pumpAndSettle();
          await tester.tap(find.text('@testuser'));
          expect(controller.text, 'a@testuser b');
        },
      );

      testWidgets('should not show a mention keyboard after a space', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          overrides: [
            recentlyUsedUsersNotifierProvider(account).overrideWithBuild(
              (_, _) => [dummyMeDetailed.copyWith(username: 'testuser')],
            ),
          ],
        );
        controller.text = '@ ';
        controller.selection = const TextSelection.collapsed(offset: 2);
        await tester.pumpAndSettle();
        expect(find.text(':'), findsOne);
        expect(find.text('@testuser'), findsNothing);
      });
    });

    group('hashtag', () {
      testWidgets('should show recently used hashtags', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          accountSettings: const AccountSettings(hashtags: ['test']),
        );
        controller.text = '#';
        controller.selection = const TextSelection.collapsed(offset: 1);
        await tester.pumpAndSettle();
        await tester.tap(find.text('test'));
        expect(controller.text, '#test ');
      });

      testWidgets('should search hashtags', (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          overrides: [
            searchHashtagsProvider(
              account,
              't',
            ).overrideWithValue(const AsyncValue.data(['test'])),
          ],
        );
        controller.text = '#t';
        controller.selection = const TextSelection.collapsed(offset: 2);
        await tester.pumpAndSettle(const Duration(seconds: 1));
        await tester.tap(find.text('test'));
        expect(controller.text, '#test ');
      });

      testWidgets('should not show a hashtag keyboard after a space', (
        tester,
      ) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final controller = TextEditingController();
        await setupWidget(
          tester,
          account: account,
          controller: controller,
          accountSettings: const AccountSettings(hashtags: ['test']),
        );
        controller.text = '# ';
        controller.selection = const TextSelection.collapsed(offset: 2);
        await tester.pumpAndSettle();
        expect(find.text(':'), findsOne);
        expect(find.text('test'), findsNothing);
      });
    });
  });
}
