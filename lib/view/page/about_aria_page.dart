import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../constant/max_content_width.dart';
import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../widget/url_sheet.dart';

class AboutAriaPage extends HookConsumerWidget {
  const AboutAriaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final packageInfo = useMemoized(PackageInfo.fromPlatform);
    final (version, buildNumber) = switch (useFuture(packageInfo).data) {
      PackageInfo(:final version, :final buildNumber) => (
        version,
        defaultTargetPlatform == TargetPlatform.android && kReleaseMode
            ? buildNumber.substring(0, buildNumber.length - 1)
            : buildNumber,
      ),
      _ => (null, null),
    };
    final deviceInfo = useMemoized(() => DeviceInfoPlugin().deviceInfo);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.aria.aboutAria)),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: maxContentWidth,
              child: Card.filled(
                color: colors.panel,
                margin: EdgeInsets.zero,
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
                    if (version != null && buildNumber != null)
                      Text(
                        '$version+$buildNumber',
                        style: TextStyle(
                          color: colors.fg.withValues(alpha: 0.7),
                        ),
                      ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.all(8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                          onTap: () => context.push(
                            '/voskey.icalo.net/users/9d8sfcv0qj',
                          ),
                          onLongPress: () => showModalBottomSheet<void>(
                            context: context,
                            builder: (context) => const UrlSheet(
                              url: 'https://voskey.icalo.net/@sevenc_nanashi',
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
                            Uri.https('creativecommons.org', 'licenses/by/4.0'),
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
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.code),
                title: Text(t.misskey.aboutMisskey_.source),
                onTap: () =>
                    launchUrl(ref, Uri.https('github.com', 'poppingmoon/aria')),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.alternate_email),
                title: Text(t.misskey.contact),
                onTap: () => context.push('/misskey.io/users/9qaqpdbgn1nk03sc'),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.list),
                title: Text(t.misskey.license),
                onTap: () async {
                  final version = (await packageInfo).version;
                  if (!context.mounted) return;
                  showLicensePage(
                    context: context,
                    applicationVersion: version,
                    applicationIcon: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Assets.aria.image(width: 80.0, height: 80.0),
                    ),
                    applicationLegalese: 'Licensed under AGPL v3',
                  );
                },
              ),
            ),
          ),
          const Divider(),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ListTile(
                leading: const Icon(Icons.devices),
                title: Text(t.aria.clientInfo),
                onTap: () async {
                  final result = await futureWithDialog(
                    context,
                    (deviceInfo, packageInfo).wait,
                  );
                  if (!context.mounted) return;
                  if (result != null) {
                    final deviceInfo = switch (result.$1) {
                      AndroidDeviceInfo(:final model, :final version) =>
                        '$model (Android ${version.release})',
                      IosDeviceInfo(
                        :final modelName,
                        :final systemName,
                        :final systemVersion,
                      ) =>
                        '$modelName ($systemName $systemVersion)',
                      LinuxDeviceInfo(:final prettyName) => prettyName,
                      MacOsDeviceInfo(:final modelName, :final osRelease) =>
                        '$modelName (macOS $osRelease)',
                      WindowsDeviceInfo(:final productName) => productName,
                      _ => '',
                    };
                    final packageInfo = [
                      version,
                      '+',
                      buildNumber,
                      if (result.$2.installerStore case final store?)
                        ' ($store)',
                    ].join();
                    await showDialog<void>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(t.aria.clientInfo),
                        content: SizedBox(
                          width: maxContentWidth,
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              ListTile(
                                title: Text(t.aria.device),
                                subtitle: Text(deviceInfo),
                              ),
                              ListTile(
                                title: const Text('Aria'),
                                subtitle: Text(packageInfo),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () => copyToClipboard(
                              context,
                              'Device: $deviceInfo\nAria: $packageInfo',
                            ),
                            child: Text(t.misskey.copy),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
