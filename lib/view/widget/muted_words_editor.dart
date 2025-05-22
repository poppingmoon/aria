import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/muted_words_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/message_dialog.dart';

class MutedWordsEditor extends HookConsumerWidget {
  const MutedWordsEditor({
    super.key,
    required this.account,
    this.hardMute = false,
  });

  final Account account;
  final bool hardMute;

  List<MuteWord> _parseMutes(BuildContext context, String mutes) {
    return LineSplitter.split(mutes.trim())
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
                '${t.misskey.regexpErrorDescription(tab: hardMute ? t.misskey.hardWordMute : t.misskey.wordMute, line: index + 1)}\n$e',
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
    final mutedWords = ref.watch(
      mutedWordsNotifierProvider(account, hardMute: hardMute),
    );
    final controller = useTextEditingController();
    final wordMuteText = useState('');
    final isChanged = useState(false);
    useEffect(() {
      wordMuteText.value = mutedWords
          .map((muteWord) => muteWord.content?.join(' ') ?? muteWord.regExp)
          .nonNulls
          .join('\n');
      controller.text = wordMuteText.value;
      return;
    }, [mutedWords]);
    useEffect(() {
      controller.addListener(() {
        isChanged.value = controller.text != wordMuteText.value;
      });
      return;
    }, []);

    return ExpansionTile(
      leading: Icon(
        hardMute ? Icons.comments_disabled_outlined : Icons.comments_disabled,
      ),
      title: Text(hardMute ? t.misskey.hardWordMute : t.misskey.wordMute),
      childrenPadding: const EdgeInsets.all(8.0),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shortcuts(
          shortcuts: {
            ...disablingTextShortcuts,
            submitActivator: VoidCallbackIntent(() async {
              if (isChanged.value) {
                final mutes = _parseMutes(context, controller.text);
                await futureWithDialog(
                  context,
                  ref
                      .read(
                        mutedWordsNotifierProvider(
                          account,
                          hardMute: hardMute,
                        ).notifier,
                      )
                      .updateMutedWords(mutes),
                );
              }
            }),
          },
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: t.misskey.wordMute_.muteWords,
              helperText: [
                t.misskey.wordMute_.muteWordsDescription,
                t.misskey.wordMute_.muteWordsDescription2,
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
                    final mutes = _parseMutes(context, controller.text);
                    await futureWithDialog(
                      context,
                      ref
                          .read(
                            mutedWordsNotifierProvider(
                              account,
                              hardMute: hardMute,
                            ).notifier,
                          )
                          .updateMutedWords(mutes),
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
