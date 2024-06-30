import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/navigate.dart';
import '../dialog/text_field_dialog.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class TimelineDrawer extends HookConsumerWidget {
  const TimelineDrawer({super.key, this.controller});

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
    final expansionTileControllers = useMemoized(
      () => List.generate(accounts.length, (_) => ExpansionTileController()),
      [accounts],
    );
    useEffect(
      () {
        void callback() {
          if (!context.mounted) return;
          final previousIndex = controller?.previousIndex;
          final nextIndex = controller?.index;
          if (previousIndex != nextIndex &&
              previousIndex != null &&
              nextIndex != null) {
            final tabs = ref.read(timelineTabsNotifierProvider);
            final previousAccount = tabs[previousIndex].account;
            final nextAccount = tabs[nextIndex].account;
            if (previousAccount != nextAccount) {
              final previousAccountIndex = accounts.indexOf(previousAccount);
              if (previousAccountIndex >= 0) {
                expansionTileControllers[previousAccountIndex].collapse();
              }
              final nextAccountIndex = accounts.indexOf(nextAccount);
              if (nextAccountIndex >= 0) {
                expansionTileControllers[nextAccountIndex].expand();
              }
            }
          }
        }

        controller?.addListener(callback);
        return () => controller?.removeListener(callback);
      },
      [],
    );

    return NavigationDrawer(
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
        ...accounts.mapIndexed((index, account) {
          final i = ref.watch(iNotifierProvider(account)).valueOrNull;
          return ExpansionTile(
            leading: i != null
                ? UserAvatar(
                    account: account,
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
            controller: expansionTileControllers[index],
            children: [
              ListTile(
                leading: Stack(
                  children: [
                    const Icon(Icons.notifications),
                    if (i?.hasUnreadNotification ?? false)
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: const SizedBox(
                          height: 12.0,
                          width: 12.0,
                        ),
                      ),
                  ],
                ),
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
                leading: Stack(
                  children: [
                    const Icon(Icons.campaign),
                    if (i?.hasUnreadAnnouncement ?? false)
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: const SizedBox(
                          height: 12.0,
                          width: 12.0,
                        ),
                      ),
                  ],
                ),
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
                    onTap: () async {
                      final result = await showTextFieldDialog(
                        context,
                        title: Text(t.misskey.lookup),
                      );
                      if (!context.mounted) return;
                      if (result == null) return;
                      final query = result.trim();
                      if (query.startsWith('@') && !query.contains(' ')) {
                        await context.push('/$account/$query');
                      } else if (query.startsWith('#')) {
                        await context
                            .push('/$account/tags/${query.substring(1)}');
                      } else if (query.startsWith('https://')) {
                        final url = Uri.tryParse(query);
                        if (url == null) return;
                        try {
                          final response = await ref
                              .read(misskeyProvider(account))
                              .ap
                              .show(ApShowRequest(uri: url));
                          if (!context.mounted) return;
                          if (response.type == 'User') {
                            await context.push(
                              '/$account/users/${response.object['id']}',
                            );
                          } else if (response.type == 'Note') {
                            await context.push(
                              '/$account/notes/${response.object['id']}',
                            );
                          }
                        } catch (_) {
                          await navigate(ref, account, query);
                        }
                      }
                    },
                    child: ListTile(
                      leading: const Icon(Icons.travel_explore),
                      title: Text(t.misskey.lookup),
                    ),
                  ),
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
                    onTap: () => context.push('/$account/gallery'),
                    child: ListTile(
                      leading: const Icon(Icons.collections),
                      title: Text(t.misskey.gallery),
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
                    onTap: () => context.push('/settings/accounts/$account'),
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
    );
  }
}
