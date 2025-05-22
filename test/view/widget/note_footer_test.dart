import 'dart:async';

import 'package:aria/extension/note_extension.dart';
import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/account_settings_notifier_provider.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/api/meta_notifier_provider.dart';
import 'package:aria/provider/dio_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/misskey_colors_provider.dart';
import 'package:aria/provider/note_provider.dart';
import 'package:aria/provider/notes_notifier_provider.dart';
import 'package:aria/provider/post_notifier_provider.dart';
import 'package:aria/view/dialog/clip_dialog.dart';
import 'package:aria/view/dialog/reaction_confirmation_dialog.dart';
import 'package:aria/view/widget/emoji_picker.dart';
import 'package:aria/view/widget/note_footer.dart';
import 'package:aria/view/widget/note_sheet.dart';
import 'package:aria/view/widget/reaction_users_sheet.dart';
import 'package:aria/view/widget/renote_sheet.dart';
import 'package:aria/view/widget/renote_users_sheet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

import '../../test_util/create_overrides.dart';
import '../../test_util/dummy_me_detailed.dart';
import '../../test_util/dummy_note.dart';
import '../../test_util/dummy_user_lite.dart';
import '../../test_util/fake_url_launcher.dart';
import '../../test_util/override_default_target_platform.dart';

Future<ProviderContainer> setupWidget(
  WidgetTester tester, {
  required Account account,
  required Note note,
  void Function()? focusPostForm,
}) async {
  final appearNote = note.isRenote ? note.renote! : note;
  await tester.pumpWidget(
    ProviderScope(
      overrides: createOverrides(
        account,
        i: dummyMeDetailed.copyWith(id: 'testuser'),
        meta: const MetaResponse(),
      ),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, _) => Scaffold(
                body: NoteFooter(
                  account: account,
                  note: note,
                  appearNote: appearNote,
                  focusPostForm: focusPostForm,
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
    tester.element(find.byType(NoteFooter)),
  );
  await tester.runAsync(
    () => container.read(iNotifierProvider(account).future),
  );
  await tester.runAsync(
    () => container.read(metaNotifierProvider(account.host).future),
  );
  return container;
}

void main() {
  group('basic', () {
    testWidgets('should show 5 buttons for a public note', (tester) async {
      const account = Account(host: 'misskey.tld');
      await setupWidget(tester, account: account, note: dummyNote);
      expect(find.byType(Icon), findsExactly(5));
    });

    testWidgets('should show 4 buttons for a private note', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(visibility: NoteVisibility.followers);
      await setupWidget(tester, account: account, note: note);
      expect(find.byType(Icon), findsExactly(4));
    });
  });

  group('reply', () {
    testWidgets('should not show a replies count if not replied', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', repliesCount: 0);
      await setupWidget(tester, account: account, note: note);
      expect(find.text('0'), findsNothing);
    });

    testWidgets('should not show a replies count if disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', repliesCount: 1);
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowRepliesCount(false);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsNothing);
    });

    testWidgets('should show a replies count if replied', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', repliesCount: 1);
      await setupWidget(tester, account: account, note: note);
      expect(find.text('1'), findsOne);
    });

    testWidgets('should not open a post page on tap for a guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).replyId, isNull);
    });

    testWidgets('should not open a post page on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
      );
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).replyId, isNull);
    });

    testWidgets('should open a post page on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsOne);
      expect(
        container.read(postNotifierProvider(account)).replyId,
        same(note.id),
      );
    });

    testWidgets('should call a callback on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      bool tapped = false;
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () => tapped = true,
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(tapped, isTrue);
      expect(
        container.read(postNotifierProvider(account)).replyId,
        same(note.id),
      );
    });

    testWidgets('should reply to a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).replyId,
        same(renote.id),
      );
    });

    testWidgets('should reply to a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).replyId,
        same(note.id),
      );
    });
  });

  group('renote', () {
    testWidgets('should not show a renote count if not renoted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', renoteCount: 0);
      await setupWidget(tester, account: account, note: note);
      expect(find.text('0'), findsNothing);
    });

    testWidgets('should not show a renote count if disabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', renoteCount: 1);
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowRenotesCount(false);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsNothing);
    });

    testWidgets('should show a renote count if renoted', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', renoteCount: 1);
      await setupWidget(tester, account: account, note: note);
      expect(find.text('1'), findsOne);
    });

    testWidgets('should not show a renote sheet on tap for a guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsNothing);
    });

    testWidgets('should not show a renote sheet on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(tester, account: account, note: dummyNote);
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsNothing);
    });

    testWidgets('should show a renote sheet on tap', (tester) async {
      // This prevents calling `showToast` on unsupported platforms.
      overrideDefaultTargetPlatform();
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      container.read(notesNotifierProvider(account).notifier).add(note);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/create',
        (server) => server.reply(200, {'createdNote': dummyNote}),
        data: {'renoteId': 'test', 'visibility': 'public', 'localOnly': false},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsOne);
      await tester.tap(find.text(t.misskey.renote));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsNothing);
      expect(
        tester.widget<Icon>(find.byIcon(Icons.repeat_rounded)).color,
        container.read(misskeyColorsProvider(Brightness.light)).renote,
      );
      await tester.pumpAndSettle(const Duration(seconds: 10));
      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('should show a block icon for a private note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        visibility: NoteVisibility.followers,
      );
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.repeat_rounded), findsNothing);
      await tester.tap(find.byIcon(Icons.block));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsNothing);
    });

    testWidgets(
      'should show a renote sheet on tap for a private note created by me',
      (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(
          id: 'test',
          user: dummyUserLite.copyWith(username: 'testuser'),
          visibility: NoteVisibility.followers,
        );
        await setupWidget(tester, account: account, note: note);
        expect(find.byIcon(Icons.block), findsNothing);
        await tester.tap(find.byIcon(Icons.repeat_rounded));
        await tester.pumpAndSettle();
        expect(find.byType(RenoteSheet), findsOne);
      },
    );

    testWidgets('should show a modal bottom sheet on tap if already renoted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote', renoteCount: 123);
      final note = dummyNote.copyWith(
        id: 'test',
        user: dummyUserLite.copyWith(username: 'testuser'),
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/delete',
        (server) => server.reply(200, null),
        data: {'noteId': 'test'},
      );
      final colors = container.read(misskeyColorsProvider(Brightness.light));
      await tester.pumpAndSettle();
      expect(
        tester.widget<Icon>(find.byIcon(Icons.repeat_rounded)).color,
        colors.renote,
      );
      expect(
        tester.widget<Text>(find.text('123')).style?.color,
        colors.renote.withValues(alpha: 0.6),
      );
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.delete));
      await tester.pumpAndSettle();
      expect(
        tester.widget<Icon>(find.byIcon(Icons.repeat_rounded)).color,
        null,
      );
    });

    testWidgets('should show a renote sheet on tap if already renoted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/create',
        (server) => server.reply(200, {'createdNote': dummyNote}),
        data: {'renoteId': 'test', 'visibility': 'public', 'localOnly': false},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.misskey.renote));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsOne);
    });

    testWidgets('should open a post page on tap if a quote button is hidden', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsOne);
    });

    testWidgets('should call a callback on tap if a quote button is hidden', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      bool tapped = false;
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () => tapped = true,
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(tapped, isTrue);
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(note.id),
      );
    });

    testWidgets('should renote a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(renote.id),
      );
    });

    testWidgets('should renote a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(note.id),
      );
    });

    testWidgets('should not show renoted users on long press if not renoted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', renoteCount: 0);
      await setupWidget(tester, account: account, note: note);
      await tester.longPress(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteUsersSheet), findsNothing);
    });

    testWidgets(
      'should not show renoted users on long press for a dummy note',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(renoteCount: 1);
        await setupWidget(tester, account: account, note: note);
        await tester.longPress(find.byIcon(Icons.repeat_rounded));
        await tester.pumpAndSettle();
        expect(find.byType(RenoteUsersSheet), findsNothing);
      },
    );

    testWidgets('should show renoted users on long press if renoted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', renoteCount: 1);
      await setupWidget(tester, account: account, note: note);
      await tester.longPress(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteUsersSheet), findsOne);
    });
  });

  group('quote', () {
    testWidgets('should not show a quote button if disabled', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.format_quote_outlined), findsNothing);
    });

    testWidgets('should not show a quote button for a private note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        visibility: NoteVisibility.followers,
      );
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.format_quote_outlined), findsNothing);
    });

    testWidgets('should not open a post page on tap for a guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).renoteId, isNull);
    });

    testWidgets('should not open a post page on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
      );
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).renoteId, isNull);
    });

    testWidgets('should quote a note on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsOne);
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(note.id),
      );
    });

    testWidgets('should quote a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(renote.id),
      );
    });

    testWidgets('should quote a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        note: note,
        focusPostForm: () {},
      );
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(
        container.read(postNotifierProvider(account)).renoteId,
        same(note.id),
      );
    });
  });

  group('like', () {
    testWidgets('should not show a like button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.favorite_border), findsNothing);
    });

    testWidgets('should not show a like button if enabled and like-only', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.favorite_border), findsOne);
      expect(find.byIcon(Icons.add), findsNothing);
    });

    testWidgets('should not show a like button if enabled and reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', myReaction: '❤');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.favorite_border), findsNothing);
    });

    testWidgets(
      'should not show a reaction confirmation on tap for a guest if enabled',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test');
        final container = await setupWidget(
          tester,
          account: account,
          note: note,
        );
        await container
            .read(generalSettingsNotifierProvider.notifier)
            .setShowLikeButtonInNoteFooter(true);
        await tester.pumpAndSettle();
        await tester.tap(find.byIcon(Icons.favorite_border));
        await tester.pumpAndSettle();
        expect(find.byType(ReactionConfirmationDialog), findsNothing);
      },
    );

    testWidgets(
      'should not show a reaction confirmation on tap for a dummy note if enabled',
      (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final container = await setupWidget(
          tester,
          account: account,
          note: dummyNote,
        );
        await container
            .read(generalSettingsNotifierProvider.notifier)
            .setShowLikeButtonInNoteFooter(true);
        await tester.pumpAndSettle();
        await tester.tap(find.byIcon(Icons.favorite_border));
        await tester.pumpAndSettle();
        expect(find.byType(ReactionConfirmationDialog), findsNothing);
      },
    );

    testWidgets('should show a reaction confirmation on tap if enabled', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite_border));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionConfirmationDialog), findsOne);
    });

    testWidgets('should react to a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setConfirmBeforeReact(false);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'renote', 'reaction': '❤'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          renote.copyWith(reactions: {'❤': 1}, myReaction: '❤'),
        ),
        data: {'noteId': 'renote'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite_border));
      await tester.pumpAndSettle();
      expect(container.read(noteProvider(account, 'test'))!.myReaction, isNull);
      expect(container.read(noteProvider(account, 'renote'))!.myReaction, '❤');
    });

    testWidgets('should react to a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setConfirmBeforeReact(false);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'test', 'reaction': '❤'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          note.copyWith(reactions: {'❤': 1}, myReaction: '❤'),
        ),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite_border));
      await tester.pumpAndSettle();
      expect(container.read(noteProvider(account, 'test'))!.myReaction, '❤');
      expect(
        container.read(noteProvider(account, 'renote'))!.myReaction,
        isNull,
      );
    });
  });

  group('add reaction', () {
    testWidgets('should not show an add reaction button if reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', myReaction: '❤');
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.add), findsNothing);
    });

    testWidgets('should show a heart icon if like-only', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.add), findsNothing);
      expect(find.byIcon(Icons.favorite_border), findsOne);
    });

    testWidgets('should not show a reactions count', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', reactionCount: 1);
      await setupWidget(tester, account: account, note: note);
      expect(find.text('1'), findsNothing);
    });

    testWidgets(
      'should not show a reactions count if enabled and not reacted',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(id: 'test', reactionCount: 0);
        final container = await setupWidget(
          tester,
          account: account,
          note: note,
        );
        await container
            .read(generalSettingsNotifierProvider.notifier)
            .setShowReactionsCount(true);
        await tester.pumpAndSettle();
        expect(find.text('0'), findsNothing);
      },
    );

    testWidgets('should show a reactions count if enabled and reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test', reactionCount: 1);
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
    });

    testWidgets('should not show an emoji picker on tap for a guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(EmojiPicker), findsNothing);
    });

    testWidgets('should not show an emoji picker on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(tester, account: account, note: dummyNote);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(EmojiPicker), findsNothing);
    });

    testWidgets('should show an emoji picker on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(EmojiPicker), findsOne);
    });

    testWidgets('should react to a note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojisForReaction([':test:']);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'test', 'reaction': ':test:'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          note.copyWith(reactions: {':test:': 1}, myReaction: ':test:'),
        ),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      tester.element(find.byType(EmojiPicker)).pop(':test:');
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, 'test'))!.myReaction,
        ':test:',
      );
      await tester.pumpAndSettle(const Duration(seconds: 10));
    });

    testWidgets('should react to a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setConfirmBeforeReact(false);
      await container
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojisForReaction([':test:']);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'renote', 'reaction': ':test:'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          renote.copyWith(reactions: {':test:': 1}, myReaction: ':test:'),
        ),
        data: {'noteId': 'renote'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      tester.element(find.byType(EmojiPicker)).pop(':test:');
      await tester.pumpAndSettle();
      expect(container.read(noteProvider(account, 'test'))!.myReaction, isNull);
      expect(
        container.read(noteProvider(account, 'renote'))!.myReaction,
        ':test:',
      );
    });

    testWidgets('should react to a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setConfirmBeforeReact(false);
      await container
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojisForReaction([':test:']);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/create',
        (server) => server.reply(200, null),
        data: {'noteId': 'test', 'reaction': ':test:'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(
          200,
          note.copyWith(reactions: {':test:': 1}, myReaction: ':test:'),
        ),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      tester.element(find.byType(EmojiPicker)).pop(':test:');
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, 'test'))!.myReaction,
        ':test:',
      );
      expect(
        container.read(noteProvider(account, 'renote'))!.myReaction,
        isNull,
      );
    });

    testWidgets('should not show reacted users on long press if not reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', reactionCount: 0);
      await setupWidget(tester, account: account, note: note);
      await tester.longPress(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsNothing);
    });

    testWidgets(
      'should not show reacted users on long press for a dummy note',
      (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(reactionCount: 1);
        await setupWidget(tester, account: account, note: note);
        await tester.longPress(find.byIcon(Icons.add));
        await tester.pumpAndSettle();
        expect(find.byType(ReactionUsersSheet), findsNothing);
      },
    );

    testWidgets('should show reacted users on long press if reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
        reactionCount: 6,
      );
      await setupWidget(tester, account: account, note: note);
      await tester.longPress(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsOne);
      expect(
        tester
            .widget<ReactionUsersSheet>(find.byType(ReactionUsersSheet))
            .initialReaction,
        ':emoji2:',
      );
      await tester.pumpAndSettle(const Duration(seconds: 10));
    });
  });

  group('remove reaction', () {
    testWidgets('should not show an remove reaction button if not reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.remove), findsNothing);
    });

    testWidgets('should show a heart icon if like-only', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.remove), findsNothing);
      expect(find.byIcon(Icons.favorite), findsOne);
    });

    testWidgets('should not show a reactions count', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionCount: 1,
      );
      await setupWidget(tester, account: account, note: note);
      expect(find.text('1'), findsNothing);
    });

    testWidgets(
      'should not show a reactions count if enabled and not reacted',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          id: 'test',
          myReaction: '❤',
          reactionCount: 0,
        );
        final container = await setupWidget(
          tester,
          account: account,
          note: note,
        );
        await container
            .read(generalSettingsNotifierProvider.notifier)
            .setShowReactionsCount(true);
        await tester.pumpAndSettle();
        expect(find.text('0'), findsNothing);
      },
    );

    testWidgets('should show a reactions count if enabled and reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionCount: 1,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
    });

    testWidgets('should not show a confirmation on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(myReaction: '❤');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.cancelReactionConfirm), findsNothing);
    });

    testWidgets('should show a confirmation on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', myReaction: '❤');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.cancelReactionConfirm), findsOne);
    });

    testWidgets('should remove a reaction from a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote', myReaction: '❤');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/delete',
        (server) => server.reply(200, null),
        data: {'noteId': 'renote'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(200, renote.copyWith(myReaction: null)),
        data: {'noteId': 'renote'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(
        container.read(noteProvider(account, 'renote'))!.myReaction,
        isNull,
      );
    });

    testWidgets('should remove a reaction from to a quote note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote', myReaction: '❤');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
        myReaction: '❤',
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(accountSettingsNotifierProvider(account).notifier)
          .setPinnedEmojisForReaction([':test:']);
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'notes/reactions/delete',
        (server) => server.reply(200, null),
        data: {'noteId': 'test'},
      );
      dioAdapter.onPost(
        'notes/show',
        (server) => server.reply(200, note.copyWith(myReaction: null)),
        data: {'noteId': 'test'},
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      await tester.tap(find.text(t.misskey.ok));
      await tester.pumpAndSettle();
      expect(container.read(noteProvider(account, 'test'))!.myReaction, isNull);
      expect(container.read(noteProvider(account, 'renote'))!.myReaction, '❤');
    });

    testWidgets(
      'should not show reacted users on long press for a dummy note',
      (tester) async {
        const account = Account(host: 'misskey.tld', username: 'testuser');
        final note = dummyNote.copyWith(
          reactionCount: 1,
          myReaction: ':emoji:',
        );
        await setupWidget(tester, account: account, note: note);
        await tester.longPress(find.byIcon(Icons.remove));
        await tester.pumpAndSettle();
        expect(find.byType(ReactionUsersSheet), findsNothing);
      },
    );

    testWidgets('should show reacted users on long press if reacted', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
        reactionCount: 6,
        myReaction: ':emoji1:',
      );
      await setupWidget(tester, account: account, note: note);
      await tester.longPress(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsOne);
      expect(
        tester
            .widget<ReactionUsersSheet>(find.byType(ReactionUsersSheet))
            .initialReaction,
        ':emoji2:',
      );
    });
  });

  group('clip', () {
    testWidgets('should not show a clip button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.attach_file), findsNothing);
    });

    testWidgets('should not show a clip dialog on tap if enabled and guest', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(find.byType(ClipDialog), findsNothing);
    });

    testWidgets('should not show a clip dialog on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(find.byType(ClipDialog), findsNothing);
    });

    testWidgets('should show a clip dialog on tap if enabled', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(find.byType(ClipDialog), findsOne);
    });

    testWidgets('should clip a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(
        tester.widget<ClipDialog>(find.byType(ClipDialog)).noteId,
        'renote',
      );
    });

    testWidgets('should clip a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(tester.widget<ClipDialog>(find.byType(ClipDialog)).noteId, 'test');
    });
  });

  group('translate', () {
    testWidgets('should not show a translate button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      expect(find.byIcon(Icons.translate), findsNothing);
    });

    testWidgets('should show a translate button if enabled', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.translate), findsOne);
    });

    testWidgets('should not translate a note on tap for a dummy note', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final container = await setupWidget(
        tester,
        account: account,
        note: dummyNote,
      );
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: true),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: true)),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'notes/translate',
        (server) => server.reply(200, {
          'sourceLang': 'lang',
          'text': 'translated note text',
        }),
        data: {
          'noteId': 'test',
          'targetLang': Localizations.localeOf(
            tester.element(find.byType(NoteFooter)),
          ).toLanguageTag(),
        },
      );
      await tester.runAsync(
        () => container.read(iNotifierProvider(account).future),
      );
      await tester.runAsync(
        () => container.read(metaNotifierProvider(account.host).future),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      expect(find.text('translated note text'), findsNothing);
    });

    testWidgets('should translate a note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      container.invalidate(metaNotifierProvider(account.host));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: true),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: true)),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'notes/translate',
        (server) => server.reply(200, {
          'sourceLang': 'lang',
          'text': 'translated note text',
        }),
        data: {
          'noteId': 'test',
          'targetLang': Localizations.localeOf(
            tester.element(find.byType(NoteFooter)),
          ).toLanguageTag(),
        },
      );
      await tester.runAsync(
        () => container.read(iNotifierProvider(account).future),
      );
      await tester.runAsync(
        () => container.read(metaNotifierProvider(account.host).future),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      expect(find.text('translated note text'), findsOne);
    });

    testWidgets('should translate a renoted note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      container.invalidate(metaNotifierProvider(account.host));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: true),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: true)),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'notes/translate',
        (server) => server.reply(200, {
          'sourceLang': 'lang',
          'text': 'translated renote text',
        }),
        data: {
          'noteId': 'renote',
          'targetLang': Localizations.localeOf(
            tester.element(find.byType(NoteFooter)),
          ).toLanguageTag(),
        },
      );
      await tester.runAsync(
        () => container.read(iNotifierProvider(account).future),
      );
      await tester.runAsync(
        () => container.read(metaNotifierProvider(account.host).future),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      expect(find.text('translated renote text'), findsOne);
    });

    testWidgets('should translate a quote note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      container.invalidate(metaNotifierProvider(account.host));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: true),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: true)),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'notes/translate',
        (server) => server.reply(200, {
          'sourceLang': 'lang',
          'text': 'translated quote text',
        }),
        data: {
          'noteId': 'test',
          'targetLang': Localizations.localeOf(
            tester.element(find.byType(NoteFooter)),
          ).toLanguageTag(),
        },
      );
      await tester.runAsync(
        () => container.read(iNotifierProvider(account).future),
      );
      await tester.runAsync(
        () => container.read(metaNotifierProvider(account.host).future),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      expect(find.text('translated quote text'), findsOne);
    });

    testWidgets('should fallback if translator is not available', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', text: 'note text');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: true),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: false)),
        data: <String, dynamic>{},
      );
      final completer = Completer<String>();
      final urlLauncher = FakeUrlLauncher()
        ..onLaunchUrl = (url, _) => completer.complete(url);
      UrlLauncherPlatform.instance = urlLauncher;
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      final url = await completer.future;
      expect(url, 'https://translate.google.com?text=note+text');
    });

    testWidgets('should fallback if use of translator is not allowed', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test', text: 'note text');
      final container = await setupWidget(tester, account: account, note: note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      container.invalidate(iNotifierProvider(account));
      final dioAdapter = DioAdapter(dio: container.read(dioProvider));
      dioAdapter.onPost(
        'i',
        (server) => server.reply(
          200,
          dummyMeDetailed.copyWith(
            id: 'testuser',
            policies: const UserPolicies(canUseTranslator: false),
          ),
        ),
        data: <String, dynamic>{},
      );
      dioAdapter.onPost(
        'meta',
        (server) =>
            server.reply(200, const MetaResponse(translatorAvailable: true)),
        data: <String, dynamic>{},
      );
      final completer = Completer<String>();
      final urlLauncher = FakeUrlLauncher()
        ..onLaunchUrl = (url, _) => completer.complete(url);
      UrlLauncherPlatform.instance = urlLauncher;
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.translate));
      await tester.pumpAndSettle();
      final url = await completer.future;
      expect(url, 'https://translate.google.com?text=note+text');
    });
  });

  group('menu', () {
    testWidgets('should show a menu on tap a menu button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      expect(find.byType(NoteSheet), findsOne);
    });

    testWidgets('should show a menu of a renote', (tester) async {
      const account = Account(host: 'misskey.tld');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      expect(tester.widget<NoteSheet>(find.byType(NoteSheet)).noteId, 'test');
    });

    testWidgets('should show a menu of a quote', (tester) async {
      const account = Account(host: 'misskey.tld');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        text: 'quote',
        renoteId: renote.id,
        renote: renote,
      );
      await setupWidget(tester, account: account, note: note);
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      expect(tester.widget<NoteSheet>(find.byType(NoteSheet)).noteId, 'test');
    });
  });
}
