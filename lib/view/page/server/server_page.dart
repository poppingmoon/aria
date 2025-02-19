import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/federation_instance_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/launch_url.dart';
import 'server_ads.dart';
import 'server_emojis.dart';
import 'server_overview.dart';

class ServerPage extends HookConsumerWidget {
  const ServerPage({super.key, required this.account, required this.host});

  final Account account;
  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meta = ref.watch(metaNotifierProvider(host)).valueOrNull;
    final instance =
        account.host != host
            ? ref.watch(federationInstanceProvider(account, host)).valueOrNull
            : null;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(meta?.name ?? instance?.name ?? host),
          bottom:
              meta != null
                  ? TabBar(
                    tabs: [
                      Tab(text: t.misskey.about),
                      Tab(text: t.misskey.customEmojis),
                      Tab(text: t.misskey.ads),
                    ],
                  )
                  : null,
        ),
        body: TabBarView(
          children: [
            ServerOverview(account: account, host: host),
            ServerEmojis(host: host),
            ServerAds(host: host),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              if (meta != null) ...[
                if (meta.policies?.ltlAvailable ?? true)
                  ListTile(
                    leading: const Icon(Icons.timeline),
                    title: Text(t.misskey.timelines_.local),
                    onTap: () => context.push('/$host/timeline/local'),
                  ),
                if (meta.policies?.gtlAvailable ?? true)
                  ListTile(
                    leading: const Icon(Icons.public),
                    title: Text(t.misskey.timelines_.global),
                    onTap: () => context.push('/$host/timeline/global'),
                  ),
                ListTile(
                  leading: const Icon(Icons.tag),
                  title: Text(t.misskey.explore),
                  onTap: () => context.push('/$host/explore'),
                ),
                ListTile(
                  leading: const Icon(Icons.campaign),
                  title: Text(t.misskey.announcements),
                  onTap: () => context.push('/$host/announcements'),
                ),
                ListTile(
                  leading: const Icon(Icons.search),
                  title: Text(t.misskey.search),
                  onTap: () => context.push('/$host/search'),
                ),
                ListTile(
                  leading: const Icon(Icons.article),
                  title: Text(t.misskey.pages),
                  onTap: () => context.push('/$host/pages'),
                ),
                ListTile(
                  leading: const Icon(Icons.play_arrow),
                  title: const Text('Play'),
                  onTap: () => context.push('/$host/play'),
                ),
                ListTile(
                  leading: const Icon(Icons.collections),
                  title: Text(t.misskey.gallery),
                  onTap: () => context.push('/$host/gallery'),
                ),
                ListTile(
                  leading: const Icon(Icons.tv),
                  title: Text(t.misskey.channel),
                  onTap: () => context.push('/$host/channels'),
                ),
                ListTile(
                  leading: const Icon(Icons.auto_awesome),
                  title: Text(t.misskey.avatarDecorations),
                  onTap: () => context.push('/$host/avatar-decorations'),
                ),
              ] else
                ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(t.misskey.users),
                  onTap:
                      () => context.push('/$account/explore/users?host=$host'),
                ),
              ListTile(
                leading: const Icon(Icons.copy),
                title: Text(t.misskey.copyLink),
                onTap: () => copyToClipboard(context, host),
              ),
              ListTile(
                leading: const Icon(Icons.open_in_browser),
                title: Text(t.aria.openInBrowser),
                onTap: () => launchUrl(ref, Uri.https(host)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
