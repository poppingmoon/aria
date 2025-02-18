import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import 'search_notes.dart';
import 'search_users.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({
    super.key,
    required this.account,
    this.userId,
    this.channelId,
  });

  final Account account;
  final String? userId;
  final String? channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final canSearchNotes =
        (i == null && (meta?.policies?.canSearchNotes ?? true)) ||
        (i != null && (i.policies?.canSearchNotes ?? true));
    final controller = useTabController(
      initialLength: 1 + (canSearchNotes ? 1 : 0),
      keys: [canSearchNotes],
    );
    final notesFocusNode = useFocusNode();
    final usersFocusNode = useFocusNode();
    useEffect(() {
      controller.addListener(() {
        if (controller.index == 0) {
          notesFocusNode.requestFocus();
        } else {
          usersFocusNode.requestFocus();
        }
      });
      return;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.misskey.search),
        bottom: TabBar(
          controller: controller,
          tabs: [
            if (canSearchNotes) Tab(text: t.misskey.notes),
            Tab(text: t.misskey.users),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          if (canSearchNotes)
            SearchNotes(
              account: account,
              userId: userId,
              channelId: channelId,
              focusNode: notesFocusNode,
            ),
          SearchUsers(account: account, focusNode: usersFocusNode),
        ],
      ),
    );
  }
}
