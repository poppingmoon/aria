import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import 'channels_favorites.dart';
import 'channels_featured.dart';
import 'channels_following.dart';
import 'channels_owned.dart';
import 'channels_search.dart';

class ChannelsPage extends ConsumerWidget {
  const ChannelsPage({
    super.key,
    required this.account,
    this.onChannelTap,
    this.initialIndex = 1,
  });

  final Account account;
  final void Function(CommunityChannel channel)? onChannelTap;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2 + (account.isGuest ? 0 : 3),
      initialIndex: initialIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.channel),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.search),
              Tab(text: t.misskey.channel_.featured),
              if (!account.isGuest) ...[
                Tab(text: t.misskey.favorites),
                Tab(text: t.misskey.channel_.following),
                Tab(text: t.misskey.channel_.owned),
              ],
            ],
            isScrollable: !account.isGuest,
            tabAlignment: account.isGuest ? null : TabAlignment.center,
          ),
        ),
        body: TabBarView(
          children: [
            ChannelsSearch(
              account: account,
              onChannelTap: onChannelTap,
            ),
            ChannelsFeatured(
              account: account,
              onChannelTap: onChannelTap,
            ),
            if (!account.isGuest) ...[
              ChannelsFavorites(
                account: account,
                onChannelTap: onChannelTap,
              ),
              ChannelsFollowing(
                account: account,
                onChannelTap: onChannelTap,
              ),
              ChannelsOwned(
                account: account,
                onChannelTap: onChannelTap,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
