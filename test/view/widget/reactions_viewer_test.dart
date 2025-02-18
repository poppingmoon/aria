import 'package:aria/model/account.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/notes_notifier_provider.dart';
import 'package:aria/view/widget/reaction_button.dart';
import 'package:aria/view/widget/reactions_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../test_util/create_overrides.dart';
import '../../test_util/dummy_note.dart';

Future<ProviderContainer> setupWidget(
  WidgetTester tester, {
  required Account account,
  required String noteId,
  bool showAllReactions = false,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: createOverrides(account),
      child: MaterialApp(
        home: ReactionsViewer(
          account: account,
          noteId: noteId,
          showAllReactions: showAllReactions,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  final container = ProviderScope.containerOf(
    tester.element(find.byType(ReactionsViewer)),
  );
  return container;
}

void main() {
  group('basic', () {
    testWidgets(
      'reactions should be ordered in descending order of the count',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
        );
        final container = await setupWidget(
          tester,
          account: account,
          noteId: note.id,
        );
        container.read(notesNotifierProvider(account).notifier).add(note);
        await tester.pumpAndSettle();
        final reactions = tester.widgetList<ReactionButton>(
          find.byType(ReactionButton),
        );
        expect(reactions.length, 3);
        expect(reactions.elementAt(0).emoji, ':emoji2:');
        expect(reactions.elementAt(1).emoji, ':emoji3:');
        expect(reactions.elementAt(2).emoji, ':emoji1:');
      },
    );

    testWidgets('should show a limited number of emojis', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: Map.fromEntries(
          List.generate(21, (i) => MapEntry(':emoji$i:', i + 1)),
        ),
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byType(ReactionButton), findsExactly(20));
      await tester.tap(find.byType(TextButton));
      await tester.pumpAndSettle();
      expect(find.byType(ReactionButton), findsExactly(21));
      expect(find.byType(TextButton), findsNothing);
    });

    testWidgets('should show all emojis if specified', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: Map.fromEntries(
          List.generate(21, (i) => MapEntry(':emoji$i:', i + 1)),
        ),
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
        showAllReactions: true,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      expect(find.byType(ReactionButton), findsExactly(21));
      expect(find.byType(TextButton), findsNothing);
    });
  });

  group('update', () {
    testWidgets('should update reactions count in-place', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      container
          .read(notesNotifierProvider(account).notifier)
          .add(
            note.copyWith(
              reactions: {':emoji1:': 5, ':emoji2:': 3, ':emoji3:': 4},
            ),
          );
      await tester.pumpAndSettle();
      final reactions = tester.widgetList<ReactionButton>(
        find.byType(ReactionButton),
      );
      expect(reactions.length, 3);
      expect(reactions.elementAt(0).emoji, ':emoji2:');
      expect(reactions.elementAt(0).count, 3);
      expect(reactions.elementAt(1).emoji, ':emoji3:');
      expect(reactions.elementAt(1).count, 4);
      expect(reactions.elementAt(2).emoji, ':emoji1:');
      expect(reactions.elementAt(2).count, 5);
      await tester.pumpAndSettle();
    });

    testWidgets('should append new reactions at last', (tester) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      container
          .read(notesNotifierProvider(account).notifier)
          .add(
            note.copyWith(
              reactions: {
                ':emoji0:': 1,
                ':emoji1:': 1,
                ':emoji2:': 3,
                ':emoji3:': 2,
              },
            ),
          );
      await tester.pumpAndSettle();
      final reactions = tester.widgetList<ReactionButton>(
        find.byType(ReactionButton),
      );
      expect(reactions.length, 4);
      expect(reactions.elementAt(0).emoji, ':emoji2:');
      expect(reactions.elementAt(1).emoji, ':emoji3:');
      expect(reactions.elementAt(2).emoji, ':emoji1:');
      expect(reactions.elementAt(3).emoji, ':emoji0:');
      await tester.pumpAndSettle();
    });

    testWidgets('should preserve ordering of reactions when removed', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: {':emoji1:': 1, ':emoji2:': 3, ':emoji3:': 2},
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await tester.pumpAndSettle();
      container
          .read(notesNotifierProvider(account).notifier)
          .add(note.copyWith(reactions: {':emoji1:': 4, ':emoji2:': 3}));
      await tester.pumpAndSettle();
      final reactions = tester.widgetList<ReactionButton>(
        find.byType(ReactionButton),
      );
      expect(reactions.length, 2);
      expect(reactions.elementAt(0).emoji, ':emoji2:');
      expect(reactions.elementAt(1).emoji, ':emoji1:');
      await tester.pumpAndSettle();
    });
  });

  group('merge', () {
    testWidgets('should show a local emoji if a local emoji is included', (
      tester,
    ) async {
      const account = Account(host: 'misskey.tld');
      final note = dummyNote.copyWith(
        reactions: {
          ':emoji@.:': 1,
          ':emoji@misskey.tld:': 3,
          ':emoji@misskey2.tld:': 2,
        },
      );
      final container = await setupWidget(
        tester,
        account: account,
        noteId: note.id,
      );
      container.read(notesNotifierProvider(account).notifier).add(note);
      await container
          .read(generalSettingsNotifierProvider.notifier)
          .setMergeReactionsByName(true);
      await tester.pumpAndSettle();
      final reaction = tester.widget<ReactionButton>(
        find.byType(ReactionButton),
      );
      expect(reaction.emoji, ':emoji@.:');
      expect(reaction.count, 6);
    });

    testWidgets(
      'should show a most reacted emoji if a local emoji is not included',
      (tester) async {
        const account = Account(host: 'misskey.tld');
        final note = dummyNote.copyWith(
          reactions: {
            ':emoji@misskey.tld:': 1,
            ':emoji@misskey2.tld:': 3,
            ':emoji@misskey3.tld:': 2,
          },
        );
        final container = await setupWidget(
          tester,
          account: account,
          noteId: note.id,
        );
        container.read(notesNotifierProvider(account).notifier).add(note);
        await container
            .read(generalSettingsNotifierProvider.notifier)
            .setMergeReactionsByName(true);
        await tester.pumpAndSettle();
        final reaction = tester.widget<ReactionButton>(
          find.byType(ReactionButton),
        );
        expect(reaction.emoji, ':emoji@misskey2.tld:');
        expect(reaction.count, 6);
      },
    );
  });
}
