import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/muted_words_editor.dart';

class MuteBlockPage extends StatelessWidget {
  const MuteBlockPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.muteAndBlock)),
      body: ListView(
        children: [
          MutedWordsEditor(account: account),
          MutedWordsEditor(account: account, hardMute: true),
          _InstanceMuteEditor(account: account),
          ListTile(
            leading: const Icon(Icons.repeat_rounded),
            title: Text('${t.misskey.mutedUsers} (${t.misskey.renote})'),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => context
                .push('/settings/accounts/$account/mute-block/renote-muted'),
          ),
          ListTile(
            leading: const Icon(Icons.visibility_off),
            title: Text(t.misskey.mutedUsers),
            trailing: const Icon(Icons.navigate_next),
            onTap: () =>
                context.push('/settings/accounts/$account/mute-block/muted'),
          ),
          ListTile(
            leading: const Icon(Icons.block),
            title: Text(t.misskey.blockedUsers),
            trailing: const Icon(Icons.navigate_next),
            onTap: () =>
                context.push('/settings/accounts/$account/mute-block/blocked'),
          ),
        ],
      ),
      selectedDestination: AccountSettingsDestination.muteBlock,
    );
  }
}

class _InstanceMuteEditor extends HookConsumerWidget {
  const _InstanceMuteEditor({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final serverMuteText = useState('');
    final controller = useTextEditingController();
    final isChanged = useState(false);
    useEffect(
      () {
        if (i != null) {
          serverMuteText.value = i.mutedInstances.join('\n');
          controller.text = serverMuteText.value;
        }
        return;
      },
      [i],
    );
    useEffect(
      () {
        controller.addListener(
          () => isChanged.value = controller.text != serverMuteText.value,
        );
        return;
      },
      [],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return ExpansionTile(
      leading: const Icon(Icons.public_off),
      title: Text(t.misskey.instanceMute),
      childrenPadding: const EdgeInsets.all(8.0),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.zero,
          color: colors.infoBg,
          elevation: 0.0,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              t.misskey.instanceMute_.title,
              style: TextStyle(color: colors.infoFg),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Shortcuts(
          shortcuts: disablingTextShortcuts,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: t.misskey.instanceMute_.heading,
              helperText: [
                t.misskey.instanceMute_.instanceMuteDescription,
                t.misskey.instanceMute_.instanceMuteDescription2,
              ].join('\n'),
            ),
            minLines: 5,
            maxLines: 10,
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        ),
        const SizedBox(height: 4.0),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: isChanged.value
                ? () async {
                    final mutes = controller.text
                        .trim()
                        .split('\n')
                        .map((server) => server.trim())
                        .where((server) => server.isNotEmpty)
                        .toList();
                    await futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .setMutedServers(mutes),
                    );
                  }
                : null,
            icon: const Icon(Icons.save),
            label: Text(t.misskey.save),
          ),
        ),
      ],
    );
  }
}
