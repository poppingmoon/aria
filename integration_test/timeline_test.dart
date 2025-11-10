import 'package:aria/i18n/strings.g.dart';
import 'package:aria/main.dart';
import 'package:aria/model/general_settings.dart';
import 'package:aria/provider/accounts_notifier_provider.dart';
import 'package:aria/provider/general_settings_notifier_provider.dart';
import 'package:aria/provider/timeline_tabs_notifier_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('should show no tabs on first boot', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          accountsNotifierProvider.overrideWithValue([]),
          generalSettingsNotifierProvider.overrideWithValue(
            const GeneralSettings(locale: AppLocale.enUs),
          ),
          timelineTabsNotifierProvider.overrideWithValue([]),
        ],
        child: TranslationProvider(child: const Aria()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('No tabs'), findsOneWidget);
  });
}
