import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../constant/colors.dart';
import '../../../constant/max_content_width.dart';
import '../../../extension/text_style_extension.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/image_dialog.dart';
import '../../widget/haptic_feedback_refresh_indicator.dart';
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
        .value;
    if (channel == null) {
      return const Center(child: CircularProgressIndicator());
    }
    final i = ref.watch(iNotifierProvider(account)).value;
    final bannerUrl = channel.bannerUrl?.toString();
    final description = channel.description;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );
    final style = DefaultTextStyle.of(context).style;

    return HapticFeedbackRefreshIndicator(
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
                    if (!account.isGuest)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8.0,
                          children: [
                            if (channel.isFollowing case final isFollowing?)
                              isFollowing
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
                                        foregroundColor: colors.accent,
                                        backgroundColor: colors.panel,
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
                            if (channel.isMuting ?? false)
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Text(
                                      t.aria.muted,
                                      style: style.apply(
                                        color: Colors.white,
                                        fontSizeFactor: 0.85,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    if (channel.isFavorited case final isFavorited?)
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: isFavorited
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
                                    foregroundColor: colors.accent,
                                    backgroundColor: colors.panel,
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
                    if (channel.isSensitive)
                      PositionedDirectional(
                        start: 8.0,
                        bottom: 8.0,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              t.misskey.sensitive,
                              style: TextStyle(color: colors.warn),
                            ),
                          ),
                        ),
                      ),
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
                          child: DefaultTextStyle(
                            style: style.apply(
                              color: Colors.white,
                              fontSizeFactor: 0.85,
                            ),
                            child: IconTheme.merge(
                              data: IconThemeData(
                                size: style.lineHeight * 0.85,
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          child: Icon(Icons.people),
                                        ),
                                        const WidgetSpan(
                                          child: SizedBox(width: 4.0),
                                        ),
                                        TextSpan(
                                          text: t.misskey.channel_.usersCount(
                                            n: NumberFormat().format(
                                              channel.usersCount,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        const WidgetSpan(
                                          child: Icon(Icons.edit),
                                        ),
                                        const WidgetSpan(
                                          child: SizedBox(width: 4.0),
                                        ),
                                        TextSpan(
                                          text: t.misskey.channel_.notesCount(
                                            n: NumberFormat().format(
                                              channel.notesCount,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (channel.userId case final userId?
                                      when userId == i?.id)
                                    Text.rich(
                                      TextSpan(
                                        style: TextStyle(color: colors.warn),
                                        children: [
                                          WidgetSpan(
                                            child: Icon(
                                              Symbols.crown,
                                              fill: 1.0,
                                              color: colors.warn,
                                            ),
                                          ),
                                          const WidgetSpan(
                                            child: SizedBox(width: 4.0),
                                          ),
                                          TextSpan(text: t.misskey.youAreAdmin),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
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
                    child: Card.filled(
                      color: colors.panel,
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
                          size: style.fontSize,
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
