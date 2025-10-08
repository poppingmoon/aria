import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../provider/static_image_url_provider.dart';
import '../../provider/user_agent_provider.dart';
import '../../util/punycode.dart';

class MentionWidget extends ConsumerWidget {
  const MentionWidget({
    super.key,
    required this.account,
    required this.username,
    required this.host,
    this.scale = 1.0,
    this.opacity = 1.0,
    this.onTap,
    this.onDeleted,
    this.textScaler,
  });

  final Account account;
  final String username;
  final String host;
  final double scale;
  final double opacity;
  final void Function()? onTap;
  final void Function()? onDeleted;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disableShowingAnimatedImages =
        ref.watch(
          generalSettingsNotifierProvider.select(
            (settings) => settings.disableShowingAnimatedImages,
          ),
        ) ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final userAgent = ref.watch(userAgentProvider).value;
    final url = serverUrl.replace(pathSegments: ['avatar', '@$username@$host']);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final isLocal = account.host.toLowerCase() == host.toLowerCase();
    final isMe =
        isLocal && account.username?.toLowerCase() == username.toLowerCase();
    final color = (isMe ? colors.mentionMe : colors.mention).withValues(
      alpha: opacity,
    );
    final style = DefaultTextStyle.of(
      context,
    ).style.apply(fontSizeFactor: scale, color: color);

    return ChipTheme(
      data: ChipThemeData.fromDefaults(
        primaryColor: color,
        secondaryColor: Colors.transparent,
        labelStyle: style,
      ),
      child: InputChip(
        avatar: CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(
            (disableShowingAnimatedImages
                    ? ref.watch(
                        staticImageUrlProvider(account.host, url.toString()),
                      )
                    : url)
                .toString(),
            headers: {'User-Agent': ?userAgent},
            cacheManager: ref.watch(cacheManagerProvider),
          ),
          onForegroundImageError: (_, _) {},
        ),
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '@$username'),
              if (!isLocal)
                TextSpan(
                  text: '@${toUnicode(host)}',
                  style: TextStyle(
                    color: color.withValues(alpha: color.a * 0.7),
                  ),
                ),
            ],
          ),
          textDirection: TextDirection.ltr,
          textScaler: textScaler,
        ),
        padding: EdgeInsets.all(4.0 * scale),
        labelPadding: EdgeInsets.symmetric(horizontal: 4.0 * scale),
        onPressed: onTap,
        onDeleted: onDeleted,
        side: BorderSide.none,
        shape: const StadiumBorder(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
