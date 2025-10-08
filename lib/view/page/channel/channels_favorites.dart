import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/favorite_channels_provider.dart';
import '../../widget/channel_preview.dart';
import '../../widget/error_message.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';

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
    return HapticFeedbackRefreshIndicator(
      onRefresh: () => ref.refresh(favoriteChannelsProvider(account).future),
      child: switch (channels) {
        AsyncValue(value: final channels?) =>
          channels.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.nothing)),
                    ),
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: maxContentWidth,
                      margin: EdgeInsets.only(
                        left: 8.0,
                        top: index == 0 ? 8.0 : 4.0,
                        right: 8.0,
                        bottom: index == channels.length - 1 ? 120.0 : 4.0,
                      ),
                      child: ChannelPreview(
                        account: account,
                        channel: channels[index],
                        onTap: onChannelTap != null
                            ? () => onChannelTap?.call(channels[index])
                            : null,
                      ),
                    ),
                  ),
                  itemCount: channels.length,
                ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              width: maxContentWidth,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
