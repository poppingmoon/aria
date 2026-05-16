import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/avatar_decorations_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/avatar_decoration_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../widget/error_message.dart';
import '../widget/image_widget.dart';
import '../widget/user_avatar.dart';

class AvatarDecorationsPage extends ConsumerWidget {
  const AvatarDecorationsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final avatarDecorations = ref.watch(avatarDecorationsProvider(account));
    final i = ref.watch(iNotifierProvider(account)).value;
    final maxAvatarDecorations = i?.policies?.avatarDecorationLimit;
    final remaining =
        (maxAvatarDecorations ?? 0) - (i?.avatarDecorations.length ?? 0);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.avatarDecorations)),
      body: switch (avatarDecorations) {
        AsyncValue(value: final avatarDecorations?) => CustomScrollView(
          slivers: [
            if (!account.isGuest)
              SliverToBoxAdapter(
                child: Card.filled(
                  color: colors.infoBg,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      [
                        t.misskey.profile_.avatarDecorationMax(
                          max: i?.policies?.avatarDecorationLimit ?? '?',
                        ),
                        '(${t.misskey.remainingN(n: remaining)})',
                      ].join(' '),
                      style: TextStyle(color: colors.infoFg),
                    ),
                  ),
                ),
              ),
            if (i != null) ...[
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverToBoxAdapter(
                  child: Center(
                    child: UserAvatar(
                      account: account,
                      user: i,
                      size: 60.0,
                      forceShowDecoration: true,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: Divider()),
            ],
            if (i != null && i.avatarDecorations.isNotEmpty) ...[
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverToBoxAdapter(child: Text(t.misskey.inUse)),
              ),
              SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 150,
                ),
                itemCount: i.avatarDecorations.length,
                itemBuilder: (context, index) => Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () async {
                      final result = await showDialog<(UserAvatarDecoration?,)>(
                        context: context,
                        builder: (context) => AvatarDecorationDialog(
                          account: account,
                          decoration: i.avatarDecorations[index],
                          index: index,
                        ),
                      );
                      if (!context.mounted) return;
                      if (result case (final decoration,)) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(iNotifierProvider(account).notifier)
                              .setAvatarDecorations([
                                ...i.avatarDecorations.sublist(0, index),
                                if (decoration != null) decoration,
                                ...i.avatarDecorations.sublist(index + 1),
                              ]),
                        );
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            avatarDecorations
                                    .firstWhereOrNull(
                                      (decoration) =>
                                          decoration.id ==
                                          i.avatarDecorations[index].id,
                                    )
                                    ?.name ??
                                '',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: UserAvatar(
                            account: account,
                            user: i,
                            size: 60.0,
                            decorations: [i.avatarDecorations[index]],
                            forceShowDecoration: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverToBoxAdapter(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: colors.error,
                      iconColor: colors.error,
                    ),
                    onPressed: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.areYouSure,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(iNotifierProvider(account).notifier)
                              .setAvatarDecorations([]),
                        );
                      }
                    },
                    icon: const Icon(Icons.close),
                    label: Text(t.misskey.detachAll),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: Divider()),
            ],
            if (avatarDecorations.isNotEmpty) ...[
              if (avatarDecorations.groupListsBy(
                    (decoration) => decoration.category ?? '',
                  )
                  case final groupedAvatarDecorations)
                if (groupedAvatarDecorations[''] case final avatarDecorations?
                    when groupedAvatarDecorations.length == 1)
                  SliverGrid.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          mainAxisExtent: 150,
                        ),
                    itemCount: avatarDecorations.length,
                    itemBuilder: (context, index) => _AvatarDecorationPreview(
                      account: account,
                      avatarDecoration: avatarDecorations[index],
                    ),
                  )
                else
                  for (final entry in groupedAvatarDecorations.entries.sorted(
                    (a, b) => b.key.isEmpty
                        ? -1
                        : a.key.isEmpty
                        ? 1
                        : a.key.compareTo(b.key),
                  ))
                    SliverToBoxAdapter(
                      child: ExpansionTile(
                        title: Text(
                          entry.key.isNotEmpty ? entry.key : t.misskey.other,
                        ),
                        initiallyExpanded: true,
                        children: [
                          GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  mainAxisExtent: 150,
                                ),
                            itemBuilder: (context, index) =>
                                _AvatarDecorationPreview(
                                  account: account,
                                  avatarDecoration: entry.value[index],
                                ),
                            itemCount: entry.value.length,
                            shrinkWrap: true,
                          ),
                        ],
                      ),
                    ),
            ] else
              SliverToBoxAdapter(child: Center(child: Text(t.misskey.nothing))),
          ],
        ),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
          error: error,
          stackTrace: stackTrace,
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class _AvatarDecorationPreview extends ConsumerWidget {
  const _AvatarDecorationPreview({
    required this.account,
    required this.avatarDecoration,
  });

  final Account account;
  final GetAvatarDecorationsResponse avatarDecoration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () async {
          final result = await showDialog<(UserAvatarDecoration?,)>(
            context: context,
            builder: (context) => AvatarDecorationDialog(
              account: account,
              decoration: UserAvatarDecoration(
                id: avatarDecoration.id,
                url: avatarDecoration.url.toString(),
              ),
            ),
          );
          if (!context.mounted) return;
          if (result case (final decoration?,)) {
            await futureWithDialog(
              context,
              ref
                  .read(iNotifierProvider(account).notifier)
                  .setAvatarDecorations([...?i?.avatarDecorations, decoration]),
            );
          }
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    avatarDecoration.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: i != null
                      ? UserAvatar(
                          account: account,
                          user: i,
                          size: 60.0,
                          decorations: [
                            UserAvatarDecoration(
                              id: avatarDecoration.id,
                              url: avatarDecoration.url.toString(),
                            ),
                          ],
                          forceShowDecoration: true,
                        )
                      : ImageWidget(
                          url: avatarDecoration.url.toString(),
                          width: 60.0,
                          height: 60.0,
                        ),
                ),
              ],
            ),
            if (avatarDecoration
                    .roleIdsThatCanBeUsedThisDecoration
                    .isNotEmpty &&
                (i?.roles?.every(
                      (role) => !avatarDecoration
                          .roleIdsThatCanBeUsedThisDecoration
                          .contains(role.id),
                    ) ??
                    false))
              const PositionedDirectional(
                end: 8.0,
                bottom: 8.0,
                child: Icon(Icons.lock),
              ),
          ],
        ),
      ),
    );
  }
}
