import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
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
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../test_util/create_overrides.dart';
import '../../../test_util/dummy_me_detailed.dart';
import '../../../test_util/dummy_note.dart';

Future<ProviderContainer> setupWidget(
  WidgetTester tester, {
  required Account account,
  required String noteId,
  void Function()? focusPostForm,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: createOverrides(
        account,
        i: dummyMeDetailed.copyWith(id: 'testuser'),
      ),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => NoteFooter(
                account: account,
                noteId: noteId,
                focusPostForm: focusPostForm,
              ),
            ),
          ],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  final container =
      ProviderScope.containerOf(tester.element(find.byType(NoteFooter)));
  await tester
      .runAsync(() => container.read(iNotifierProvider(account).future));
  return container;
}

void main() {
  group('basic', () {
    testWidgets('should show 5 buttons for a public note', (tester) async {
      const account = Account(host: 'misskey.tld');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: dummyNote.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(dummyNote);
      await tester.pumpAndSettle();
      expect(find.byType(Icon), findsExactly(5));
      await tester.pumpAndSettle();
    });

    testWidgets('should show 4 buttons for a private note', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(visibility: NoteVisibility.followers);
      final container = await setupWidget(
        tester,
        account: account,
        noteId: dummyNote.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byType(Icon), findsExactly(4));
      await tester.pumpAndSettle();
    });
  });

  group('reply', () {
    testWidgets('should not show a replies count if not replied',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        repliesCount: 0,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('0'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a replies count if replied', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        repliesCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should not open a post page on tap for a guest',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.reply));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).replyId, isNull);
    });

    testWidgets('should open a post page on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
        noteId: note.id,
        focusPostForm: () => tapped = true,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
    testWidgets('should not show a renote count if not renoted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteCount: 0,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('0'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a renote count if renoted', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a renote sheet on tap for a guest',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsNothing);
    });

    testWidgets('should show a renote sheet on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsOne);
    });

    testWidgets('should show a block icon for a private note', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        visibility: NoteVisibility.followers,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
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
        userId: 'testuser',
        visibility: NoteVisibility.followers,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.block), findsNothing);
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteSheet), findsOne);
    });

    testWidgets('should show a modal bottom sheet on tap if already renoted',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final renote = dummyNote.copyWith(id: 'renote');
      final note = dummyNote.copyWith(
        id: 'test',
        userId: 'testuser',
        renoteId: renote.id,
        renote: renote,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.delete), findsOne);
    });

    testWidgets('should open a post page on tap if a quote button is hidden',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsOne);
    });

    testWidgets('should call a callback on tap if a quote button is hidden',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      bool tapped = false;
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        focusPostForm: () => tapped = true,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
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

    testWidgets('should not show renoted users on long press if not renoted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteCount: 0,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.longPress(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteUsersSheet), findsNothing);
    });

    testWidgets('should show renoted users on long press if renoted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        renoteCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.longPress(find.byIcon(Icons.repeat_rounded));
      await tester.pumpAndSettle();
      expect(find.byType(RenoteUsersSheet), findsOne);
    });
  });

  group('quote', () {
    testWidgets('should not show a quote button if disabled', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowQuoteButtonInNoteFooter(false);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.format_quote_outlined), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a quote button for a private note',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        visibility: NoteVisibility.followers,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.format_quote_outlined), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not open a post page on tap for a guest',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.format_quote_outlined));
      await tester.pumpAndSettle();
      expect(find.textContaining('/$account/post'), findsNothing);
      expect(container.read(postNotifierProvider(account)).renoteId, isNull);
    });

    testWidgets('should show nothing on tap a quote button', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
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
        noteId: note.id,
        focusPostForm: () {},
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
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
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.favorite_border), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a like button if enabled and like-only',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.favorite_border), findsOne);
      expect(find.byIcon(Icons.add), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a like button if enabled and reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.favorite_border), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets(
        'should not show a reaction confirmation on tap for a guest if enabled',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite_border));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionConfirmationDialog), findsNothing);
    });

    testWidgets('should show a reaction confirmation on tap if enabled',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowLikeButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.favorite_border));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionConfirmationDialog), findsOne);
    });
  });

  group('add reaction', () {
    testWidgets('should not show an add reaction button if reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.add), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a heart icon if like-only', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.add), findsNothing);
      expect(find.byIcon(Icons.favorite_border), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a reaction count', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a reaction count if enabled and not reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 0,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('0'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a reaction count if enabled and reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show an emoji picker on tap for a guest',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(EmojiPicker), findsNothing);
    });

    testWidgets('should show an emoji picker on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(EmojiPicker), findsOne);
    });

    testWidgets('should not show reacted users on long press if not reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 0,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.longPress(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsNothing);
    });

    testWidgets('should show reacted users on long press if reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.longPress(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsOne);
    });
  });

  group('remove reaction', () {
    testWidgets('should not show an remove reaction button if not reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.remove), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a heart icon if like-only', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionAcceptance: ReactionAcceptance.likeOnly,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.remove), findsNothing);
      expect(find.byIcon(Icons.favorite), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a reaction count', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a reaction count if enabled and not reacted',
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
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('0'), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a reaction count if enabled and reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
        reactionCount: 1,
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowReactionsCount(true);
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOne);
      await tester.pumpAndSettle();
    });

    testWidgets('should show a confirmation on tap', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        myReaction: '❤',
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.text(t.misskey.cancelReactionConfirm), findsOne);
    });

    testWidgets('should show reacted users on long press if reacted',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(
        id: 'test',
        reactionCount: 1,
        myReaction: '❤',
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.longPress(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionUsersSheet), findsOne);
    });
  });

  group('clip', () {
    testWidgets('should not show a clip button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.attach_file), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a clip dialog on tap if enabled and guest',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(find.byType(ClipDialog), findsNothing);
    });

    testWidgets('should not show a clip dialog on tap if enabled',
        (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowClipButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.attach_file));
      await tester.pumpAndSettle();
      expect(find.byType(ClipDialog), findsOne);
    });
  });

  group('translate', () {
    testWidgets('should not show a translate button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.translate), findsNothing);
      await tester.pumpAndSettle();
    });

    testWidgets('should not show a translate button if enabled',
        (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setShowTranslateButtonInNoteFooter(true);
      await tester.pumpAndSettle();
      expect(find.byIcon(Icons.translate), findsOne);
      await tester.pumpAndSettle();
    });
  });

  group('menu', () {
    testWidgets('should show a menu on tap a menu button', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(id: 'test');
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.more_horiz));
      await tester.pumpAndSettle();
      expect(find.byType(NoteSheet), findsOne);
    });
  });
}
