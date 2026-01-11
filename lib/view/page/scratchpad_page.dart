import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/fonts.dart';
import '../../constant/max_content_width.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../provider/token_provider.dart';
import '../../rust/api/aiscript.dart';
import '../../rust/api/aiscript/ui.dart';
import '../../rust/frb_generated.dart';
import '../../util/create_aiscript.dart';
import '../dialog/error_message_dialog.dart';
import '../widget/as_ui_widget.dart';

class ScratchpadPage extends HookWidget {
  const ScratchpadPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    final running = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.misskey.scratchpad),
        actions: running.value
            ? [
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: SizedBox.square(
                    dimension: 40.0,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ]
            : null,
      ),
      body: _Scratchpad(
        account: account,
        onRunningChanged: (value) => running.value = value,
      ),
    );
  }
}

class _Scratchpad extends HookConsumerWidget {
  const _Scratchpad({required this.account, required this.onRunningChanged});

  final Account account;
  final void Function(bool value) onRunningChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final token = ref.watch(tokenProvider(account));
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final aiscript = useState<AiScript?>(null);
    final components = useState(<String, AsUiComponent>{});
    final logs = useState(<({String text, bool print})>[]);
    final controller = useTextEditingController();
    final run = useCallback(() async {
      if (!RustLib.instance.initialized) {
        await RustLib.init();
      }
      await aiscript.value?.abort();
      logs.value = [];
      try {
        final ais = await createAiScript(
          ref,
          account: account,
          host: account.host,
          write: (value) {
            logs.value = [...logs.value, (text: value, print: true)];
          },
          token: token,
          storageKey: 'widget',
          url: serverUrl.replace(pathSegments: ['scratchpad']),
          components: components,
        );
        aiscript.value = ais;
        onRunningChanged(true);
        final result = await ais.exec(input: controller.text, isLegacy: false);
        onRunningChanged(false);
        logs.value = [...logs.value, (text: result, print: false)];
      } catch (e, st) {
        onRunningChanged(false);
        try {
          await aiscript.value?.abort();
        } catch (_) {}
        if (!context.mounted) return;
        await showErrorMessageDialog(context, error: e, stackTrace: st);
      }
    });
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return PopScope(
      onPopInvokedWithResult: (_, _) {
        aiscript.value?.abort();
      },
      child: ListView(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Shortcuts(
                shortcuts: {
                  ...disablingTextShortcuts,
                  submitActivator: VoidCallbackIntent(run),
                },
                child: TextField(
                  controller: controller,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    fontFamilyFallback: monospaceFallback,
                  ),
                  minLines: 5,
                  maxLines: null,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Consumer(
                  builder: (context, ref, _) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(100.0, 40.0),
                    ),
                    onPressed: run,
                    child: const Icon(Icons.play_arrow),
                  ),
                ),
              ),
            ),
          ),
          if (components.value.length > 1) ...[
            const SizedBox(height: 8.0),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: Card.filled(
                  margin: EdgeInsets.zero,
                  color: colors.panel,
                  child: ExpansionTile(
                    title: const Text('UI'),
                    initiallyExpanded: true,
                    maintainState: true,
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    childrenPadding: const EdgeInsets.all(16.0),
                    backgroundColor: colors.panel,
                    collapsedBackgroundColor: colors.panel,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: AsUiWidget(
                          account: account,
                          host: account.host,
                          components: components.value,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ExpansionTile(
                title: Text(t.misskey.output),
                initiallyExpanded: true,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                childrenPadding: const EdgeInsets.all(16.0),
                backgroundColor: colors.panel,
                collapsedBackgroundColor: colors.panel,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                children: [
                  for (final log in logs.value)
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        log.text,
                        style: !log.print
                            ? TextStyle(color: colors.fg.withValues(alpha: 0.7))
                            : null,
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 120.0),
        ],
      ),
    );
  }
}
