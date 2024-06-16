import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/featured_pages_provider.dart';
import '../../../provider/api/featured_plays_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/play_preview.dart';

class PlaysFeatured extends ConsumerWidget {
  const PlaysFeatured({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plays = ref.watch(featuredPlaysProvider(account));

    return RefreshIndicator(
      onRefresh: () => ref.refresh(featuredPagesProvider(account).future),
      child: Center(
        child: switch (plays) {
          AsyncValue(valueOrNull: final plays?) => plays.isEmpty
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
                          tiles: plays.map(
                            (play) => PlayPreview(
                              account: account,
                              play: play,
                              onTap: () =>
                                  context.push('/$account/play/${play.id}'),
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
    );
  }
}
