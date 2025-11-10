import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/model/account_settings.dart';
import 'package:aria/model/general_settings.dart';
import 'package:aria/provider/account_settings_notifier_provider.dart';
import 'package:aria/provider/api/misskey_provider.dart';
import 'package:aria/provider/emojis_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/misskey_colors_provider.dart';
import 'package:aria/provider/note_notifier_provider.dart';
import 'package:aria/provider/server_url_notifier_provider.dart';
import 'package:aria/view/dialog/reaction_confirmation_dialog.dart';
import 'package:aria/view/widget/reaction_button.dart';
import 'package:aria/view/widget/reaction_users_sheet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/misc.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../test_util/dummy_note.dart';
import '../../test_util/dummy_user_lite.dart';

Future<void> setupWidget(
  WidgetTester tester, {
  required Account account,
  required Note note,
  required String emoji,
  required int count,
  double? scale,
  Key? emojiKey,
  GeneralSettings generalSettings = const GeneralSettings(),
  Dio? dio,
  List<Override> overrides = const [],
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        accountSettingsNotifierProvider(
          account,
        ).overrideWithValue(const AccountSettings()),
        generalSettingsNotifierProvider.overrideWithValue(generalSettings),
        misskeyProvider(account).overrideWithValue(
          Misskey(serverUrl: Uri.https(account.host), dio: dio),
        ),
        serverUrlNotifierProvider(
          account.host,
        ).overrideWithValue(Uri.https(account.host)),
        ...overrides,
      ],
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, _) => Scaffold(
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
}

void main() {
  group('basic', () {
    testWidgets('background and border should be transparent if guest', (
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
      final colors = tester.container().read(
        misskeyColorsProvider(Brightness.light),
      );
      final buttonStyle = tester
          .widget<ElevatedButton>(find.byType(ElevatedButton))
          .style;
      expect(buttonStyle?.shape?.resolve({})?.side, BorderSide.none);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), Colors.transparent);
    });

    testWidgets('background should be transparent if remote and can react', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji@misskey2.tld:',
        count: 1,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      final colors = tester.container().read(
        misskeyColorsProvider(Brightness.light),
      );
      final buttonStyle = tester
          .widget<ElevatedButton>(find.byType(ElevatedButton))
          .style;
      expect(buttonStyle?.shape?.resolve({})?.side.color, colors.divider);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), Colors.transparent);
    });

    testWidgets('background should be buttonBg if can react', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      final colors = tester.container().read(
        misskeyColorsProvider(Brightness.light),
      );
      final buttonStyle = tester
          .widget<ElevatedButton>(find.byType(ElevatedButton))
          .style;
      expect(buttonStyle?.shape?.resolve({})?.side, BorderSide.none);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.fg);
      expect(buttonStyle?.backgroundColor?.resolve({}), colors.buttonBg);
    });

    testWidgets('background should be accent if already reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(myReaction: ':emoji:'),
        emoji: ':emoji:',
        count: 1,
      );
      final colors = tester.container().read(
        misskeyColorsProvider(Brightness.light),
      );
      final buttonStyle = tester
          .widget<ElevatedButton>(find.byType(ElevatedButton))
          .style;
      expect(buttonStyle?.shape?.resolve({})?.side.color, colors.accent);
      expect(buttonStyle?.foregroundColor?.resolve({}), colors.accent);
      expect(buttonStyle?.backgroundColor?.resolve({}), colors.accentedBg);
    });

    testWidgets('should not show a reaction count if disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
        generalSettings: const GeneralSettings(
          showReactionsCountInReactionButton: false,
        ),
      );
      expect(find.text('1'), findsNothing);
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
      expect(find.text('1'), findsOne);
    });
  });

  group('on tap', () {
    testWidgets('should not react if guest', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(id: 'test'),
        emoji: ':emoji:',
        count: 1,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      await tester.tap(find.byType(ElevatedButton));
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets('should not react to a dummy note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote,
        emoji: ':emoji:',
        count: 1,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      await tester.tap(find.byType(ElevatedButton));
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets('should not react a local only emoji to a remote note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(
        tester,
        account: account,
        note: dummyNote.copyWith(
          id: 'test',
          user: dummyUserLite.copyWith(host: 'misskey2.tld'),
        ),
        emoji: ':emoji:',
        count: 1,
        overrides: [
          emojisNotifierProvider(account.host).overrideWithBuild(
            (_, _) => {'emoji': const Emoji(name: 'emoji', localOnly: true)},
          ),
        ],
      );
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
        await setupWidget(
          tester,
          account: account,
          note: dummyNote.copyWith(id: 'test'),
          emoji: ':emoji:',
          count: 1,
          overrides: [
            emojisNotifierProvider(account.host).overrideWithBuild(
              (_, _) => {
                'emoji': const Emoji(name: 'emoji', isSensitive: true),
              },
            ),
          ],
        );
        await tester.tap(find.byType(ElevatedButton));
        expect(find.byType(ReactionConfirmationDialog), findsNothing);
      },
    );

    testWidgets('should react to a note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', reactions: {':emoji:': 1});
      final dio = Dio();
      final dioAdapter = DioAdapter(dio: dio);
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
      await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
        dio: dio,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.aria.reactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        tester
            .container()
            .read(noteNotifierProvider(account, note.id))
            ?.myReaction,
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
      final dio = Dio();
      final dioAdapter = DioAdapter(dio: dio);
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
      await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
        dio: dio,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.cancelReactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        tester
            .container()
            .read(noteNotifierProvider(account, note.id))
            ?.myReaction,
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
      final dio = Dio();
      final dioAdapter = DioAdapter(dio: dio);
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
      await setupWidget(
        tester,
        account: account,
        note: note,
        emoji: ':emoji:',
        count: 1,
        dio: dio,
        overrides: [
          emojisNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => {'emoji': const Emoji(name: 'emoji')}),
        ],
      );
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.changeReactionConfirm), findsOne);
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        tester
            .container()
            .read(noteNotifierProvider(account, note.id))
            ?.myReaction,
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
