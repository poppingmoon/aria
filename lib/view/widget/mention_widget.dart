import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/static_image_url_provider.dart';
import '../../util/punycode.dart';
import 'image_widget.dart';

class MentionWidget extends ConsumerWidget {
  const MentionWidget({
    super.key,
    required this.account,
    required this.username,
    required this.host,
    this.onTap,
    this.onDeleted,
  });

  final Account account;
  final String username;
  final String host;
  final void Function()? onTap;
  final void Function()? onDeleted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disableShowingAnimatedImages = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            settings.disableShowingAnimatedImages || settings.dataSaverAvatar,
      ),
    );
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
          child: ClipOval(
            child: ImageWidget(
              url: disableShowingAnimatedImages
                  ? ref
                      .watch(staticImageUrlProvider(account.host, url))
                      .toString()
                  : url,
            ),
          ),
        ),
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: '@$username', style: TextStyle(color: color)),
              if (!isLocal)
                TextSpan(
                  text: '@${toUnicode(host)}',
                  style: TextStyle(color: color.withOpacity(0.7)),
                ),
            ],
          ),
          textDirection: TextDirection.ltr,
        ),
        onPressed: onTap,
        onDeleted: onDeleted,
        side: BorderSide.none,
        shape: const StadiumBorder(),
      ),
    );
  }
}
