import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/share_notifier_provider.dart';
import '../widget/user_avatar.dart';
import '../widget/username_widget.dart';

class SharePage extends ConsumerWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => context.go('/timelines')),
        title: Text(t.misskey.share),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final account = accounts[index];
          final i = ref.watch(iNotifierProvider(account)).valueOrNull;
          return ListTile(
            leading: i != null
                ? UserAvatar(account: account, user: i, size: 40.0)
                : null,
            title: i != null ? UsernameWidget(account: account, user: i) : null,
            subtitle: Text(account.toString()),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              await ref.read(shareNotifierProvider.notifier).share(account);
              if (!context.mounted) return;
              context.go('/$account/post');
            },
          );
        },
        itemCount: accounts.length,
      ),
    );
  }
}
