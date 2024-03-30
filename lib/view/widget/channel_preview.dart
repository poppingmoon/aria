import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/colors.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
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
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  color: bannerBackgroundColor,
                ),
                if (channel case CommunityChannel(:final bannerUrl?))
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
                        colors: [
                          Colors.transparent,
                          Colors.black54,
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: Text(
                          channel.name,
                          style: TextStyle(
                            fontSize:
                                DefaultTextStyle.of(context).style.fontSize! *
                                    1.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (channel.isSensitive)
                  Positioned(
                    bottom: 8.0,
                    left: 8.0,
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
                Positioned(
                  bottom: 8.0,
                  right: 8.0,
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
                              n: NumberFormat().format(channel.usersCount),
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            t.misskey.channel_.notesCount(
                              n: NumberFormat().format(channel.notesCount),
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
            if (channel case CommunityChannel(:final description?))
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mfm(
                  account: account,
                  text: description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            if (channel case CommunityChannel(:final lastNotedAt?)) ...[
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
