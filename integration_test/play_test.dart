import 'package:aria/i18n/strings.g.dart';
import 'package:aria/main.dart';
import 'package:aria/model/account.dart';
import 'package:aria/model/general_settings.dart';
import 'package:aria/provider/accounts_notifier_provider.dart';
import 'package:aria/provider/api/endpoints_notifier_provider.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/api/play_notifier_provider.dart';
import 'package:aria/provider/api/user_notifier_provider.dart';
import 'package:aria/provider/emojis_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/server_url_notifier_provider.dart';
import 'package:aria/provider/timeline_tabs_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../test/test_util/dummy_me_detailed.dart';
import '../test/test_util/dummy_user_detailed_not_me.dart';
import '../test/test_util/dummy_user_lite.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should run a Play', (tester) async {
    const account = Account(host: 'misskey.tld', username: 'testuser');
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accountsNotifierProvider.overrideWithValue([account]),
          emojisNotifierProvider.overrideWithBuild((_, _) => {}),
          endpointsNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => []),
          generalSettingsNotifierProvider.overrideWithValue(
            const GeneralSettings(),
          ),
          iNotifierProvider(
            account,
          ).overrideWithBuild((_, _) => dummyMeDetailed),
          playNotifierProvider(account, 'testplay').overrideWithBuild(
            (_, _) => Flash(
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
          serverUrlNotifierProvider(
            account.host,
          ).overrideWithValue(Uri.https(account.host)),
          timelineTabsNotifierProvider.overrideWithValue([]),
          userNotifierProvider(
            account,
            userId: '',
          ).overrideWithBuild((_, _) => dummyUserDetailedNotMe),
        ],
        child: TranslationProvider(child: const Aria()),
      ),
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

  testWidgets('should run a Play written in AiScript v0', (tester) async {
    const account = Account(host: 'misskey.tld', username: 'testuser');
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accountsNotifierProvider.overrideWithValue([account]),
          emojisNotifierProvider.overrideWithBuild((_, _) => {}),
          endpointsNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => []),
          generalSettingsNotifierProvider.overrideWithValue(
            const GeneralSettings(),
          ),
          iNotifierProvider(
            account,
          ).overrideWithBuild((_, _) => dummyMeDetailed),
          playNotifierProvider(account, 'testplay').overrideWithBuild(
            (_, _) => Flash(
              id: 'testplay',
              createdAt: DateTime(0),
              updatedAt: DateTime(0),
              title: 'Test Play',
              summary: 'Test Play summary',
              script: '''
/// @ 0.19.0

Ui:render([Ui:C:text({text: Core:ai}) Ui:C:text({text: Core:ai})])
''',
              userId: '',
              user: dummyUserLite,
            ),
          ),
          serverUrlNotifierProvider(
            account.host,
          ).overrideWithValue(Uri.https(account.host)),
          timelineTabsNotifierProvider.overrideWithValue([]),
          userNotifierProvider(
            account,
            userId: '',
          ).overrideWithBuild((_, _) => dummyUserDetailedNotMe),
        ],
        child: TranslationProvider(child: const Aria()),
      ),
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
    await tester.tap(find.text('Play'));
    await tester.pumpAndSettle();
    expect(find.text('kawaii'), findsExactly(2));
  });

  testWidgets('should run a Play written in AiScript v1', (tester) async {
    const account = Account(host: 'misskey.tld', username: 'testuser');
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accountsNotifierProvider.overrideWithValue([account]),
          emojisNotifierProvider.overrideWithBuild((_, _) => {}),
          endpointsNotifierProvider(
            account.host,
          ).overrideWithBuild((_, _) => []),
          generalSettingsNotifierProvider.overrideWithValue(
            const GeneralSettings(),
          ),
          iNotifierProvider(
            account,
          ).overrideWithBuild((_, _) => dummyMeDetailed),
          playNotifierProvider(account, 'testplay').overrideWithBuild(
            (_, _) => Flash(
              id: 'testplay',
              createdAt: DateTime(0),
              updatedAt: DateTime(0),
              title: 'Test Play',
              summary: 'Test Play summary',
              script: '''
/// @ 1.2.1

let [_, username, host] = "@testuser@misskey.tld".split("@")
Ui:render([Ui:C:text({text: `https://{host}/@{username}`})])
''',
              userId: '',
              user: dummyUserLite,
            ),
          ),
          serverUrlNotifierProvider(
            account.host,
          ).overrideWithValue(Uri.https(account.host)),
          timelineTabsNotifierProvider.overrideWithValue([]),
          userNotifierProvider(
            account,
            userId: '',
          ).overrideWithBuild((_, _) => dummyUserDetailedNotMe),
        ],
        child: TranslationProvider(child: const Aria()),
      ),
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
    await tester.tap(find.text('Play'));
    await tester.pumpAndSettle();
    expect(find.text('https://misskey.tld/@testuser'), findsOne);
  });
}
