import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/antenna_settings.dart';
import '../../provider/api/antennas_notifier_provider.dart';
import '../dialog/antenna_settings_dialog.dart';
import '../widget/error_message.dart';

class AntennasPage extends ConsumerWidget {
  const AntennasPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final antennas = ref.watch(antennasNotifierProvider(account));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.antennas)),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(antennasNotifierProvider(account).future),
        child: Center(
          child: switch (antennas) {
            AsyncValue(valueOrNull: final antennas?) => antennas.isEmpty
                ? Text(t.misskey.nothing)
                : Container(
                    width: 800.0,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ListTileTheme(
                      tileColor: Theme.of(context).colorScheme.surface,
                      child: ListView(
                        children: [
                          Container(
                            height: 8.0,
                            margin: const EdgeInsets.only(top: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                          ...ListTile.divideTiles(
                            context: context,
                            tiles: antennas.map(
                              (antenna) => ListTile(
                                title: Text(antenna.name),
                                subtitle: Text(
                                  antenna.keywords
                                      .map((line) => line.join(' '))
                                      .join(' | '),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                onTap: () => context
                                    .push('/$account/antennas/${antenna.id}'),
                              ),
                            ),
                          ),
                          Container(
                            height: 8.0,
                            margin: const EdgeInsets.only(bottom: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                              ),
                              color: Theme.of(context).colorScheme.surface,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            AsyncValue(:final error?, :final stackTrace) =>
              ErrorMessage(error: error, stackTrace: stackTrace),
            _ => const CircularProgressIndicator(),
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showDialog<AntennaSettings>(
            context: context,
            builder: (context) => AntennaSettingsDialog(account: account),
          );
          if (result != null) {
            await ref.read(antennasNotifierProvider(account).notifier).create(
                  name: result.name ?? '',
                  src: result.src,
                  keywords: result.keywords,
                  excludeKeywords: result.excludeKeywords,
                  users: result.users,
                  caseSensitive: result.caseSensitive,
                  withReplies: result.withReplies,
                  withFile: result.withFile,
                );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
