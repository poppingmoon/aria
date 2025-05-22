import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/account_settings_notifier_provider.dart';
import '../../../provider/api/tag_notes_notifier_provider.dart';
import '../../../provider/post_form_hashtags_notifier_provider.dart';
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
                onPressed: () async {
                  final hashtags = ref.read(
                    postFormHashtagsNotifierProvider(account),
                  );
                  ref
                      .read(postFormHashtagsNotifierProvider(account).notifier)
                      .updateHashtags([tag]);
                  final useHashtags = ref
                      .read(accountSettingsNotifierProvider(account))
                      .postFormUseHashtags;
                  await ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setPostFormUseHashtags(true);
                  if (!context.mounted) return;
                  await context.push('/$account/post');
                  if (!context.mounted) return;
                  ref
                      .read(postFormHashtagsNotifierProvider(account).notifier)
                      .updateHashtags(hashtags);
                  ref.invalidate(tagNotesNotifierProvider(account, tag));
                  await ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setPostFormUseHashtags(useHashtags);
                },
                label: Text(t.misskey.postToHashtag),
                icon: const Icon(Icons.edit),
              ),
      ),
    );
  }
}
