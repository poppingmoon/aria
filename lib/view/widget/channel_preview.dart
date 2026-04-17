import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/colors.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import 'image_widget.dart';
import 'mfm.dart';
import 'time_widget.dart';

class ChannelPreview extends ConsumerWidget {
  const ChannelPreview({
    super.key,
    required this.account,
    required this.channel,
    this.onTap,
  });

  final Account account;
  final CommunityChannel channel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final colors = ref.watch(
      misskeyColorsProvider(Theme.brightnessOf(context)),
    );
    final style = DefaultTextStyle.of(context).style;

    return Card.filled(
      color: colors.panel,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(height: 200, color: bannerBackgroundColor),
                if (channel.bannerUrl case final bannerUrl?)
                  ImageWidget(
                    url: bannerUrl.toString(),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8.0,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Text(
                              channel.name,
                              style: style.apply(
                                color: Colors.white,
                                fontSizeFactor: 1.5,
                              ),
                            ),
                          ),
                        ),
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
                                    const WidgetSpan(child: Icon(Icons.people)),
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
                                    const WidgetSpan(child: Icon(Icons.edit)),
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
            if (channel.description case final description?)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mfm(
                  account: account,
                  text: description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            if (channel.lastNotedAt case final lastNotedAt?) ...[
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('${t.misskey.updatedAt}: '),
                    Expanded(child: TimeWidget(time: lastNotedAt)),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
