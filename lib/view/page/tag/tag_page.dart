import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/post_notifier_provider.dart';
import 'tag_notes.dart';
import 'tag_users.dart';

class TagPage extends ConsumerWidget {
  const TagPage({
    super.key,
    required this.account,
    required this.tag,
    this.initialIndex = 0,
  });

  final Account account;
  final String tag;
  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialIndex,
      child: Scaffold(
        appBar: AppBar(
          title: Text('#$tag'),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.notes),
              Tab(text: t.misskey.users),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TagNotes(account: account, tag: tag),
            TagUsers(account: account, tag: tag),
          ],
        ),
        floatingActionButton: account.isGuest
            ? null
            : FloatingActionButton.extended(
                onPressed: () {
                  ref
                      .read(postNotifierProvider(account).notifier)
                      .setText('#$tag ');
                  context.push('/$account/post');
                },
                label: Text(t.misskey.postToHashtag),
                icon: const Icon(Icons.edit),
              ),
      ),
    );
  }
}
