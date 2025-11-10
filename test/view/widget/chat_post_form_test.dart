import 'package:aria/i18n/strings.g.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/shared_preferences_provider.dart';
import 'package:aria/view/widget/chat_post_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../test_util/fake_shared_preferences.dart';

Future<void> setupWidget(
  WidgetTester tester, {
  required Account account,
  String? userId,
  String? roomId,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(FakeSharedPreferences({})),
      ],
      child: MaterialApp(
        home: Material(
          child: ChatPostForm(account: account, userId: userId, roomId: roomId),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('basic', () {
    testWidgets('should show entered text', (tester) async {
      const account = Account(host: 'misskey.tld', username: 'testuser');
      await setupWidget(tester, account: account, userId: '');
      await tester.tap(find.text(t.misskey.inputMessageHere));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), 'test message');
      await tester.pumpAndSettle();
      expect(find.text('test message'), findsOne);
    });
  });
}
