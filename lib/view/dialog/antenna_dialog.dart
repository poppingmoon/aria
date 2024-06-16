import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/antennas_notifier_provider.dart';
import '../../util/future_with_dialog.dart';

class AntennaDialog extends HookConsumerWidget {
  const AntennaDialog({
    super.key,
    required this.account,
    required this.user,
  });

  final Account account;
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final antennas = ref.watch(antennasNotifierProvider(account)).valueOrNull;
    final userAntennas =
        antennas?.where((antenna) => antenna.src == AntennaSource.users);

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
          title: Text(t.misskey.create),
          onTap: () async {},
        ),
      ],
    );
  }
}
