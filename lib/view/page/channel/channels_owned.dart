import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/owned_channels_notifier_provider.dart';
import '../../widget/channel_preview.dart';
import '../../widget/paginated_list_view.dart';

class ChannelsOwned extends ConsumerWidget {
  const ChannelsOwned({
    super.key,
    required this.account,
    this.onChannelTap,
  });

  final Account account;
  final void Function(CommunityChannel channel)? onChannelTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channels = ref.watch(ownedChannelsNotifierProvider(account));
    return PaginatedListView(
      paginationState: channels,
      itemBuilder: (context, channel) => ChannelPreview(
        account: account,
        channel: channel,
        onTap: onChannelTap != null ? () => onChannelTap?.call(channel) : null,
      ),
      onRefresh: () =>
          ref.refresh(ownedChannelsNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(ownedChannelsNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.nothing,
    );
  }
}
