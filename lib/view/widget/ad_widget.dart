import 'dart:math';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/muted_ads_notifier_provider.dart';
import '../../util/navigate.dart';
import 'image_widget.dart';
import 'url_sheet.dart';

class AdWidget extends HookConsumerWidget {
  const AdWidget({super.key, required this.account, this.specify});

  final Account account;
  final MetaAd? specify;

  MetaAd chooseAd(List<MetaAd> allAds, List<String> mutedAds) {
    final ads = allAds.map(
      (ad) => mutedAds.contains(ad.id) ? ad.copyWith(ratio: 0) : ad,
    );
    final group = ads.groupListsBy((ad) => ad.ratio > 0);
    final highPriorityAds = group[true];
    if (highPriorityAds == null || highPriorityAds.isEmpty) {
      final lowPriorityAds = group[false]!;
      return lowPriorityAds[Random().nextInt(lowPriorityAds.length)];
    }
    final accumulatedFactor = highPriorityAds.map((ad) => ad.ratio).toList();
    for (int i = 1; i < highPriorityAds.length; i++) {
      accumulatedFactor[i] += accumulatedFactor[i - 1];
    }
    final r = Random().nextDouble() * accumulatedFactor.last;
    final index = accumulatedFactor.indexWhere((factor) => r < factor);
    return highPriorityAds[index];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    if (i != null && specify == null) {
      if (i.policies?.canHideAds ?? true) {
        final forceShowAds = ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.forceShowAds,
          ),
        );
        if (!forceShowAds) {
          return const SizedBox.shrink();
        }
      }
    }
    final allAds = ref.watch(metaNotifierProvider(account.host)).value?.ads;
    if (allAds == null || allAds.isEmpty) {
      return const SizedBox.shrink();
    }
    final mutedAds = ref.watch(mutedAdsNotifierProvider(account));
    final MetaAd ad =
        specify ?? useMemoized(() => chooseAd(allAds, mutedAds), [mutedAds]);
    final (sensitive, openMediaOnDoubleTap) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.sensitive, settings.openSensitiveMediaOnDoubleTap),
      ),
    );
    final hide = useState(
      (ad.isSensitive ?? false) && sensitive != SensitiveMediaDisplay.ignore,
    );
    final showMenu = useState(false);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );
    final style = DefaultTextStyle.of(context).style;

    return InkWell(
      onTap: () {
        if (hide.value) {
          if (!openMediaOnDoubleTap) {
            hide.value = false;
          }
        } else if (!showMenu.value) {
          navigate(ref, account, ad.url.toString());
        }
      },
      onDoubleTap: hide.value && openMediaOnDoubleTap
          ? () => hide.value = false
          : null,
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) => UrlSheet(url: ad.url.toString()),
      ),
      child: ClipRect(
        child: Stack(
          alignment: Alignment.center,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                const Color(0xffb4b4b4),
                hide.value || showMenu.value
                    ? BlendMode.multiply
                    : BlendMode.dst,
              ),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 48.0,
                  sigmaY: 48.0,
                  tileMode: TileMode.decal,
                ),
                enabled: hide.value || showMenu.value,
                child: ImageWidget(
                  url: ad.imageUrl.toString(),
                  width: double.infinity,
                  fit: hide.value || showMenu.value
                      ? BoxFit.fill
                      : BoxFit.contain,
                ),
              ),
            ),
            if (showMenu.value)
              Card(
                color: Theme.of(context).colorScheme.surface,
                margin: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 2.0,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Ads by ${account.host}'),
                      ),
                      if (ad.ratio > 0)
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colors.fg,
                            backgroundColor: colors.buttonBg,
                            elevation: 0.0,
                          ),
                          onPressed: () async {
                            await ref
                                .read(
                                  mutedAdsNotifierProvider(account).notifier,
                                )
                                .add(ad.id);
                            if (!context.mounted) return;
                            showMenu.value = false;
                          },
                          child: Text(t.misskey.ad_.reduceFrequencyOfThisAd),
                        ),
                      TextButton(
                        onPressed: () => showMenu.value = false,
                        child: Text(t.misskey.ad_.back),
                      ),
                    ],
                  ),
                ),
              )
            else if (hide.value)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.warning_amber,
                            size: style.lineHeight * 0.8,
                            color: Colors.white,
                          ),
                        ),
                        const WidgetSpan(child: SizedBox(width: 4.0)),
                        TextSpan(
                          text: t.misskey.sensitive,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    style: style.apply(
                      color: Colors.white,
                      fontSizeFactor: 0.8,
                    ),
                  ),
                  Text(
                    openMediaOnDoubleTap
                        ? t.aria.doubleTapToShow
                        : t.aria.tapToShow,
                    style: style.apply(
                      color: Colors.white,
                      fontSizeFactor: 0.8,
                    ),
                  ),
                ],
              ),
            if (!showMenu.value)
              PositionedDirectional(
                top: 4.0,
                end: 4.0,
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: colors.bg.withValues(alpha: 0.8),
                  ),
                  onPressed: () => showMenu.value = true,
                  icon: const Icon(Icons.info_outline),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
