import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_settings.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../provider/post_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/launch_url.dart';
import '../../widget/timeline_list_view.dart';
import 'channel_featured.dart';
import 'channel_home.dart';

class ChannelPage extends ConsumerWidget {
  const ChannelPage({
    super.key,
    required this.account,
    required this.channelId,
  });

  final Account account;
  final String channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channel = ref
        .watch(channelNotifierProvider(account, channelId))
        .valueOrNull;
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['channels', channelId]);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(channel?.name ?? ''),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.overview),
              Tab(text: t.misskey.timeline),
              Tab(text: t.misskey.featured),
            ],
          ),
          actions: [
            PopupMenuButton<void>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  onTap: () =>
                      context.push('/$account/search?channelId=$channelId'),
                  child: Text(t.misskey.search),
                ),
                PopupMenuItem(
                  onTap: () => launchUrl(ref, url),
                  child: Text(t.aria.openInBrowser),
                ),
                PopupMenuItem(
                  onTap: () => copyToClipboard(context, url.toString()),
                  child: Text(t.misskey.copyLink),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            ChannelHome(account: account, channelId: channelId),
            TimelineListView(
              tabSettings: TabSettings.channel(account, channelId),
            ),
            ChannelFeatured(account: account, channelId: channelId),
          ],
        ),
        floatingActionButton: account.isGuest
            ? null
            : FloatingActionButton.extended(
                onPressed: () {
                  ref
                      .read(postNotifierProvider(account).notifier)
                      .setChannel(channelId);
                  context.push('/$account/post');
                },
                label: Text(t.misskey.postToTheChannel),
                icon: const Icon(Icons.edit),
              ),
      ),
    );
  }
}
