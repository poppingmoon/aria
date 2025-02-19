import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../provider/miauth_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/message_dialog.dart';

class AuthenticatePage extends ConsumerWidget {
  const AuthenticatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final miAuthState = ref.watch(miAuthNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.misskey.authenticationRequiredToContinue),
        actions: [
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    onTap:
                        () => copyToClipboard(
                          context,
                          miAuthState!.url.toString(),
                        ),
                    child: Text(t.misskey.copyLink),
                  ),
                ],
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final succeeded = await futureWithDialog(
              context,
              ref.read(miAuthNotifierProvider.notifier).check(),
            );
            if (!context.mounted) return;
            if (succeeded ?? false) {
              context.go('/timelines');
            } else {
              await showMessageDialog(context, t.misskey.loginFailed);
            }
          },
          child: Text(t.aria.authenticated),
        ),
      ),
    );
  }
}
