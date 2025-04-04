import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/antenna_settings.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/antennas_notifier_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/antenna_settings_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../widget/timeline_list_view.dart';

class AntennaPage extends ConsumerWidget {
  const AntennaPage({
    super.key,
    required this.account,
    required this.antennaId,
  });

  final Account account;
  final String antennaId;

  Future<void> _edit(WidgetRef ref, Antenna antenna) async {
    final result = await showDialog<AntennaSettings>(
      context: ref.context,
      builder:
          (context) => AntennaSettingsDialog(
            account: account,
            settings: AntennaSettings.fromAntenna(antenna),
          ),
    );
    if (!ref.context.mounted) return;
    if (result != null) {
      await futureWithDialog(
        ref.context,
        ref
            .read(antennasNotifierProvider(account).notifier)
            .updateAntenna(
              antenna,
              name: result.name,
              src: result.src,
              keywords: result.keywords,
              excludeKeywords: result.excludeKeywords,
              users: result.users,
              caseSensitive: result.caseSensitive,
              withReplies: result.withReplies,
              withFile: result.withFile,
              localOnly: result.localOnly,
              excludeBots: result.excludeBots,
              hideNotesInSensitiveChannel: result.hideNotesInSensitiveChannel,
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final antenna = ref
        .watch(antennasNotifierProvider(account))
        .valueOrNull
        ?.firstWhereOrNull((antenna) => antenna.id == antennaId);
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['my', 'antennas', antennaId]);

    return Scaffold(
      appBar: AppBar(
        title: Text(antenna?.name ?? ''),
        actions: [
          PopupMenuButton<void>(
            itemBuilder:
                (context) => [
                  PopupMenuItem(
                    onTap: () => launchUrl(ref, url),
                    child: Text(t.aria.openInBrowser),
                  ),
                  PopupMenuItem(
                    onTap: () => copyToClipboard(context, url.toString()),
                    child: Text(t.misskey.copyLink),
                  ),
                  if (antenna != null)
                    PopupMenuItem(
                      onTap: () => _edit(ref, antenna),
                      child: Text(t.misskey.editAntenna),
                    ),
                  PopupMenuItem(
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.deleteAreYouSure(
                          x: antenna?.name ?? '',
                        ),
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(antennasNotifierProvider(account).notifier)
                              .delete(antennaId),
                        );
                        if (!context.mounted) return;
                        context.pop();
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
        ],
      ),
      body: TimelineListView(
        tabSettings: TabSettings.antenna(account, antennaId),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.editAntenna,
        onPressed: antenna != null ? () => _edit(ref, antenna) : null,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
