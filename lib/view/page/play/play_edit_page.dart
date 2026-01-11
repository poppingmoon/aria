import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../../constant/max_content_width.dart';
import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/misskey_provider.dart';
import '../../../provider/api/play_notifier_provider.dart';
import '../../../rust/api/aiscript.dart';
import '../../../rust/frb_generated.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/confirmation_dialog.dart';

class PlayEditPage extends HookConsumerWidget {
  const PlayEditPage({super.key, required this.account, this.playId});

  final Account account;
  final String? playId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final play = switch (playId) {
      final playId? => ref.watch(playNotifierProvider(account, playId)).value,
      _ => null,
    };
    final title = useState(play?.title);
    final summary = useState(play?.summary);
    final script = useState(play?.script);
    final visibility = useState(play?.visibility);
    final titleController = useTextEditingController(text: play?.title);
    final summaryController = useTextEditingController(text: play?.summary);
    final scriptController = useTextEditingController(text: play?.script);
    useEffect(() {
      titleController.addListener(() => title.value = titleController.text);
      summaryController.addListener(
        () => summary.value = summaryController.text,
      );
      scriptController.addListener(() => script.value = scriptController.text);
      if (playId == null) {
        Future(() async {
          if (!RustLib.instance.initialized) {
            await RustLib.init();
          }
          final version = await AiScript.aiscriptVersion();
          if (scriptController.text.isEmpty) {
            scriptController.text = '/// @ $version\n\n';
          }
        });
      }
      return;
    }, []);

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
                          message: t.misskey.deleteAreYouSure(
                            x: play?.title ?? '',
                          ),
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
                          context.go('/$account/play');
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
      body: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Shortcuts(
                shortcuts: disablingTextShortcuts,
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: t.misskey.play_.title),
                  textInputAction: TextInputAction.next,
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Shortcuts(
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
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Shortcuts(
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
                  onTapOutside: (_) => primaryFocus?.unfocus(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: t.misskey.visibility,
                  helperText: t.misskey.play_.visibilityDescription,
                ),
                items: [
                  DropdownMenuItem(
                    value: FlashVisibility.public,
                    child: Text(t.misskey.public),
                  ),
                  DropdownMenuItem(
                    value: FlashVisibility.private,
                    child: Text(t.misskey.private),
                  ),
                ],
                initialValue: visibility.value,
                onChanged: (value) => visibility.value = value,
                isExpanded: true,
              ),
            ),
          ),
          const SizedBox(height: 120.0),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.save,
        onPressed: () async {
          if (playId == null) {
            final result = await futureWithDialog(
              context,
              ref
                  .read(misskeyProvider(account))
                  .flash
                  .create(
                    FlashCreateRequest(
                      title: title.value ?? 'New Play',
                      summary: summary.value ?? '',
                      script: script.value ?? '',
                      permissions: [],
                      visibility: visibility.value,
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
                    visibility: visibility.value,
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
