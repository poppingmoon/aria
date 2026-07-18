import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
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
import '../../util/force_accept_gesture_recognizer.dart';
import '../../util/future_with_dialog.dart';
import '../../util/get_link_background_color.dart';
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
    final controller = useAnimationController(
      duration: kLongPressTimeout - kPressTimeout,
    );
    final animationValue = useAnimation(controller);
    final activeLinkId = useState<String?>(null);
    final recognizers = useMemoized(() {
      GestureRecognizer registerRecognizer({
        required String linkId,
        void Function()? onTap,
        void Function()? onLongPress,
      }) {
        return ForceAcceptGestureRecognizer()
          ..onLongPressDown = (_) {
            activeLinkId.value = linkId;
            controller.animateTo(1.0, curve: Curves.fastOutSlowIn);
          }
          ..onLongPressUp = () {
            if (onTap case final onTap?) {
              Feedback.forTap(context);
              onTap();
            }
            controller.animateTo(0.0, curve: Curves.easeOut);
          }
          ..onLongPressCancel = () {
            controller.animateTo(0.0, curve: Curves.easeOut);
          }
          ..onLongPress = () {
            if (onLongPress case final onLongPress?) {
              Feedback.forLongPress(context);
              onLongPress();
            }
            controller.animateTo(0.0, curve: Curves.easeOut);
          };
      }

      return {
        'miria': registerRecognizer(
          linkId: 'miria',
          onTap: () => launchUrl(
            ref,
            Uri.https('github.com', 'shiosyakeyakini-info/miria'),
          ),
          onLongPress: () => showModalBottomSheet<void>(
            context: context,
            builder: (context) => const UrlSheet(
              url: 'https://github.com/shiosyakeyakini-info/miria',
            ),
          ),
        ),
        'misskey': registerRecognizer(
          linkId: 'misskey',
          onTap: () =>
              launchUrl(ref, Uri.https('github.com', 'misskey-dev/misskey')),
          onLongPress: () => showModalBottomSheet<void>(
            context: context,
            builder: (context) =>
                const UrlSheet(url: 'https://github.com/misskey-dev/misskey'),
          ),
        ),
        'sevenc_nanashi': registerRecognizer(
          linkId: 'sevenc_nanashi',
          onTap: () => context.push('/voskey.icalo.net/users/9d8sfcv0qj'),
          onLongPress: () => showModalBottomSheet<void>(
            context: context,
            builder: (context) =>
                const UrlSheet(url: 'https://voskey.icalo.net/@sevenc_nanashi'),
          ),
        ),
        'cc_by': registerRecognizer(
          linkId: 'cc_by',
          onTap: () => launchUrl(
            ref,
            Uri.https('creativecommons.org', 'licenses/by/4.0'),
          ),
          onLongPress: () => showModalBottomSheet<void>(
            context: context,
            builder: (context) => const UrlSheet(
              url: 'https://creativecommons.org/licenses/by/4.0',
            ),
          ),
        ),
      };
    });
    useEffect(() {
      return () {
        for (final recognizer in recognizers.values) {
          recognizer.dispose();
        }
      };
    }, []);
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
                        child: Assets.icons.aria.image(
                          width: 80.0,
                          height: 80.0,
                        ),
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
                      miria: TextSpan(
                        text: 'Miria',
                        style: TextStyle(
                          color: colors.link,
                          backgroundColor: activeLinkId.value == 'miria'
                              ? getLinkBackgroundColor(
                                  Theme.brightnessOf(context),
                                  animationValue,
                                )
                              : null,
                        ),
                        recognizer: recognizers['miria'],
                        onEnter: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            activeLinkId.value = 'miria';
                            controller.value = 0.25;
                          }
                        },
                        onExit: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            controller.value = 0.0;
                          }
                        },
                        mouseCursor: SystemMouseCursors.click,
                      ),
                      misskey: TextSpan(
                        text: 'Misskey',
                        style: TextStyle(
                          color: colors.link,
                          backgroundColor: activeLinkId.value == 'misskey'
                              ? getLinkBackgroundColor(
                                  Theme.brightnessOf(context),
                                  animationValue,
                                )
                              : null,
                        ),
                        recognizer: recognizers['misskey'],
                        onEnter: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            activeLinkId.value = 'misskey';
                            controller.value = 0.25;
                          }
                        },
                        onExit: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            controller.value = 0.0;
                          }
                        },
                      ),
                    ),
                    const TextSpan(text: '\n\n'),
                    t.aria.iconAttribution(
                      sevenc_nanashi: TextSpan(
                        text: '@sevenc_nanashi@voskey.icalo.net',
                        style: TextStyle(
                          color: colors.mention,
                          backgroundColor:
                              activeLinkId.value == 'sevenc_nanashi'
                              ? getLinkBackgroundColor(
                                  Theme.brightnessOf(context),
                                  animationValue,
                                )
                              : null,
                        ),
                        recognizer: recognizers['sevenc_nanashi'],
                        onEnter: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            activeLinkId.value = 'sevenc_nanashi';
                            controller.value = 0.25;
                          }
                        },
                        onExit: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            controller.value = 0.0;
                          }
                        },
                      ),
                      cc_by: TextSpan(
                        text: 'CC-BY 4.0',
                        style: TextStyle(
                          color: colors.link,
                          backgroundColor: activeLinkId.value == 'cc_by'
                              ? getLinkBackgroundColor(
                                  Theme.brightnessOf(context),
                                  animationValue,
                                )
                              : null,
                        ),
                        recognizer: recognizers['cc_by'],
                        onEnter: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            activeLinkId.value = 'cc_by';
                            controller.value = 0.25;
                          }
                        },
                        onExit: (_) {
                          if (!controller.isAnimating &&
                              controller.value < 1.0) {
                            controller.value = 0.0;
                          }
                        },
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
                onLongPress: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) => const UrlSheet(
                    url: 'https://github.com/poppingmoon/aria',
                  ),
                ),
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
                onLongPress: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (context) =>
                      const UrlSheet(url: 'https://misskey.io/@aria_app'),
                ),
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
                      child: Assets.icons.aria.image(width: 80.0, height: 80.0),
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
