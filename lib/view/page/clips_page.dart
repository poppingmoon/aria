import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../provider/api/favorite_clips_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/clip_settings_dialog.dart';
import '../widget/clip_preview.dart';
import '../widget/error_message.dart';

class ClipsPage extends ConsumerWidget {
  const ClipsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clips = ref.watch(clipsNotifierProvider(account));
    final favoriteClips = ref.watch(favoriteClipsNotifierProvider(account));
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.clips),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.myClips),
              Tab(text: t.misskey.favorites),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RefreshIndicator(
              onRefresh: () =>
                  ref.refresh(clipsNotifierProvider(account).future),
              child: Center(
                child: switch (clips) {
                  AsyncValue(valueOrNull: final clips?) => clips.isEmpty
                      ? Text(t.misskey.nothing)
                      : Container(
                          width: 800.0,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListTileTheme(
                            tileColor: colors.panel,
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
                                    color: colors.panel,
                                  ),
                                ),
                                ...ListTile.divideTiles(
                                  context: context,
                                  tiles: clips.map(
                                    (clip) => ClipPreview(
                                      account: account,
                                      clip: clip,
                                      onTap: () => context
                                          .push('/$account/clips/${clip.id}'),
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
                                    color: colors.panel,
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
            RefreshIndicator(
              onRefresh: () =>
                  ref.refresh(favoriteClipsNotifierProvider(account).future),
              child: Center(
                child: switch (favoriteClips) {
                  AsyncValue(valueOrNull: final clips?) => clips.isEmpty
                      ? Text(t.misskey.nothing)
                      : Container(
                          width: 800.0,
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListTileTheme(
                            tileColor: colors.panel,
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
                                    color: colors.panel,
                                  ),
                                ),
                                ...ListTile.divideTiles(
                                  context: context,
                                  tiles: clips.map(
                                    (clip) => ClipPreview(
                                      account: account,
                                      clip: clip,
                                      onTap: () => context
                                          .push('/$account/clips/${clip.id}'),
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
                                    color: colors.panel,
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
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final result = await showDialog<ClipSettings>(
              context: context,
              builder: (context) => const ClipSettingsDialog(),
            );
            if (!ref.context.mounted) return;
            if (result != null) {
              await futureWithDialog(
                ref.context,
                ref.read(clipsNotifierProvider(account).notifier).create(
                      name: result.name ?? '',
                      description: result.description,
                      isPublic: result.isPublic,
                    ),
              );
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
