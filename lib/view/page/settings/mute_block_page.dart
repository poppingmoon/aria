import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';

import '../../../constant/max_content_width.dart';
import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../provider/muted_emojis_notifier_provider.dart';
import '../../../util/decode_custom_emoji.dart';
import '../../../util/future_with_dialog.dart';
import '../../widget/account_settings_scaffold.dart';
import '../../widget/emoji_picker.dart';
import '../../widget/muted_words_editor.dart';

class MuteBlockPage extends StatelessWidget {
  const MuteBlockPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.muteAndBlock)),
      body: Theme(
        data: theme.copyWith(
          inputDecorationTheme: theme.inputDecorationTheme.copyWith(
            enabledBorder: theme.inputDecorationTheme.border,
          ),
          expansionTileTheme: ExpansionTileThemeData(
            backgroundColor: theme.colorScheme.surface,
            collapsedBackgroundColor: theme.colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          listTileTheme: ListTileThemeData(
            tileColor: theme.colorScheme.surface,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: MutedWordsEditor(account: account),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: MutedWordsEditor(account: account, hardMute: true),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: _MutedEmojisEditor(account: account),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: _InstanceMuteEditor(account: account),
              ),
            ),
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  leading: const Icon(OffIcons.repeat_rounded),
                  title: Text('${t.misskey.mutedUsers} (${t.misskey.renote})'),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () => context.push(
                    '/settings/accounts/$account/mute-block/renote-muted',
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  leading: const Icon(Icons.visibility_off),
                  title: Text(t.misskey.mutedUsers),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () => context.push(
                    '/settings/accounts/$account/mute-block/muted',
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ListTile(
                  leading: const Icon(Icons.block),
                  title: Text(t.misskey.blockedUsers),
                  trailing: const Icon(Icons.navigate_next),
                  onTap: () => context.push(
                    '/settings/accounts/$account/mute-block/blocked',
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
      selectedDestination: AccountSettingsDestination.muteBlock,
    );
  }
}

class _MutedEmojisEditor extends HookConsumerWidget {
  const _MutedEmojisEditor({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutedEmojis = ref.watch(mutedEmojisNotifierProvider(account));
    final mutedEmojisText = useState(mutedEmojis.join('\n'));
    final controller = useTextEditingController(text: mutedEmojis.join('\n'));
    final isChanged = useState(false);
    final showTextField = useState(false);
    ref.listen(mutedEmojisNotifierProvider(account), (_, mutedEmojis) {
      mutedEmojisText.value = mutedEmojis.join('\n');
      controller.text = mutedEmojisText.value;
    });
    useEffect(() {
      controller.addListener(() {
        isChanged.value = controller.text != mutedEmojisText.value;
      });
      return;
    }, []);

    return ExpansionTile(
      leading: const Icon(Icons.emoji_symbols),
      title: Text(t.aria.mutedEmojis),
      childrenPadding: const EdgeInsets.all(8.0),
      children: [
        SizedBox(
          width: double.infinity,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 4.0,
            runSpacing: 4.0,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              ...mutedEmojis.map(
                (emoji) => InputChip(
                  label: Text(emoji),
                  onPressed: emoji.startsWith(':')
                      ? () {
                          final (name, host) = decodeCustomEmoji(emoji);
                          context.push('/${host ?? account}/emojis/$name');
                        }
                      : null,
                  onDeleted: () => ref
                      .read(mutedEmojisNotifierProvider(account).notifier)
                      .remove(emoji),
                  backgroundColor: Theme.of(context).colorScheme.surface,
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                ),
              ),
              IconButton(
                tooltip: t.misskey.add,
                onPressed: () async {
                  final emoji = await pickEmoji(
                    ref,
                    account,
                    saveHistory: false,
                  );
                  if (!context.mounted) return;
                  if (emoji != null) {
                    await ref
                        .read(mutedEmojisNotifierProvider(account).notifier)
                        .add(emoji);
                  }
                },
                icon: const Icon(Icons.add),
              ),
              IconButton(
                tooltip: t.misskey.edit,
                onPressed: () => showTextField.value = !showTextField.value,
                icon: Icon(showTextField.value ? Icons.edit_off : Icons.edit),
              ),
            ],
          ),
        ),
        if (showTextField.value) ...[
          const SizedBox(height: 4.0),
          Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: TextField(
              controller: controller,
              minLines: 5,
              maxLines: 10,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: isChanged.value
                  ? () async {
                      final mutes = LineSplitter.split(controller.text.trim())
                          .map((emoji) => emoji.trim())
                          .where((emoji) => emoji.isNotEmpty);
                      await ref
                          .read(mutedEmojisNotifierProvider(account).notifier)
                          .updateMutedEmojis(mutes);
                      showTextField.value = false;
                    }
                  : null,
              icon: const Icon(Icons.save),
              label: Text(t.misskey.save),
            ),
          ),
        ],
      ],
    );
  }
}

class _InstanceMuteEditor extends HookConsumerWidget {
  const _InstanceMuteEditor({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final serverMuteText = useState('');
    final controller = useTextEditingController();
    final isChanged = useState(false);
    useEffect(() {
      if (i != null) {
        serverMuteText.value = i.mutedInstances.join('\n');
        controller.text = serverMuteText.value;
      }
      return;
    }, [i]);
    useEffect(() {
      controller.addListener(
        () => isChanged.value = controller.text != serverMuteText.value,
      );
      return;
    }, []);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return ExpansionTile(
      leading: const Icon(Icons.public_off),
      title: Text(t.misskey.instanceMute),
      childrenPadding: const EdgeInsets.all(8.0),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card.filled(
          color: colors.infoBg,
          margin: EdgeInsets.zero,
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
                    final mutes = LineSplitter.split(controller.text.trim())
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
