import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/launch_url.dart';
import '../widget/url_sheet.dart';

class AboutAriaPage extends HookConsumerWidget {
  const AboutAriaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.aria.aboutAria)),
      body: Center(
        child: SizedBox(
          width: 800.0,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Assets.aria.image(width: 80.0, height: 80.0),
                      ),
                    ),
                    const Text('Aria'),
                    FutureBuilder(
                      future: PackageInfo.fromPlatform(),
                      builder: (context, snapshot) {
                        if (snapshot case AsyncSnapshot(:final data?)) {
                          final buildNumber =
                              defaultTargetPlatform == TargetPlatform.android &&
                                      kReleaseMode
                                  ? data.buildNumber
                                      .substring(0, data.buildNumber.length - 1)
                                  : data.buildNumber;
                          return Text('${data.version}+$buildNumber');
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        t.aria.acknowledgements(
                          miria: WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                              onTap: () => launchUrl(
                                ref,
                                Uri.https(
                                  'github.com',
                                  'shiosyakeyakini-info/miria',
                                ),
                              ),
                              onLongPress: () => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => const UrlSheet(
                                  url:
                                      'https://github.com/shiosyakeyakini-info/miria',
                                ),
                              ),
                              child: Text(
                                'Miria',
                                style: TextStyle(color: colors.link),
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                          ),
                          misskey: WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                              onTap: () => launchUrl(
                                ref,
                                Uri.https('github.com', 'misskey-dev/misskey'),
                              ),
                              onLongPress: () => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => const UrlSheet(
                                  url: 'https://github.com/misskey-dev/misskey',
                                ),
                              ),
                              child: Text(
                                'Misskey',
                                style: TextStyle(color: colors.link),
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                          ),
                        ),
                        const TextSpan(text: '\n\n'),
                        t.aria.iconAttribution(
                          sevenc_nanashi: WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                              onTap: () => context
                                  .push('/voskey.icalo.net/users/9d8sfcv0qj'),
                              onLongPress: () => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => const UrlSheet(
                                  url:
                                      'https://voskey.icalo.net/@sevenc_nanashi',
                                ),
                              ),
                              child: Text(
                                '@sevenc_nanashi@voskey.icalo.net',
                                style: TextStyle(color: colors.mention),
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                          ),
                          cc_by: WidgetSpan(
                            alignment: PlaceholderAlignment.baseline,
                            baseline: TextBaseline.alphabetic,
                            child: InkWell(
                              onTap: () => launchUrl(
                                ref,
                                Uri.https(
                                  'creativecommons.org',
                                  'licenses/by/4.0',
                                ),
                              ),
                              onLongPress: () => showModalBottomSheet<void>(
                                context: context,
                                builder: (context) => const UrlSheet(
                                  url:
                                      'https://creativecommons.org/licenses/by/4.0',
                                ),
                              ),
                              child: Text(
                                'CC-BY 4.0',
                                style: TextStyle(color: colors.link),
                                textScaler: TextScaler.noScaling,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.code),
                title: Text(t.misskey.aboutMisskey_.source),
                onTap: () => launchUrl(
                  ref,
                  Uri.https('github.com', 'poppingmoon/aria'),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.alternate_email),
                title: Text(t.misskey.contact),
                onTap: () => context.push('/misskey.io/users/9qaqpdbgn1nk03sc'),
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: Text(t.misskey.license),
                onTap: () async {
                  final packageInfo = await PackageInfo.fromPlatform();
                  if (!context.mounted) return;
                  showLicensePage(
                    context: context,
                    applicationVersion: packageInfo.version,
                    applicationIcon: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Assets.aria.image(width: 80.0, height: 80.0),
                    ),
                    applicationLegalese: 'Licensed under AGPL v3',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
