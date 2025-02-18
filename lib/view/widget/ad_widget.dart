import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
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
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
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
    final allAds =
        ref.watch(metaNotifierProvider(account.host)).valueOrNull?.ads;
    if (allAds == null || allAds.isEmpty) {
      return const SizedBox.shrink();
    }
    final mutedAds = ref.watch(mutedAdsNotifierProvider(account));
    final MetaAd ad =
        specify ?? useMemoized(() => chooseAd(allAds, mutedAds), [mutedAds]);
    final showMenu = useState(false);

    if (showMenu.value) {
      return Column(
        children: [
          Text('Ads by ${account.host}'),
          if (ad.ratio > 0)
            TextButton(
              onPressed: () async {
                await ref
                    .read(mutedAdsNotifierProvider(account).notifier)
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
      );
    } else {
      return Stack(
        children: [
          Center(
            child: InkWell(
              onTap: () => navigate(ref, account, ad.url.toString()),
              onLongPress:
                  () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => UrlSheet(url: ad.url.toString()),
                  ),
              child: ImageWidget(
                url: ad.imageUrl.toString(),
                height: ad.place == 'square' ? 200 : null,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(
                  context,
                ).canvasColor.withValues(alpha: 0.8),
              ),
              onPressed: () => showMenu.value = true,
              icon: const Icon(Icons.info_outline),
            ),
          ),
        ],
      );
    }
  }
}
