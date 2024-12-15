import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/account.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/data_saver_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/static_image_url_provider.dart';
import '../../util/punycode.dart';

class MentionWidget extends ConsumerWidget {
  const MentionWidget({
    super.key,
    required this.account,
    required this.username,
    required this.host,
    this.onTap,
    this.onDeleted,
    this.textScaler,
  });

  final Account account;
  final String username;
  final String host;
  final void Function()? onTap;
  final void Function()? onDeleted;
  final TextScaler? textScaler;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disableShowingAnimatedImages = ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.disableShowingAnimatedImages),
        ) ||
        ref.watch(dataSaverProvider.select((dataSaver) => dataSaver.avatar));
    final url = 'https://${account.host}/avatar/@$username@$host';
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final isLocal = account.host.toLowerCase() == host.toLowerCase();
    final isMe = isLocal && account.username == username.toLowerCase();
    final color = isMe ? colors.mentionMe : colors.mention;

    return ChipTheme(
      data: ChipThemeData.fromDefaults(
        primaryColor: color,
        secondaryColor: Colors.transparent,
        labelStyle: DefaultTextStyle.of(context).style,
      ),
      child: InputChip(
        avatar: CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(
            disableShowingAnimatedImages
                ? ref
                    .watch(staticImageUrlProvider(account.host, url))
                    .toString()
                : url,
            cacheManager: ref.watch(cacheManagerProvider),
          ),
          onForegroundImageError: (_, __) {},
        ),
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '@$username', style: TextStyle(color: color)),
              if (!isLocal)
                TextSpan(
                  text: '@${toUnicode(host)}',
                  style: TextStyle(color: color.withValues(alpha: 0.7)),
                ),
            ],
          ),
          textDirection: TextDirection.ltr,
          textScaler: textScaler,
        ),
        onPressed: onTap,
        onDeleted: onDeleted,
        side: BorderSide.none,
        shape: const StadiumBorder(),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}
