import 'package:aria/i18n/strings.g.dart';
import 'package:aria/main.dart';
import 'package:aria/model/account.dart';
import 'package:aria/provider/api/misskey_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:integration_test/integration_test.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../test/test_util/create_overrides.dart';
import '../test/test_util/dummy_user_lite.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should run a Play', (tester) async {
    const account = Account(host: 'misskey.tld', username: 'testuser');
    await tester.pumpWidget(
      ProviderScope(
        overrides: createOverrides(
          account,
          prefs: {
            'accounts': ['{"host": "misskey.tld", "username": "testuser"}'],
          },
        ),
        child: TranslationProvider(child: const Aria()),
      ),
    );
    final container = ProviderScope.containerOf(
      tester.element(find.byType(Aria)),
    );
    final dioAdapter = DioAdapter(
      dio: container.read(misskeyProvider(account)).apiService.dio,
    );
    dioAdapter.onPost(
      'flash/show',
      (server) => server.reply(
        200,
        Flash(
          id: 'testplay',
          createdAt: DateTime(0),
          updatedAt: DateTime(0),
          title: 'Test Play',
          summary: 'Test Play summary',
          script: '''
/// @ 0.19.0

var input = ""
Ui:render([
  Ui:C:textarea({
    onInput: @(text) {
      input = text
    },
  }),
  Ui:C:button({
    text: "Nyaize!",
    onClick: @() {
      Ui:render([
        Ui:C:text({text: Mk:nyaize(input)}),
      ])
    },
  }),
])
''',
          userId: '',
          user: dummyUserLite,
        ),
      ),
      data: {'flashId': 'testplay'},
    );
    await tester.pumpAndSettle();
    if (find.byIcon(Icons.menu).evaluate().isNotEmpty) {
      await tester.tap(find.byIcon(Icons.menu));
      await tester.pumpAndSettle();
    }
    await tester.tap(find.byType(ExpansionTile));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.more_horiz));
    await tester.pumpAndSettle();
    await tester.tap(find.byIcon(Icons.travel_explore));
    await tester.pumpAndSettle();
    expect(find.byType(TextField), findsOne);
    await tester.enterText(
      find.byType(TextField),
      'https://misskey.tld/play/testplay',
    );
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();
    expect(find.text('Test Play'), findsExactly(2));
    expect(find.text('Test Play summary'), findsOne);
    await tester.tap(find.text('Play'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Nyaize is enabled!');
    await tester.tap(find.text('Nyaize!'));
    await tester.pumpAndSettle();
    expect(find.text('Nyaize is enyabled!'), findsOne);
  });
}
