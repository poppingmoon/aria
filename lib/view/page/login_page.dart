import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart' hide launchUrl;

import '../../i18n/strings.g.dart';
import '../../provider/miauth_notifier_provider.dart';
import '../../provider/misskey_servers_provider.dart';
import '../../util/launch_url.dart';
import '../../util/punycode.dart';
import '../dialog/misskey_server_list_dialog.dart';
import '../widget/image_widget.dart';
import '../widget/misskey_server_autocomplete.dart';
import '../widget/misskey_server_background.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  void _launchMiAuth(WidgetRef ref, String host) {
    final trimmed =
        toAscii(host.trim().replaceFirst('https://', '').split('/').first)
            .toLowerCase();
    final url =
        ref.read(miAuthNotifierProvider.notifier).buildMiAuthUrl(trimmed);
    launchUrl(
      ref,
      url,
      mode: defaultTargetPlatform == TargetPlatform.iOS
          ? LaunchMode.inAppWebView
          : null,
    );
    ref.context.push('/login/authenticate');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(misskeyServersProvider).valueOrNull ?? [];
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    final host = useState('');
    final server =
        servers.firstWhereOrNull((server) => server.url == host.value);
    final iconUrl = server?.meta?['iconUrl'] as String? ??
        (server != null && server.icon
            ? 'https://instanceapp.misskey.page/instance-icons/${server.url}.webp'
            : null);
    useEffect(
      () {
        controller.addListener(() => host.value = controller.text);
        return;
      },
      [],
    );

    return Scaffold(
      body: MisskeyServerBackground(
        controller: controller,
        child: Column(
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
                child: AppBar(
                  title: Text(t.misskey.login),
                  actions: [
                    PopupMenuButton<void>(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          onTap: () =>
                              context.push('/login/token?host=${host.value}'),
                          child: Text(t.aria.loginWithAccessToken),
                        ),
                      ],
                    ),
                  ],
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
                            controller: controller,
                            focusNode: focusNode,
                            autofocus: true,
                            onSubmitted: (host) => _launchMiAuth(ref, host),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () async {
                                final server = await showDialog<String>(
                                  context: context,
                                  builder: (context) =>
                                      const MisskeyServerListDialog(),
                                );
                                if (server != null) {
                                  controller.text = server;
                                }
                              },
                              child: Text(t.aria.findServer),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          ElevatedButton.icon(
                            onPressed: host.value.isNotEmpty
                                ? () => _launchMiAuth(ref, host.value)
                                : null,
                            icon: const Icon(Icons.open_in_browser),
                            label: Text(t.aria.authenticate),
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
