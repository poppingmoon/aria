import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
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
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.uiLanguage)),
      body: ListTileTheme(
        tileColor: colors.panel,
        child: ListView(
          children: [
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Mfm(
                      account: Account.dummy(),
                      text: t.misskey.i18nInfo(
                        link: '[Crowdin](https://crowdin.com/project/misskey)',
                      ),
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Card(
                  margin: EdgeInsets.zero,
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
                              Uri.https(
                                'crowdin.com',
                                'project/aria-for-misskey',
                              ),
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
                                        size: DefaultTextStyle.of(
                                          context,
                                        ).style.fontSize,
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
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSecondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: RadioListTile(
                  title: Text(t.misskey.system),
                  value: null,
                  groupValue: locale,
                  onChanged: (_) {
                    ref
                        .read(generalSettingsNotifierProvider.notifier)
                        .setLocale(null);
                    LocaleSettings.useDeviceLocale();
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8.0),
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                ),
              ),
            ),
            for (final (index, appLocale)
                in AppLocaleUtils.supportedLocales
                    .sortedBy((locale) => locale.toLanguageTag())
                    .map(
                      (locale) => AppLocale.values.firstWhere(
                        (appLocale) =>
                            appLocale.languageTag == locale.toLanguageTag(),
                      ),
                    )
                    .indexed) ...[
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: maxContentWidth,
                    child: Divider(height: 0.0),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: RadioListTile(
                    title: FutureBuilder(
                      future: LocaleSettings.instance.loadLocale(appLocale),
                      builder: (context, snapshot) =>
                          Text(appLocale.translations.misskey.lang__),
                    ),
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
                    shape: index == AppLocaleUtils.supportedLocales.length - 1
                        ? const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8.0),
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ],
            const SizedBox(height: 8.0),
          ],
        ),
      ),
      selectedDestination: GeneralSettingsDestination.language,
    );
  }
}
