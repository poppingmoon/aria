import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/share_notifier_provider.dart';
import '../widget/account_preview.dart';

class SharePage extends ConsumerWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, _) => context.go('/'),
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => context.go('/')),
          title: Text(t.misskey.share),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final account = accounts[index];
            return AccountPreview(
              account: account,
              trailing: const Icon(Icons.navigate_next),
              avatarSize: 40.0,
              onTap: () async {
                await ref.read(shareNotifierProvider.notifier).share(account);
                if (!context.mounted) return;
                context.go('/$account/post');
              },
            );
          },
          itemCount: accounts.length,
        ),
      ),
    );
  }
}
