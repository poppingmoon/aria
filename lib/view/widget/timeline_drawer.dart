import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class TimelineDrawer extends ConsumerWidget {
  const TimelineDrawer({
    super.key,
    this.currentAccount,
    this.controller,
  });

  final Account? currentAccount;
  final TabController? controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);
    final tabIndex = controller?.index;
    final currentAccount = tabIndex != null
        ? ref.watch(
            timelineTabsNotifierProvider.select(
              (tabs) => tabs.elementAtOrNull(tabIndex)?.account,
            ),
          )
        : null;

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            if (accounts.isEmpty)
              DrawerHeader(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(t.aria.noAccounts),
                      ),
                      ElevatedButton(
                        onPressed: () => context.push('/login'),
                        child: Text(t.misskey.login),
                      ),
                    ],
                  ),
                ),
              ),
            ...accounts.map((account) {
              final i = ref.watch(iNotifierProvider(account)).valueOrNull;
              return ExpansionTile(
                leading: i != null
                    ? UserAvatar(
                        user: i,
                        size: 40,
                        onTap: () => context.push('/$account/users/${i.id}'),
                      )
                    : IconButton(
                        onPressed: () =>
                            context.push('/$account/@${account.username}'),
                        icon: const Icon(Icons.person),
                      ),
                title: i != null
                    ? UsernameWidget(account: account, user: i)
                    : Text(account.username ?? ''),
                subtitle: Text(
                  account.toString(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                initiallyExpanded: account == currentAccount,
                children: [
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: Text(t.misskey.notifications),
                    onTap: () => context.push('/$account/notifications'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.attach_file),
                    title: Text(t.misskey.clips),
                    onTap: () => context.push('/$account/clips'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.cloud),
                    title: Text(t.misskey.drive),
                    onTap: () => context.push('/$account/drive'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.tag),
                    title: Text(t.misskey.explore),
                    onTap: () => context.push('/$account/explore'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.campaign),
                    title: Text(t.misskey.announcements),
                    onTap: () => context.push('/$account/announcements'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.search),
                    title: Text(t.misskey.search),
                    onTap: () => context.push('/$account/search'),
                  ),
                  PopupMenuButton<void>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        onTap: () => context.push('/$account/lists'),
                        child: ListTile(
                          leading: const Icon(Icons.list),
                          title: Text(t.misskey.lists),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/antennas'),
                        child: ListTile(
                          leading: const Icon(Icons.settings_input_antenna),
                          title: Text(t.misskey.antennas),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/favorites'),
                        child: ListTile(
                          leading: const Icon(Icons.star_rounded),
                          title: Text(t.misskey.favorites),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/pages'),
                        child: ListTile(
                          leading: const Icon(Icons.article),
                          title: Text(t.misskey.pages),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/play'),
                        child: const ListTile(
                          leading: Icon(Icons.play_arrow),
                          title: Text('Play'),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/channels'),
                        child: ListTile(
                          leading: const Icon(Icons.tv),
                          title: Text(t.misskey.channel),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/games'),
                        child: const ListTile(
                          leading: Icon(Icons.games),
                          title: Text('Misskey Games'),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () =>
                            context.push('/$account/servers/${account.host}'),
                        child: ListTile(
                          leading: const Icon(Icons.dns),
                          title: Text(t.misskey.instanceInfo),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () => context.push('/$account/post'),
                        child: ListTile(
                          leading: const Icon(Icons.edit),
                          title: Text(t.misskey.note),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () =>
                            context.push('/settings/accounts/$account'),
                        child: ListTile(
                          leading: const Icon(Icons.settings),
                          title: Text(t.misskey.settings),
                        ),
                      ),
                    ],
                    child: ListTile(
                      leading: const Icon(Icons.more_horiz),
                      title: Text(t.misskey.more),
                    ),
                  ),
                ],
              );
            }),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(t.misskey.settings),
              onTap: () => context.push('/settings'),
            ),
          ],
        ),
      ),
    );
  }
}
