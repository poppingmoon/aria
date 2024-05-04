import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../widget/account_settings_scaffold.dart';

class MuteBlockPage extends HookConsumerWidget {
  const MuteBlockPage({super.key, required this.account});

  final Account account;

  List<MuteWord> _parseMutes(
    BuildContext context,
    String mutes, {
    bool hardMute = false,
  }) {
    return mutes
        .trim()
        .split('\n')
        .map((line) => line.trim())
        .mapIndexed((index, line) {
          if (line.isEmpty) {
            return null;
          }
          final regExp = RegExp(r'^\/(.+)\/(.*)$').firstMatch(line);
          if (regExp != null) {
            try {
              RegExp(regExp[1]!);
            } catch (e) {
              showMessageDialog(
                context,
                '${t.misskey.regexpErrorDescription(
                  tab: hardMute ? t.misskey.hardWordMute : t.misskey.wordMute,
                  line: index + 1,
                )}\n$e',
              );
              rethrow;
            }
            return MuteWord(regExp: line);
          } else {
            return MuteWord(content: line.split(' '));
          }
        })
        .nonNulls
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final wordMuteText = useState('');
    final hardWordMuteText = useState('');
    final serverMuteText = useState('');
    final wordMuteController = useTextEditingController();
    final hardWordMuteController = useTextEditingController();
    final serverMuteController = useTextEditingController();
    final isWordMuteChanged = useState(false);
    final isHardWordMuteChanged = useState(false);
    final isServerMuteChanged = useState(false);
    useEffect(
      () {
        if (i != null) {
          wordMuteText.value = i.mutedWords
              .map((muteWord) => muteWord.content?.join(' ') ?? muteWord.regExp)
              .nonNulls
              .join('\n');
          wordMuteController.text = wordMuteText.value;
          hardWordMuteText.value = i.hardMutedWords
              .map((muteWord) => muteWord.content?.join(' ') ?? muteWord.regExp)
              .nonNulls
              .join('\n');
          hardWordMuteController.text = hardWordMuteText.value;
          serverMuteText.value = i.mutedInstances.join('\n');
          serverMuteController.text = serverMuteText.value;
        }
        return;
      },
      [i],
    );
    useEffect(
      () {
        wordMuteController.addListener(() {
          isWordMuteChanged.value =
              wordMuteController.text != wordMuteText.value;
        });
        hardWordMuteController.addListener(() {
          isHardWordMuteChanged.value =
              hardWordMuteController.text != hardWordMuteText.value;
        });
        serverMuteController.addListener(() {
          isServerMuteChanged.value =
              serverMuteController.text != serverMuteText.value;
        });
        return;
      },
      [],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return AccountSettingsScaffold(
      account: account,
      appBar: AppBar(title: Text(t.misskey.muteAndBlock)),
      body: ListView(
        children: [
          ExpansionTile(
            leading: const Icon(Icons.comments_disabled),
            title: Text(t.misskey.wordMute),
            childrenPadding: const EdgeInsets.all(8.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: wordMuteController,
                  decoration: InputDecoration(
                    hintText: t.misskey.wordMute_.muteWords,
                  ),
                  minLines: 5,
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${t.misskey.wordMute_.muteWordsDescription}\n${t.misskey.wordMute_.muteWordsDescription2}',
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: isWordMuteChanged.value
                      ? () async {
                          final mutes =
                              _parseMutes(context, wordMuteController.text);
                          await futureWithDialog(
                            context,
                            ref
                                .read(iNotifierProvider(account).notifier)
                                .setMutedWords(mutes),
                          );
                        }
                      : null,
                  icon: const Icon(Icons.save),
                  label: Text(t.misskey.save),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.comments_disabled_outlined),
            title: Text(t.misskey.hardWordMute),
            childrenPadding: const EdgeInsets.all(8.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: hardWordMuteController,
                  decoration: InputDecoration(
                    hintText: t.misskey.wordMute_.muteWords,
                  ),
                  minLines: 5,
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${t.misskey.wordMute_.muteWordsDescription}\n${t.misskey.wordMute_.muteWordsDescription2}',
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: isHardWordMuteChanged.value
                      ? () async {
                          final mutes = _parseMutes(
                            context,
                            hardWordMuteController.text,
                            hardMute: true,
                          );
                          await futureWithDialog(
                            context,
                            ref
                                .read(iNotifierProvider(account).notifier)
                                .setHardMutedWords(mutes),
                          );
                        }
                      : null,
                  icon: const Icon(Icons.save),
                  label: Text(t.misskey.save),
                ),
              ),
            ],
          ),
          ExpansionTile(
            leading: const Icon(Icons.public_off),
            title: Text(t.misskey.instanceMute),
            childrenPadding: const EdgeInsets.all(8.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
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
              Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: serverMuteController,
                  decoration: InputDecoration(
                    hintText: t.misskey.instanceMute_.heading,
                  ),
                  minLines: 5,
                  maxLines: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${t.misskey.instanceMute_.instanceMuteDescription}\n${t.misskey.instanceMute_.instanceMuteDescription2}',
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: isServerMuteChanged.value
                      ? () async {
                          final mutes = serverMuteController.text
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
          ),
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
