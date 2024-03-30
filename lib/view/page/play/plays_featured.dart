import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_pages_provider.dart';
import '../../../provider/api/featured_plays_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/play_preview.dart';

class PlaysFeatured extends ConsumerWidget {
  const PlaysFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plays = ref.watch(featuredPlaysProvider(account));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(featuredPagesProvider(account).future),
      child: switch (plays) {
        AsyncValue(valueOrNull: final plays?) => plays.isEmpty
            ? Center(child: Text(t.misskey.nothing))
            : ListView.separated(
                itemBuilder: (context, index) => PlayPreview(
                  account: account,
                  play: plays[index],
                  onTap: () => launchUrl(
                    Uri.https(account.host, 'play/${plays[index].id}'),
                    mode: LaunchMode.externalApplication,
                  ),
                ),
                separatorBuilder: (_, __) => const Divider(height: 0.0),
                itemCount: plays.length,
              ),
        AsyncValue(:final error?, :final stackTrace) =>
          ErrorMessage(error: error, stackTrace: stackTrace),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
