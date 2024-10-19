import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/misskey_servers_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/punycode.dart';
import '../dialog/misskey_server_list_dialog.dart';
import '../widget/image_widget.dart';
import '../widget/misskey_server_autocomplete.dart';
import '../widget/misskey_server_background.dart';

class TokenLoginPage extends HookConsumerWidget {
  const TokenLoginPage({super.key, this.host});

  final String? host;

  Future<void> _login(WidgetRef ref, String host, String token) async {
    final trimmed =
        toAscii(host.trim().replaceFirst('https://', '').split('/').first)
            .toLowerCase();
    await futureWithDialog(
      ref.context,
      ref
          .read(accountsNotifierProvider.notifier)
          .loginWithToken(trimmed, token),
    );
    if (!ref.context.mounted) return;
    ref.context.go('/timelines');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(misskeyServersProvider).valueOrNull ?? [];
    final hostController = useTextEditingController(text: this.host);
    final host = useState(this.host ?? '');
    final hostFocusNode = useFocusNode();
    final server =
        servers.firstWhereOrNull((server) => server.url == host.value);
    final iconUrl = server?.meta?['iconUrl'] as String? ??
        (server != null && server.icon
            ? 'https://instanceapp.misskey.page/instance-icons/${server.url}.webp'
            : null);
    final tokenController = useTextEditingController();
    final token = useState('');
    final tokenFocusNode = useFocusNode();
    useEffect(
      () {
        hostController.addListener(() => host.value = hostController.text);
        tokenController.addListener(() => token.value = tokenController.text);
        return;
      },
      [],
    );

    return Scaffold(
      body: MisskeyServerBackground(
        controller: hostController,
        child: Column(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: AppBar(
                  title: Text(t.aria.loginWithAccessToken),
                  backgroundColor: Theme.of(context)
                      .scaffoldBackgroundColor
                      .withOpacity(0.5),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 800.0,
                  child: Card(
                    margin: const EdgeInsets.all(16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Color(0xffdddddd),
                              shape: BoxShape.circle,
                            ),
                            child: iconUrl != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: ImageWidget(
                                      url: iconUrl,
                                      width: 50.0,
                                      height: 50.0,
                                    ),
                                  )
                                : const SizedBox(width: 50.0, height: 50.0),
                          ),
                          const SizedBox(height: 16.0),
                          MisskeyServerAutocomplete(
                            controller: hostController,
                            focusNode: hostFocusNode,
                            autofocus: true,
                            onSubmitted: (_) => tokenFocusNode.requestFocus(),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () async {
                                final host = await showDialog<String>(
                                  context: context,
                                  builder: (context) =>
                                      const MisskeyServerListDialog(),
                                );
                                if (host != null) {
                                  hostController.text = host;
                                  if (!context.mounted) return;
                                  tokenFocusNode.requestFocus();
                                }
                              },
                              child: Text(t.aria.findServer),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Shortcuts(
                            shortcuts: {
                              ...disablingTextShortcuts,
                              submitActivator: VoidCallbackIntent(
                                () => hostController.text.isNotEmpty &&
                                        tokenController.text.isNotEmpty
                                    ? _login(
                                        ref,
                                        hostController.text,
                                        tokenController.text,
                                      )
                                    : null,
                              ),
                            },
                            child: TextField(
                              controller: tokenController,
                              focusNode: tokenFocusNode,
                              decoration: InputDecoration(
                                labelText: t.aria.accessToken,
                                prefixIcon: const Icon(Icons.key),
                                suffixIcon: IconButton(
                                  onPressed: () => tokenController.clear(),
                                  icon: const Icon(Icons.close),
                                ),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton.icon(
                            onPressed:
                                host.value.isNotEmpty && token.value.isNotEmpty
                                    ? () => _login(
                                          ref,
                                          hostController.text,
                                          tokenController.text,
                                        )
                                    : null,
                            icon: const Icon(Icons.key),
                            label: Text(t.misskey.login),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
