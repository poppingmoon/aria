import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:share_plus/share_plus.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/list_settings.dart';
import '../../../model/tab_settings.dart';
import '../../../provider/api/lists_notifier_provider.dart';
import '../../../provider/server_url_notifier_provider.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../../util/launch_url.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/list_settings_dialog.dart';
import '../../widget/timeline_list_view.dart';
import 'list_users.dart';

class ListPage extends HookConsumerWidget {
  const ListPage({super.key, required this.account, required this.listId});

  final Account account;
  final String listId;

  Future<void> _edit(WidgetRef ref, UsersList list) async {
    final result = await showDialog<ListSettings>(
      context: ref.context,
      builder:
          (context) =>
              ListSettingsDialog(settings: ListSettings.fromUsersList(list)),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      await futureWithDialog(
        ref.context,
        ref
            .read(listsNotifierProvider(account).notifier)
            .updateList(listId, name: result.name, isPublic: result.isPublic),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref
        .watch(listsNotifierProvider(account))
        .valueOrNull
        ?.firstWhereOrNull((list) => list.id == listId);
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['my', 'lists', listId]);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(list?.name ?? ''),
          actions: [
            PopupMenuButton<void>(
              itemBuilder:
                  (context) => [
                    PopupMenuItem(
                      onTap: () => launchUrl(ref, url),
                      child: Text(t.aria.openInBrowser),
                    ),
                    PopupMenuItem(
                      onTap: () => copyToClipboard(context, url.toString()),
                      child: Text(t.misskey.copyLink),
                    ),
                    if (list?.isPublic ?? false)
                      PopupMenuItem(
                        onTap:
                            () => Share.shareUri(
                              serverUrl.replace(pathSegments: ['list', listId]),
                            ),
                        child: Text(t.misskey.share),
                      ),
                    PopupMenuItem(
                      onTap: list != null ? () => _edit(ref, list) : null,
                      child: Text(t.misskey.editList),
                    ),
                    PopupMenuItem(
                      onTap: () async {
                        final confirmed = await confirm(
                          context,
                          message: t.misskey.deleteAreYouSure(
                            x: list?.name ?? '',
                          ),
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(listsNotifierProvider(account).notifier)
                                .delete(listId),
                          );
                          if (!context.mounted) return;
                          context.pop();
                        }
                      },
                      child: Text(
                        t.misskey.delete,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ],
            ),
          ],
          bottom: TabBar(
            tabs: [Tab(text: t.misskey.notes), Tab(text: t.misskey.users)],
          ),
        ),
        body: TabBarView(
          children: [
            TimelineListView(
              tabSettings: TabSettings.userList(account, listId),
            ),
            ListUsers(account: account, listId: listId),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: t.misskey.editList,
          onPressed: list != null ? () => _edit(ref, list) : null,
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }
}
