import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/summaly_provider.dart';
import '../../util/navigate.dart';
import 'image_widget.dart';
import 'player_embed.dart';
import 'twitter_embed.dart';
import 'url_sheet.dart';

class UrlPreview extends HookConsumerWidget {
  const UrlPreview({
    super.key,
    required this.account,
    required this.link,
  });

  final Account account;
  final String link;

  String? _extractTweetId(String link) {
    final url = Uri.parse(link);
    if (url.host
        case 'twitter.com' ||
            'mobile.twitter.com' ||
            'x.com' ||
            'mobile.x.com') {
      final index = url.pathSegments.indexWhere(
        (segment) => ['status', 'statuses'].contains(segment),
      );
      if (index < 0 || url.pathSegments.length - 1 <= index) {
        return null;
      }
      final tweetId = url.pathSegments[index + 1];
      return int.tryParse(tweetId)?.toString();
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summalyResult = ref
        .watch(
          summalyProvider(
            account.host,
            link,
            lang: Localizations.localeOf(context).toLanguageTag(),
          ),
        )
        .valueOrNull;
    if (summalyResult == null) {
      return const SizedBox.shrink();
    }
    final isPlayerOpen = useState(false);
    final thumbnail = summalyResult.thumbnail;
    final hideThumbnail = (summalyResult.sensitive ?? false) ||
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.dataSaverUrlPreview),
        );
    final icon = summalyResult.icon;
    final playerUrl = summalyResult.player.url;
    final tweetId = _extractTweetId(link);
    final style = DefaultTextStyle.of(context).style;
    final titleStyle =
        style.apply(fontSizeFactor: 0.85).copyWith(fontWeight: FontWeight.bold);
    final descriptionStyle = style.apply(fontSizeFactor: 0.8);
    final linkStyle = style.apply(fontSizeFactor: 0.7);
    final imageSize = style.fontSize! * 4.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isPlayerOpen.value)
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: InkWell(
                    onTap: () => navigate(ref, account, link),
                    onLongPress: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => UrlSheet(url: link),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outlineVariant,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: Row(
                          children: [
                            if (thumbnail == null || hideThumbnail)
                              SizedBox(height: imageSize)
                            else
                              ImageWidget(
                                url: thumbnail,
                                height: imageSize,
                                width: imageSize,
                                fit: BoxFit.cover,
                              ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      summalyResult.title ?? link,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: titleStyle,
                                    ),
                                    Text(
                                      summalyResult.description ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: descriptionStyle,
                                    ),
                                    Row(
                                      children: [
                                        if (icon != null) ...[
                                          ImageWidget(
                                            url: icon,
                                            height: linkStyle.fontSize,
                                            width: linkStyle.fontSize,
                                          ),
                                          const SizedBox(width: 4.0),
                                        ],
                                        Expanded(
                                          child: Text(
                                            summalyResult.sitename ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: linkStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
        if (defaultTargetPlatform
            case TargetPlatform.android ||
                TargetPlatform.iOS ||
                TargetPlatform.macOS)
          if (playerUrl != null || tweetId != null) ...[
            if (isPlayerOpen.value) ...[
              if (playerUrl != null) PlayerEmbed(player: summalyResult.player),
              if (tweetId != null)
                TwitterEmbed(
                  tweetId: tweetId,
                  isDark: Theme.of(context).brightness == Brightness.dark,
                  lang: Localizations.localeOf(context).toLanguageTag(),
                ),
            ],
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(
                    0.0,
                    DefaultTextStyle.of(context).style.fontSize! * 2.0,
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () => isPlayerOpen.value = !isPlayerOpen.value,
                icon: Icon(
                  isPlayerOpen.value
                      ? Icons.close
                      : playerUrl != null
                          ? Icons.play_arrow
                          : Icons.open_in_full,
                ),
                label: Text(
                  isPlayerOpen.value
                      ? playerUrl != null
                          ? t.misskey.disablePlayer
                          : t.misskey.close
                      : playerUrl != null
                          ? t.misskey.enablePlayer
                          : t.misskey.expandTweet,
                ),
              ),
            ),
          ],
      ],
    );
  }
}
