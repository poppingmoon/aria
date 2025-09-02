import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/antenna_settings.dart';
import '../../provider/api/antennas_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import 'antenna_settings_dialog.dart';

class AntennaDialog extends HookConsumerWidget {
  const AntennaDialog({super.key, required this.account, required this.user});

  final Account account;
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final antennas = ref.watch(antennasNotifierProvider(account)).valueOrNull;
    final userAntennas = antennas?.where(
      (antenna) => antenna.src == AntennaSource.users,
    );

    return SimpleDialog(
      title: Text(t.misskey.addToAntenna),
      children: [
        ...?userAntennas?.map(
          (antenna) => CheckboxListTile(
            value: antenna.users.contains(user.acct),
            title: Text(antenna.name),
            onChanged: (value) async {
              if (value == null) {
                return;
              }
              if (value) {
                await futureWithDialog(
                  context,
                  ref
                      .read(antennasNotifierProvider(account).notifier)
                      .addUser(antenna, user.acct),
                );
              } else {
                await futureWithDialog(
                  context,
                  ref
                      .read(antennasNotifierProvider(account).notifier)
                      .removeUser(antenna, user.acct),
                );
              }
            },
          ),
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: Text(t.misskey.createAntenna),
          onTap: () async {
            final result = await showDialog<AntennaSettings>(
              context: context,
              builder: (context) => AntennaSettingsDialog(
                account: account,
                settings: const AntennaSettings(src: AntennaSource.users),
              ),
            );
            if (!ref.context.mounted) return;
            if (result != null) {
              await futureWithDialog(
                ref.context,
                ref
                    .read(antennasNotifierProvider(account).notifier)
                    .create(
                      name: result.name ?? '',
                      src: result.src,
                      userListId: result.userListId,
                      keywords: result.keywords,
                      excludeKeywords: result.excludeKeywords,
                      users: result.users,
                      caseSensitive: result.caseSensitive,
                      withReplies: result.withReplies,
                      withFile: result.withFile,
                      localOnly: result.localOnly,
                      excludeBots: result.excludeBots,
                      excludeNotesInSensitiveChannel:
                          result.excludeNotesInSensitiveChannel,
                    ),
              );
            }
          },
        ),
      ],
    );
  }
}
