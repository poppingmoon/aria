import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/reversi_invitations_provider.dart';
import '../../util/launch_url.dart';

class MisskeyGamesPage extends ConsumerWidget {
  const MisskeyGamesPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invitations =
        ref.watch(reversiInvitationsProvider(account)).valueOrNull ?? [];

    return Scaffold(
      appBar: AppBar(title: const Text('Misskey Games')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('🍪👈'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => launchUrl(ref, Uri.https(account.host, 'clicker')),
          ),
          ListTile(
            title: Text(t.misskey.bubbleGame),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => launchUrl(ref, Uri.https(account.host, 'bubble-game')),
          ),
          ListTile(
            title: Text(t.misskey.reversi_.reversi),
            subtitle:
                invitations.isNotEmpty
                    ? Text(
                      '${t.misskey.invitations}: ${invitations.map((user) => user.acct).join(', ')}',
                    )
                    : null,
            trailing: const Icon(Icons.navigate_next),
            onTap: () => launchUrl(ref, Uri.https(account.host, 'reversi')),
          ),
        ],
      ),
    );
  }
}
