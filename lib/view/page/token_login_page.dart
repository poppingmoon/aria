import 'dart:async';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/misskey_servers_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/punycode.dart';
import '../../util/show_toast.dart';
import '../dialog/misskey_server_list_dialog.dart';
import '../widget/image_widget.dart';
import '../widget/misskey_server_autocomplete.dart';
import '../widget/misskey_server_background.dart';

class TokenLoginPage extends HookConsumerWidget {
  const TokenLoginPage({super.key, this.query});

  final String? query;

  Future<void> _login(WidgetRef ref, String query, String token) async {
    final trimmed = query.trim();
    final match = RegExp(
      '^(https?://)?([^/]*)',
      caseSensitive: false,
    ).firstMatch(trimmed);
    final scheme = match?[1]?.toLowerCase() ?? 'https://';
    final host = toAscii(match?[2] ?? trimmed).toLowerCase();
    final serverUrl = Uri.parse('$scheme$host');
    if (!ref.context.mounted) return;
    final result = await ref
        .read(accountsNotifierProvider.notifier)
        .loginWithToken(serverUrl, token);
    showToast(
      context: ref.context.mounted ? ref.context : null,
      message: result.added ? t.aria.accountAdded : t.aria.accessTokenUpdated,
    );
    if (!ref.context.mounted) return;
    ref.context.go('/timelines');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(misskeyServersProvider).valueOrNull ?? [];
    final queryController = useTextEditingController(text: this.query);
    final query = useState(this.query ?? '');
    final host = query.value
        .trim()
        .replaceFirst(RegExp('https?://'), '')
        .split('/')
        .first;
    final queryFocusNode = useFocusNode();
    final server = servers.firstWhereOrNull((server) => server.url == host);
    final iconUrl =
        server?.meta?['iconUrl'] as String? ??
        (server != null && server.icon
            ? 'https://instanceapp.misskey.page/instance-icons/${server.url}.webp'
            : null);
    final tokenController = useTextEditingController();
    final token = useState('');
    final tokenFocusNode = useFocusNode();
    useEffect(() {
      queryController.addListener(
        () => query.value = queryController.text.replaceFirst(
          RegExp('^https://'),
          '',
        ),
      );
      tokenController.addListener(() => token.value = tokenController.text);
      return;
    }, []);

    return Scaffold(
      body: MisskeyServerBackground(
        controller: queryController,
        child: Column(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: AppBar(
                  title: Text(t.aria.loginWithAccessToken),
                  backgroundColor: Theme.of(
                    context,
                  ).scaffoldBackgroundColor.withValues(alpha: 0.5),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: SizedBox(
                  width: maxContentWidth,
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
                                : const SizedBox.square(dimension: 50.0),
                          ),
                          const SizedBox(height: 16.0),
                          MisskeyServerAutocomplete(
                            controller: queryController,
                            focusNode: queryFocusNode,
                            autofocus: this.query?.isEmpty ?? true,
                            onSubmitted: (_) => tokenFocusNode.requestFocus(),
                          ),
                          Align(
                            alignment: AlignmentDirectional.centerStart,
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
                                  queryController.text = host;
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
                                () =>
                                    queryController.text.isNotEmpty &&
                                        tokenController.text.isNotEmpty
                                    ? futureWithDialog(
                                        context,
                                        _login(
                                          ref,
                                          queryController.text,
                                          tokenController.text,
                                        ),
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
                              onTapOutside: (_) => primaryFocus?.unfocus(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton.icon(
                            onPressed:
                                query.value.isNotEmpty && token.value.isNotEmpty
                                ? () => futureWithDialog(
                                    context,
                                    _login(
                                      ref,
                                      queryController.text,
                                      tokenController.text,
                                    ),
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
