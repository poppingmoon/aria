import 'package:aria/model/account.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/view/widget/reaction_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../test_util/create_overrides.dart';
import '../../../test_util/dummy_note.dart';

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
      overrides: createOverrides(account),
      child: MaterialApp(
        home: ReactionButton(
          account: account,
          note: note,
          emoji: emoji,
          count: count,
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  final container =
      ProviderScope.containerOf(tester.element(find.byType(ReactionButton)));
  return container;
}

void main() {
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
}
