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
        child: switch (antennas) {
          AsyncValue(valueOrNull: final antennas?) => antennas.isEmpty
              ? Center(child: Text(t.misskey.nothing))
              : ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    title: Text(antennas[index].name),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () => context
                        .push('/$account/antennas/${antennas[index].id}'),
                  ),
                  separatorBuilder: (_, __) => const Divider(height: 0.0),
                  itemCount: antennas.length,
                ),
          AsyncValue(:final error?, :final stackTrace) =>
            ErrorMessage(error: error, stackTrace: stackTrace),
          _ => const Center(child: CircularProgressIndicator()),
        },
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
