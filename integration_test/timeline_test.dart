import 'package:aria/i18n/strings.g.dart';
import 'package:aria/main.dart';
import 'package:aria/provider/shared_preferences_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

import '../test/test_util/fake_shared_preferences.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should show no tabs on first boot', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(
            FakeSharedPreferences({'generalSettings': '{"locale": "enUs"}'}),
          ),
        ],
        child: TranslationProvider(child: const Aria()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('No tabs'), findsOneWidget);
  });
}
