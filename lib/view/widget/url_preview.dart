import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/lookup.dart';
import '../../provider/api/lookup_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../provider/summaly_provider.dart';
import '../../util/navigate.dart';
import 'bluesky_embed.dart';
import 'error_message.dart';
import 'image_widget.dart';
import 'note_simple_widget.dart';
import 'player_embed.dart';
import 'twitter_embed.dart';
import 'url_sheet.dart';
import 'user_info.dart';

class UrlPreview extends HookConsumerWidget {
  const UrlPreview({super.key, required this.account, required this.link});

  final Account account;
  final String link;

  String? _normalizeActivityPub(Uri activityPub, Uri? url) {
    return switch (activityPub) {
      Uri(
        pathSegments: ['tags', ...] ||
            ['users', _, 'statuses', _, 'references'],
      ) =>
        null,
      Uri(hasScheme: false) => url?.resolveUri(activityPub).toString(),
      _ => activityPub.toString(),
    };
  }

  String? _extractTweetId(Uri url) {
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

  ({String atId, String rkey})? _extractAtId(Uri url) {
    if (url case Uri(
      host: 'bsky.app',
      pathSegments: ['profile', final atId, 'post', final rkey],
    )) {
      return (atId: atId, rkey: rkey);
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summalyResult = ref
        .watch(
          summalyProvider(account.host, link, lang: t.$meta.locale.languageTag),
        )
        .value;
    final isPlayerOpen = useState(false);
    final thumbnail = summalyResult?.thumbnail;
    final hideThumbnail =
        (summalyResult?.sensitive ?? false) ||
        ref.watch(
          dataSaverProvider.select((dataSaver) => dataSaver.urlPreview),
        );
    final url = useMemoized(() => Uri.tryParse(link), [link]);
    final icon = summalyResult?.icon;
    final playerUrl = summalyResult?.player.url;
    final apUrl = useMemoized(
      () => switch (summalyResult?.activityPub) {
        final activityPub? => Uri.tryParse(activityPub),
        _ => null,
      },
      [summalyResult?.activityPub],
    );
    final activityPub = useMemoized(
      () => apUrl != null ? _normalizeActivityPub(apUrl, url) : null,
      [apUrl, url],
    );
    final canLookup =
        activityPub != null &&
        (apUrl?.authority.toLowerCase() ==
                ref
                    .watch(serverUrlNotifierProvider(account.host))
                    .authority
                    .toLowerCase() ||
            (!account.isGuest &&
                ref.watch(
                      metaNotifierProvider(
                        account.host,
                      ).select((meta) => meta.value?.federation),
                    ) !=
                    MetaFederation.none));
    final tweetId = useMemoized(
      () => switch (url) {
        final url? => _extractTweetId(url),
        _ => null,
      },
      [url],
    );
    final atId = useMemoized(
      () => switch (url) {
        final url? => _extractAtId(url),
        _ => null,
      },
      [url],
    );
    final brightness = Theme.brightnessOf(context);
    final colors = ref.watch(misskeyColorsProvider(brightness));
    final style = DefaultTextStyle.of(context).style;
    final titleStyle = style
        .apply(fontSizeFactor: 0.85)
        .copyWith(fontWeight: FontWeight.bold);
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
                child: InkWell(
                  onTap: () => navigate(ref, account, link),
                  onLongPress: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => UrlSheet(url: link),
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colors.divider,
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    summalyResult?.title ?? link,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: titleStyle,
                                  ),
                                  Text(
                                    summalyResult?.description ?? '',
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
                                          summalyResult?.sitename ?? '',
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
            ],
          ),
        if (defaultTargetPlatform
            case TargetPlatform.android ||
                TargetPlatform.iOS ||
                TargetPlatform.macOS ||
                TargetPlatform.windows
            when summalyResult != null &&
                (playerUrl != null ||
                    canLookup ||
                    tweetId != null ||
                    atId != null)) ...[
          if (isPlayerOpen.value)
            if (playerUrl != null)
              PlayerEmbed(host: account.host, player: summalyResult.player)
            else if (activityPub != null)
              _LookupPreview(account: account, url: activityPub)
            else if (tweetId != null)
              TwitterEmbed(
                tweetId: tweetId,
                isDark: brightness == Brightness.dark,
                lang: t.$meta.locale.languageTag,
              )
            else if (atId != null)
              BlueskyEmbed(
                atId: atId.atId,
                rkey: atId.rkey,
                isDark: brightness == Brightness.dark,
              ),
          const SizedBox(height: 6.0),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: colors.fg,
              backgroundColor: colors.buttonBg,
              iconColor: colors.fg,
              textStyle: style.apply(fontSizeFactor: 0.9),
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              minimumSize: Size.zero,
              side: BorderSide.none,
              visualDensity: VisualDensity.standard,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => isPlayerOpen.value = !isPlayerOpen.value,
            icon: Icon(
              isPlayerOpen.value
                  ? Icons.close
                  : playerUrl != null
                  ? Icons.play_arrow
                  : Icons.open_in_full,
              size: style.apply(fontSizeFactor: 0.9).lineHeight,
            ),
            label: Text(
              isPlayerOpen.value
                  ? playerUrl != null
                        ? t.misskey.disablePlayer
                        : t.misskey.close
                  : playerUrl != null
                  ? t.misskey.enablePlayer
                  : activityPub != null
                  ? switch (apUrl) {
                      Uri(pathSegments: ['ap', 'users', _] || ['users', _]) =>
                        t.aria.expandUser,
                      Uri(pathSegments: [final acct])
                          when acct.startsWith('@') =>
                        t.aria.expandUser,
                      _ => t.aria.expandNote,
                    }
                  : t.misskey.expandTweet,
            ),
          ),
        ],
      ],
    );
  }
}

class _LookupPreview extends ConsumerWidget {
  const _LookupPreview({required this.account, required this.url});

  final Account account;
  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final response = ref.watch(lookupProvider(account, url));
    final theme = Theme.of(context);

    return DecoratedBox(
      decoration: BoxDecoration(
        border: BoxBorder.all(
          color: theme.colorScheme.outlineVariant,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: switch (response) {
        AsyncValue(value: LookupUser(:final user)) => UserInfo(
          account: account,
          user: user,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        AsyncValue(value: LookupNote(:final note)) => NoteSimpleWidget(
          account: account,
          noteId: note.id,
          borderRadius: BorderRadius.circular(4.0),
        ),
        AsyncValue(:final error?, :final stackTrace) => ErrorMessage(
          error: error,
          stackTrace: stackTrace,
        ),
        _ => const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
        ),
      },
    );
  }
}
