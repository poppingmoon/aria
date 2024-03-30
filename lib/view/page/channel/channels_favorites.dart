import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/favorite_channels_provider.dart';
import '../../widget/channel_preview.dart';
import '../../widget/error_message.dart';

class ChannelsFavorites extends ConsumerWidget {
  const ChannelsFavorites({
    super.key,
    required this.account,
    this.onChannelTap,
  });

  final Account account;
  final void Function(CommunityChannel channel)? onChannelTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channels = ref.watch(favoriteChannelsProvider(account));
    return RefreshIndicator(
      onRefresh: () => ref.refresh(favoriteChannelsProvider(account).future),
      child: switch (channels) {
        AsyncValue(valueOrNull: final channels?) => channels.isEmpty
            ? Center(child: Text(t.misskey.nothing))
            : ListView.separated(
                itemBuilder: (context, index) => ChannelPreview(
                  account: account,
                  channel: channels[index],
                  onTap: onChannelTap != null
                      ? () => onChannelTap?.call(channels[index])
                      : null,
                ),
                separatorBuilder: (_, __) => const Divider(height: 0.0),
                itemCount: channels.length,
              ),
        AsyncValue(:final error?, :final stackTrace) =>
          ErrorMessage(error: error, stackTrace: stackTrace),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
