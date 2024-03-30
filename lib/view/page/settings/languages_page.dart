import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../widget/mfm.dart';

class LanguagesPage extends ConsumerWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(generalSettingsNotifierProvider).locale;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.uiLanguage)),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Mfm(
                account: Account.dummy(),
                text: t.misskey.i18nInfo(
                  link: '[crowdin](https://crowdin.com/project/misskey)',
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                t.aria.i18nInfo(
                  link: WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: InkWell(
                      onTap: () => launchUrl(
                        Uri.https('github.com', 'poppingmoon/aria'),
                      ),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'GitHub',
                              style: TextStyle(color: colors.link),
                            ),
                            WidgetSpan(
                              child: Builder(
                                builder: (context) => Icon(
                                  Icons.open_in_new,
                                  color: colors.link,
                                  size: DefaultTextStyle.of(context)
                                      .style
                                      .fontSize,
                                ),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          RadioListTile(
            title: Text(t.misskey.system),
            value: null,
            groupValue: locale,
            onChanged: (_) {
              ref
                  .read(generalSettingsNotifierProvider.notifier)
                  .setLocale(null);
              LocaleSettings.useDeviceLocale();
            },
          ),
          ...AppLocaleUtils.supportedLocales
              .sortedBy((locale) => locale.toLanguageTag())
              .map(
                (locale) => AppLocale.values.firstWhere(
                  (appLocale) =>
                      appLocale.languageTag == locale.toLanguageTag(),
                ),
              )
              .map(
                (appLocale) => RadioListTile(
                  title: Text(appLocale.translations.misskey.lang__),
                  subtitle: Text(appLocale.languageTag),
                  value: appLocale,
                  groupValue: locale,
                  onChanged: (locale) {
                    ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setLocale(locale);
                    if (locale == null) {
                      LocaleSettings.useDeviceLocale();
                    } else {
                      LocaleSettings.setLocale(locale);
                    }
                  },
                ),
              ),
        ],
      ),
    );
  }
}
