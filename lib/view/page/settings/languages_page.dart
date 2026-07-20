import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/max_content_width.dart';
import '../../../extension/app_locale_utils_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/launch_url.dart';
import '../../widget/general_settings_scaffold.dart';
import '../../widget/link_widget.dart';
import '../../widget/mfm.dart';
import '../../widget/url_sheet.dart';

class LanguagesPage extends ConsumerWidget {
  const LanguagesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(generalSettingsNotifierProvider).locale;
    final theme = Theme.of(context);
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return GeneralSettingsScaffold(
      appBar: AppBar(title: Text(t.misskey.uiLanguage)),
      body: ListTileTheme(
        tileColor: colors.panel,
        child: RadioGroup<AppLocale?>(
          groupValue: locale,
          onChanged: (value) {
            ref.read(generalSettingsNotifierProvider.notifier).setLocale(value);
            final locale = value ?? AppLocaleUtils.instance.findDeviceLocale();
            LocaleSettings.setLocale(locale);
          },
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
                          link:
                              '[Crowdin](https://crowdin.com/project/misskey)',
                        ),
                        style: TextStyle(
                          color: theme.colorScheme.onSecondaryContainer,
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
                      child: LinkWidget(
                        text: 'Crowdin',
                        builder: (context, span) => Text.rich(
                          t.aria.i18nInfo(link: span),
                          style: TextStyle(
                            color: theme.colorScheme.onSecondaryContainer,
                          ),
                        ),
                        onTap: () => launchUrl(
                          ref,
                          Uri.https('crowdin.com', 'project/aria-for-misskey'),
                        ),
                        onLongPress: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => const UrlSheet(
                            url: 'https://crowdin.com/project/aria-for-misskey',
                          ),
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
                  child: RadioListTile<AppLocale?>(
                    title: Text(t.misskey.system),
                    value: null,
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
                    child: RadioListTile<AppLocale?>(
                      title: FutureBuilder(
                        future: LocaleSettings.instance.loadLocale(appLocale),
                        builder: (context, snapshot) =>
                            Text(appLocale.translations.misskey.lang__),
                      ),
                      subtitle: Text(appLocale.languageTag),
                      value: appLocale,
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
      ),
      selectedDestination: GeneralSettingsDestination.language,
    );
  }
}
