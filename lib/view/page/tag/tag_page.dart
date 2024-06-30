import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/post_notifier_provider.dart';
import 'tag_notes.dart';

class TagPage extends ConsumerWidget {
  const TagPage({
    super.key,
    required this.account,
    required this.tag,
  });

  final Account account;
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('#$tag')),
      body: TagNotes(account: account, tag: tag),
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
    );
  }
}
