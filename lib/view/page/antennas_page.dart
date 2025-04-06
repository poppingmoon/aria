import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/antenna_settings.dart';
import '../../provider/api/antennas_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
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
          AsyncValue(valueOrNull: final antennas?) =>
            antennas.isEmpty
                ? LayoutBuilder(
                  builder:
                      (context, constraint) => SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: SizedBox(
                          height: constraint.maxHeight,
                          child: Center(child: Text(t.misskey.nothing)),
                        ),
                      ),
                )
                : ListTileTheme(
                  tileColor: Theme.of(context).colorScheme.surface,
                  child: ListView.separated(
                    itemBuilder:
                        (context, index) => Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 8.0,
                              top: index == 0 ? 8.0 : 0.0,
                              right: 8.0,
                              bottom:
                                  index == antennas.length - 1 ? 120.0 : 0.0,
                            ),
                            width: maxContentWidth,
                            child: ListTile(
                              title: Text(antennas[index].name),
                              subtitle: Text(
                                antennas[index].keywords
                                    .map((line) => line.join(' '))
                                    .join(' | '),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top:
                                      index == 0
                                          ? const Radius.circular(8.0)
                                          : Radius.zero,
                                  bottom:
                                      index == antennas.length - 1
                                          ? const Radius.circular(8.0)
                                          : Radius.zero,
                                ),
                              ),
                              onTap:
                                  () => context.push(
                                    '/$account/antennas/${antennas[index].id}',
                                  ),
                            ),
                          ),
                        ),
                    separatorBuilder:
                        (context, index) => const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: maxContentWidth,
                              child: Divider(height: 0.0),
                            ),
                          ),
                        ),
                    itemCount: antennas.length,
                  ),
                ),
          AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: ErrorMessage(error: error, stackTrace: stackTrace),
              ),
            ),
          ),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: t.misskey.createAntenna,
        onPressed: () async {
          final result = await showDialog<AntennaSettings>(
            context: context,
            builder: (context) => AntennaSettingsDialog(account: account),
          );
          if (!context.mounted) return;
          if (result != null) {
            await futureWithDialog(
              context,
              ref
                  .read(antennasNotifierProvider(account).notifier)
                  .create(
                    name: result.name ?? '',
                    src: result.src,
                    keywords: result.keywords,
                    excludeKeywords: result.excludeKeywords,
                    users: result.users,
                    caseSensitive: result.caseSensitive,
                    withReplies: result.withReplies,
                    withFile: result.withFile,
                    localOnly: result.localOnly,
                    excludeBots: result.excludeBots,
                    hideNotesInSensitiveChannel:
                        result.hideNotesInSensitiveChannel,
                  ),
            );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
