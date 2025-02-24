import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/colors.dart';
import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/misskey_servers_provider.dart';
import '../../provider/search_misskey_servers_provider.dart';
import '../../util/launch_url.dart';
import 'error_message.dart';
import 'image_widget.dart';

class MisskeyServers extends HookConsumerWidget {
  const MisskeyServers({super.key, required this.onTapServer});

  final void Function(JoinMisskeyInstanceInfo) onTapServer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final servers = ref.watch(searchMisskeyServersProvider(query.value));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
          child: Shortcuts(
            shortcuts: disablingTextShortcuts,
            child: TextField(
              decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
              onChanged: (value) => query.value = value,
              textInputAction: TextInputAction.search,
              onTapOutside: (_) => primaryFocus?.unfocus(),
            ),
          ),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => ref.refresh(misskeyServersProvider.future),
            child: switch (servers) {
              AsyncValue(valueOrNull: final servers?) => ListView.builder(
                itemBuilder:
                    (context, index) => _ServerPreview(
                      server: servers[index],
                      onTap: () => onTapServer(servers[index]),
                    ),
                itemCount: servers.length,
              ),
              AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
                error: error,
                stackTrace: stackTrace,
              ),
              _ => const Center(child: CircularProgressIndicator()),
            },
          ),
        ),
      ],
    );
  }
}

class _ServerPreview extends ConsumerWidget {
  const _ServerPreview({required this.server, this.onTap});

  final JoinMisskeyInstanceInfo server;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(height: 200, color: bannerBackgroundColor),
                    if (server.banner)
                      ImageWidget(
                        url:
                            'https://instanceapp.misskey.page/instance-banners/${server.url}.webp',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    const Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Colors.black54],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          if (server.icon)
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                end: 8.0,
                              ),
                              child: ImageWidget(
                                url:
                                    'https://instanceapp.misskey.page/instance-icons/${server.url}.webp',
                                width: 40.0,
                                height: 40.0,
                              ),
                            ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  server.name,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium?.merge(
                                    const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      shadows: [BoxShadow(blurRadius: 8.0)],
                                    ),
                                  ),
                                  maxLines: 3,
                                ),
                                Text(
                                  [
                                    server.url,
                                    if (server.langs.isNotEmpty)
                                      if (server.langs.length > 4)
                                        '${server.langs.sublist(0, 3).join(', ')}, ...'
                                      else
                                        server.langs.join(', '),
                                    if (server.nodeInfo?.software
                                        case JoinMisskeyNodeInfoSoftware(
                                          :final version?,
                                        ))
                                      version,
                                  ].join(' / '),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    shadows: [BoxShadow(blurRadius: 8.0)],
                                  ),
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (server case JoinMisskeyInstanceInfo(:final description?))
                  Html(
                    data: description,
                    onLinkTap:
                        (url, _, _) =>
                            url != null ? launchUrl(ref, Uri.parse(url)) : null,
                    style: {
                      'a': Style(
                        color: colors.link,
                        textDecoration: TextDecoration.none,
                      ),
                    },
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      if (server.nodeInfo?.usage case JoinMisskeyNodeInfoUsage(
                        :final localPosts?,
                      ))
                        Expanded(
                          child: Column(
                            children: [
                              Text(t.misskey.notes),
                              Text(
                                NumberFormat().format(localPosts),
                                style: TextStyle(
                                  color: colors.accent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (server.nodeInfo?.usage?.users
                          case JoinMisskeyNodeInfoUsageUsers(:final total?))
                        Expanded(
                          child: Column(
                            children: [
                              Text(t.misskey.users),
                              Text(
                                NumberFormat().format(total),
                                style: TextStyle(
                                  color: colors.accent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
