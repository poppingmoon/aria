import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/dio_provider.dart';
import 'package:aria/provider/emojis_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/misskey_colors_provider.dart';
import 'package:aria/provider/note_provider.dart';
import 'package:aria/view/dialog/reaction_confirmation_dialog.dart';
import 'package:aria/view/widget/reaction_button.dart';
import 'package:aria/view/widget/reaction_users_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../test_util/create_overrides.dart';
import '../../test_util/dummy_note.dart';
import '../../test_util/dummy_user_lite.dart';

Future<ProviderContainer> setupWidget(
  WidgetTester tester, {
  required Account account,
  required Note note,
  required String emoji,
  required int count,
  double? scale,
  Key? emojiKey,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: createOverrides(
        account,
        // i: dummyMeDetailed.copyWith(id: 'testuser'),
        // meta: const MetaResponse(),
      ),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder:
                  (_, __) => Scaffold(
                    body: ReactionButton(
                      account: account,
                      note: note,
                      emoji: emoji,
                      count: count,
                    ),
                  ),
            ),
          ],
        ),
        themeMode: ThemeMode.light,
      ),
    ),
  );
  await tester.pumpAndSettle();
  final container = ProviderScope.containerOf(
    tester.element(find.byType(ReactionButton)),
  );
  return container;
}

void main() {
  group('basic', () {
    testWidgets('background and border should be transparent if guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      final colors = container.read(misskeyColorsProvider(Brightness.light));
      final buttonStyle =
          tester.widget<ElevatedButton>(find.byType(ElevatedButton)).style;
      expect(buttonStyle?.shape?.resolve({})?.side, BorderSide.none);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), Colors.transparent);
    });

    testWidgets('background should be transparent if remote and can react', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji@misskey2.tld:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      await tester.pumpAndSettle();
      final colors = container.read(misskeyColorsProvider(Brightness.light));
      final buttonStyle =
          tester.widget<ElevatedButton>(find.byType(ElevatedButton)).style;
      expect(buttonStyle?.shape?.resolve({})?.side.color, colors.divider);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), Colors.transparent);
    });

    testWidgets('background should be buttonBg if can react', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      await tester.pumpAndSettle();
      final colors = container.read(misskeyColorsProvider(Brightness.light));
      final buttonStyle =
          tester.widget<ElevatedButton>(find.byType(ElevatedButton)).style;
      expect(buttonStyle?.shape?.resolve({})?.side, BorderSide.none);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), colors.buttonBg);
    });

    testWidgets('background should be accent if already reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(myReaction: ':emoji:'),
        emoji: ':emoji:',
        count: 1,
      );
      final colors = container.read(misskeyColorsProvider(Brightness.light));
      final buttonStyle =
          tester.widget<ElevatedButton>(find.byType(ElevatedButton)).style;
      expect(buttonStyle?.shape?.resolve({})?.side.color, colors.accent);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.accent);
      expect(buttonStyle?.backgroundColor?.resolve({}), colors.accentedBg);
    });

    testWidgets('should not show a reaction count if disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCountInReactionButton(false);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a reaction count', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
      await tester.pumpAndSettle();
    });
  });

  group('on tap', () {
    testWidgets('should not react if guest', (tester) async {
      const account = Account(host: 'misskey.tld');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(id: 'test'),
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets('should not react to a dummy note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets('should not react a local only emoji to a remote note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(
          id: 'test',
          user: dummyUserLite.copyWith(host: 'misskey2.tld'),
        ),
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji', localOnly: true));
      await tester.pumpAndSettle();
      expect(
        tester
            .widget<ElevatedButton>(find.byType(ElevatedButton))
            .style
            ?.backgroundColor
            ?.resolve({}),
        Colors.transparent,
      );
      await tester.tap(find.byType(ElevatedButton));
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets(
      'should not react a sensitive emoji to a non-sensitive only note',
      (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final container = await setupWidget(
          tester,
          account: account,
          note: dummyNote.copyWith(id: 'test'),
          emoji: ':emoji:',
          count: 1,
        );
        container
            .read(emojisNotifierProvider(account.host).notifier)
            .add(const Emoji(aliases: [], name: 'emoji', isSensitive: true));
        await tester.pumpAndSettle();
        await tester.tap(find.byType(ElevatedButton));
        expect(find.byType(ReactionConfirmationDialog), findsNothing);
      },
    );

    testWidgets('should react to a note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', reactions: {':emoji:': 1});
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'test', 'reaction': ':emoji@.:'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          note.copyWith(reactions: {':emoji:': 2}, myReaction: ':emoji:'),
        ),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.aria.reactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, note.id))?.myReaction,
        ':emoji:',
      );
    });

    testWidgets('should unreact if already reacted', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactions: {':emoji:': 1},
        myReaction: ':emoji:',
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/delete',
        (server) => server.reply(200, null),
        data: {'noteId': 'test'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) =>
            server.reply(200, note.copyWith(reactions: {}, myReaction: null)),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.cancelReactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, note.id))?.myReaction,
        isNull,
      );
    });

    testWidgets('should change reaction if already reacted another reaction', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactions: {':emoji:': 1, ':emoji2:': 2},
        myReaction: ':emoji2:',
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
      );
      container
          .read(emojisNotifierProvider(account.host).notifier)
          .add(const Emoji(aliases: [], name: 'emoji'));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/delete',
        (server) => server.reply(200, null),
        data: {'noteId': 'test'},
      );
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'test', 'reaction': ':emoji@.:'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          note.copyWith(
            reactions: {':emoji:': 2, ':emoji2:': 1},
            myReaction: ':emoji:',
          ),
        ),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.changeReactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, note.id))?.myReaction,
        ':emoji:',
      );
    });
  });

  group('on long press', () {
    testWidgets('should not show reaction users sheet for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
      );
      await tester.pumpAndSettle();
      await tester.longPress(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsNothing);
    });

    testWidgets('should show reaction users sheet', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(id: 'test'),
        emoji: ':emoji:',
        count: 1,
      );
      await tester.pumpAndSettle();
      await tester.longPress(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsOne);
    });
  });
}
