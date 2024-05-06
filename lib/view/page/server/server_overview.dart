import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constant/colors.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/federation_instance_provider.dart';
import '../../../provider/api/meta_notifier_provider.dart';
import '../../../provider/api/stats_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../provider/node_info_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/image_widget.dart';
import '../../widget/key_value_widget.dart';

class ServerOverview extends ConsumerWidget {
  const ServerOverview({
    super.key,
    required this.account,
    required this.host,
  });

  final Account account;
  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meta = ref.watch(metaNotifierProvider(host)).valueOrNull;
    final instance = account.host != host
        ? ref.watch(federationInstanceProvider(account, host)).valueOrNull
        : null;
    final nodeInfo = ref.watch(nodeInfoProvider(host)).valueOrNull;
    final softwareName =
        (nodeInfo?['software'] as Map<String, dynamic>?)?['name'] as String?;
    final stats =
        meta != null ? ref.watch(statsProvider(Account(host: host))) : null;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return RefreshIndicator(
      onRefresh: () => Future.wait([
        ref.read(metaNotifierProvider(host).notifier).reloadMeta(),
        if (account.host != host)
          ref.refresh(federationInstanceProvider(account, host).future),
      ]),
      child: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(height: 150.0, color: bannerBackgroundColor),
              if (meta case MetaResponse(:final bannerUrl?))
                ImageWidget(
                  url: bannerUrl.toString(),
                  height: 150.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              const Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black54,
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: ImageWidget(
                          url: (meta?.iconUrl ??
                                  instance?.iconUrl ??
                                  instance?.faviconUrl ??
                                  Uri.https(host, 'favicon.ico'))
                              .toString(),
                          height: 64.0,
                          width: 64.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        meta?.name ?? instance?.name ?? host,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [BoxShadow(blurRadius: 8.0)],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: KeyValueWidget(
              label: t.misskey.description,
              child: Html(
                data: meta?.description ?? instance?.description ?? '',
                onLinkTap: (url, _, __) =>
                    url != null ? launchUrl(Uri.parse(url)) : null,
                style: {
                  'body': Style(margin: Margins.all(0)),
                  'a': Style(
                    color: colors.link,
                    textDecoration: TextDecoration.none,
                  ),
                },
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: KeyValueWidget(
              label: instance?.softwareName ?? softwareName ?? 'Misskey',
              text: meta?.version ?? instance?.softwareVersion,
            ),
          ),
          if (meta != null) ...[
            if (softwareName == null || softwareName == 'misskey')
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  t.misskey
                      .poweredByMisskeyDescription(name: meta.name ?? host)
                      .replaceAll(RegExp('</?b>'), ''),
                ),
              ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(t.misskey.aboutMisskey),
              onTap: () => context.push('/about-misskey'),
            ),
            if (meta.repositoryUrl != null || (meta.providesTarball ?? false))
              ListTile(
                leading: const Icon(Icons.code),
                title: Text(t.misskey.sourceCode),
                onTap: () => launchUrl(
                  meta.repositoryUrl ??
                      Uri.https(
                        host,
                        'tarball/misskey-${meta.version}.tar.gz',
                      ),
                  mode: LaunchMode.externalApplication,
                ),
              ),
          ],
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: KeyValueWidget(
                    label: t.misskey.administrator,
                    text: meta?.maintainerName ?? instance?.maintainerName,
                  ),
                ),
                Expanded(
                  child: KeyValueWidget(
                    label: t.misskey.contact,
                    text: meta?.maintainerEmail ?? instance?.maintainerEmail,
                  ),
                ),
              ],
            ),
          ),
          if (meta case MetaResponse(:final impressumUrl?))
            ListTile(
              leading: const Icon(Icons.shield),
              title: Text(t.misskey.impressum),
              onTap: () => launchUrl(
                impressumUrl,
                mode: LaunchMode.externalApplication,
              ),
            ),
          if (meta != null && meta.serverRules.isNotEmpty)
            ExpansionTile(
              leading: const Icon(Icons.rule),
              title: Text(t.misskey.serverRules),
              children: meta.serverRules
                  .mapIndexed(
                    (index, rule) => ListTile(
                      leading: DecoratedBox(
                        decoration: BoxDecoration(
                          color: colors.accentedBg,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            (index + 1).toString(),
                            style: TextStyle(
                              color: colors.accent,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      title: Html(
                        data: rule,
                        onLinkTap: (url, _, __) =>
                            url != null ? launchUrl(Uri.parse(url)) : null,
                        style: {
                          'body': Style(margin: Margins.all(0)),
                          'a': Style(
                            color: colors.link,
                            textDecoration: TextDecoration.none,
                          ),
                        },
                      ),
                    ),
                  )
                  .toList(),
            ),
          if (meta case MetaResponse(:final tosUrl?))
            ListTile(
              leading: const Icon(Icons.verified),
              title: Text(t.misskey.termsOfService),
              onTap: () => launchUrl(
                tosUrl,
                mode: LaunchMode.externalApplication,
              ),
            ),
          if (meta case MetaResponse(:final privacyPolicyUrl?))
            ListTile(
              leading: const Icon(Icons.policy),
              title: Text(t.misskey.privacyPolicy),
              onTap: () => launchUrl(
                privacyPolicyUrl,
                mode: LaunchMode.externalApplication,
              ),
            ),
          if (meta case MetaResponse(:final feedbackUrl?))
            ListTile(
              leading: const Icon(Icons.message),
              title: Text(t.misskey.feedback),
              onTap: () => launchUrl(
                Uri.parse(feedbackUrl),
                mode: LaunchMode.externalApplication,
              ),
            ),
          if (stats != null) ...[
            const Divider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(t.misskey.statistics),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: switch (stats) {
                AsyncValue(valueOrNull: final stats?) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: KeyValueWidget(
                          label: t.misskey.users,
                          text: NumberFormat().format(stats.originalUsersCount),
                        ),
                      ),
                      Expanded(
                        child: KeyValueWidget(
                          label: t.misskey.notes,
                          text: NumberFormat().format(stats.originalNotesCount),
                        ),
                      ),
                    ],
                  ),
                AsyncValue(:final error?, :final stackTrace) =>
                  ErrorMessage(error: error, stackTrace: stackTrace),
                _ => const Center(child: CircularProgressIndicator()),
              },
            ),
          ],
        ],
      ),
    );
  }
}
