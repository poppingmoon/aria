import 'package:aria/i18n/strings.g.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('i18n', () {
    test('Should compile', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.enUs.build().misskey.search, 'Search');
    });

    test('All locales should be supported by Flutter', () {
      for (final locale in AppLocale.values) {
        // This will fail if the locale is not supported by Flutter
        expect(kMaterialSupportedLanguages, contains(locale.languageCode));
      }
    });
  });
}
