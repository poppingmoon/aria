import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/colors.dart';
import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/image_dialog.dart';
import '../../widget/image_widget.dart';
import '../../widget/mfm.dart';
import '../../widget/note_widget.dart';

class ChannelHome extends ConsumerWidget {
  const ChannelHome({
    super.key,
    required this.account,
    required this.channelId,
  });

  final Account account;
  final String channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final channel = ref
        .watch(channelNotifierProvider(account, channelId))
        .valueOrNull;
    if (channel == null) {
      return const Center(child: CircularProgressIndicator());
    }
    final bannerUrl = channel.bannerUrl?.toString();
    final description = channel.description;

    return RefreshIndicator(
      onRefresh: () =>
          ref.refresh(channelNotifierProvider(account, channelId).future),
      child: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              InkWell(
                onTap: () => bannerUrl != null
                    ? showImageDialog(context, url: bannerUrl)
                    : null,
                child: Stack(
                  children: [
                    Container(height: 200, color: bannerBackgroundColor),
                    if (bannerUrl != null)
                      ImageWidget(
                        url: bannerUrl,
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
                    if (!account.isGuest) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: channel.isFollowing ?? false
                            ? ElevatedButton(
                                onPressed: () => futureWithDialog(
                                  context,
                                  ref
                                      .read(
                                        channelNotifierProvider(
                                          account,
                                          channelId,
                                        ).notifier,
                                      )
                                      .unfollow(),
                                ),
                                child: Text(t.misskey.unfollow),
                              )
                            : ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Theme.of(
                                    context,
                                  ).colorScheme.primary,
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.surface,
                                ),
                                onPressed: () => futureWithDialog(
                                  context,
                                  ref
                                      .read(
                                        channelNotifierProvider(
                                          account,
                                          channelId,
                                        ).notifier,
                                      )
                                      .follow(),
                                ),
                                child: Text(t.misskey.follow),
                              ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: channel.isFavorited ?? false
                              ? ElevatedButton(
                                  onPressed: () => futureWithDialog(
                                    context,
                                    ref
                                        .read(
                                          channelNotifierProvider(
                                            account,
                                            channelId,
                                          ).notifier,
                                        )
                                        .unfavorite(),
                                  ),
                                  child: Text(t.misskey.unfavorite),
                                )
                              : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    backgroundColor: Theme.of(
                                      context,
                                    ).colorScheme.surface,
                                  ),
                                  onPressed: () => futureWithDialog(
                                    context,
                                    ref
                                        .read(
                                          channelNotifierProvider(
                                            account,
                                            channelId,
                                          ).notifier,
                                        )
                                        .favorite(),
                                  ),
                                  child: Text(t.misskey.favorite),
                                ),
                        ),
                      ),
                    ],
                    PositionedDirectional(
                      end: 8.0,
                      bottom: 8.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.misskey.channel_.usersCount(
                                  n: channel.usersCount,
                                ),
                                style: const TextStyle(color: Colors.white),
                              ),
                              Text(
                                t.misskey.channel_.notesCount(
                                  n: channel.notesCount,
                                ),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (description != null)
                Center(
                  child: Container(
                    width: maxContentWidth,
                    margin: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Theme.of(context).colorScheme.surface,
                      elevation: 0.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Mfm(account: account, text: description),
                      ),
                    ),
                  ),
                ),
              if (channel.pinnedNoteIds.isNotEmpty) ...[
                Center(
                  child: Container(
                    width: maxContentWidth,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.push_pin,
                          size: DefaultTextStyle.of(context).style.fontSize,
                          color: pinColor,
                        ),
                        const SizedBox(width: 2.0),
                        Expanded(
                          child: Text(
                            t.misskey.pinnedNote,
                            style: const TextStyle(color: pinColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
          SliverList.builder(
            itemBuilder: (context, index) => Center(
              child: Container(
                width: maxContentWidth,
                margin: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                child: NoteWidget(
                  account: account,
                  noteId: channel.pinnedNoteIds[index],
                  withHardMute: false,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            itemCount: channel.pinnedNoteIds.length,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 80.0)),
        ],
      ),
    );
  }
}
