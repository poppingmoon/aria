import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../widget/ad_widget.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';

class ServerAds extends ConsumerWidget {
  const ServerAds({super.key, required this.host});

  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meta = ref.watch(metaNotifierProvider(host));

    return HapticFeedbackRefreshIndicator(
      onRefresh: () => ref.refresh(metaNotifierProvider(host).future),
      child: switch (meta) {
        AsyncValue(value: MetaResponse(:final ads)) =>
          ads.isNotEmpty
              ? ListView.builder(
                  itemBuilder: (context, index) => AdWidget(
                    account: Account(host: host),
                    specify: ads[index],
                  ),
                  itemCount: ads.length,
                )
              : LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.nothing)),
                    ),
                  ),
                ),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
          error: error,
          stackTrace: stackTrace,
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
