import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_channels_provider.dart';
import '../../widget/channel_preview.dart';
import '../../widget/error_message.dart';

class ChannelsFeatured extends ConsumerWidget {
  const ChannelsFeatured({
    super.key,
    required this.account,
    this.onChannelTap,
  });

  final Account account;
  final void Function(CommunityChannel channel)? onChannelTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channels = ref.watch(featuredChannelsProvider(account));
    return RefreshIndicator(
      onRefresh: () => ref.refresh(featuredChannelsProvider(account).future),
      child: Center(
        child: switch (channels) {
          AsyncValue(valueOrNull: final channels?) => channels.isEmpty
              ? Text(t.misskey.nothing)
              : Container(
                  width: 800.0,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) => ChannelPreview(
                      account: account,
                      channel: channels[index],
                      onTap: onChannelTap != null
                          ? () => onChannelTap?.call(channels[index])
                          : null,
                    ),
                    itemCount: channels.length,
                  ),
                ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const CircularProgressIndicator(),
        },
      ),
    );
  }
}
