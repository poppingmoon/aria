import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/launch_url.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/mfm.dart';

class LanguagesPage extends ConsumerWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(generalSettingsNotifierProvider).locale;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.uiLanguage)),
      body: ListTileTheme(
        tileColor: colors.panel,
        child: ListView(
          children: [
            Card(
              margin: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mfm(
                  account: Account.dummy(),
                  text: t.misskey.i18nInfo(
                    link: '[Crowdin](https://crowdin.com/project/misskey)',
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
                          ref,
                          Uri.https('crowdin.com', 'project/aria-for-misskey'),
                        ),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Crowdin',
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
                          textScaler: TextScaler.noScaling,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 8.0,
              margin: const EdgeInsets.only(top: 8.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                color: colors.panel,
              ),
            ),
            ...ListTile.divideTiles(
              context: context,
              tiles: [
                RadioListTile(
                  title: Text(t.misskey.system),
                  value: null,
                  groupValue: locale,
                  onChanged: (_) {
                    ref
                        .read(
                          generalSettingsNotifierProvider.notifier,
                        )
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
                        title: Text(
                          appLocale.translations.misskey.lang__,
                        ),
                        subtitle: Text(appLocale.languageTag),
                        value: appLocale,
                        groupValue: locale,
                        onChanged: (locale) {
                          ref
                              .read(
                                generalSettingsNotifierProvider.notifier,
                              )
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
            Container(
              height: 8.0,
              margin: const EdgeInsets.only(bottom: 8.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                color: colors.panel,
              ),
            ),
          ],
        ),
      ),
      bodyMargin: const EdgeInsets.symmetric(horizontal: 8.0),
      selectedDestination: GeneralSettingsDestination.language,
    );
  }
}
