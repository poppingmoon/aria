import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/play_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';

class PlayEditPage extends HookConsumerWidget {
  const PlayEditPage({
    super.key,
    required this.account,
    this.playId,
  });

  final Account account;
  final String? playId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final play = playId != null
        ? ref.watch(playNotifierProvider(account, playId!)).valueOrNull
        : null;
    final title = useState(play?.title);
    final summary = useState(play?.summary);
    final script = useState(play?.script);
    final public = useState(true);
    final titleController = useTextEditingController(text: play?.title);
    final summaryController = useTextEditingController(text: play?.summary);
    final scriptController = useTextEditingController(text: play?.script);
    useEffect(
      () {
        titleController.addListener(() => title.value = titleController.text);
        summaryController
            .addListener(() => summary.value = summaryController.text);
        scriptController
            .addListener(() => script.value = scriptController.text);
        return;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          playId == null
              ? t.misskey.play_.new_
              : '${t.misskey.play_.edit}: ${play?.title ?? ''}',
        ),
        actions: playId != null
            ? [
                PopupMenuButton<void>(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      onTap: () async {
                        final confirmed = await confirm(
                          context,
                          message:
                              t.misskey.deleteAreYouSure(x: play?.title ?? ''),
                        );
                        if (!context.mounted) return;
                        if (confirmed) {
                          await futureWithDialog(
                            context,
                            ref
                                .read(misskeyProvider(account))
                                .flash
                                .delete(FlashDeleteRequest(flashId: playId!)),
                          );
                          if (!context.mounted) return;
                          await context.push('/$account/play');
                        }
                      },
                      child: Text(
                        t.misskey.delete,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            : null,
      ),
      body: Center(
        child: SizedBox(
          width: 800.0,
          height: double.infinity,
          child: ListView(
            children: [
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: titleController,
                    decoration:
                        InputDecoration(labelText: t.misskey.play_.title),
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: summaryController,
                    decoration: InputDecoration(
                      labelText: t.misskey.play_.summary,
                      alignLabelWithHint: true,
                    ),
                    textInputAction: TextInputAction.next,
                    minLines: 3,
                    maxLines: 10,
                  ),
                ),
              ),
              ListTile(
                title: Shortcuts(
                  shortcuts: disablingTextShortcuts,
                  child: TextField(
                    controller: scriptController,
                    decoration: InputDecoration(
                      labelText: t.misskey.play_.script,
                      alignLabelWithHint: true,
                    ),
                    style: const TextStyle(fontFamily: 'monospace'),
                    minLines: 10,
                    maxLines: null,
                  ),
                ),
              ),
              SwitchListTile(
                title: Text(t.misskey.visibility),
                subtitle: Text(t.misskey.play_.visibilityDescription),
                value: public.value,
                onChanged: (value) => public.value = value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.save,
        onPressed: () async {
          if (playId == null) {
            final result = await futureWithDialog(
              context,
              ref.read(misskeyProvider(account)).flash.create(
                    FlashCreateRequest(
                      title: title.value ?? 'New Play',
                      summary: summary.value ?? '',
                      script: script.value ?? '',
                      permissions: [],
                      visibility: public.value
                          ? FlashVisibility.public
                          : FlashVisibility.private,
                    ),
                  ),
            );
            if (!context.mounted) return;
            if (result != null) {
              context.pop();
            }
          } else {
            await futureWithDialog(
              context,
              ref
                  .read(playNotifierProvider(account, playId!).notifier)
                  .updatePlay(
                    title: title.value ?? 'New Play',
                    summary: summary.value ?? '',
                    script: script.value ?? '',
                    visibility: public.value
                        ? FlashVisibility.public
                        : FlashVisibility.private,
                  ),
            );
            if (!context.mounted) return;
            context.pop();
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
