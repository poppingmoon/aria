import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/colors.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import 'image_widget.dart';
import 'mfm.dart';
import 'time_widget.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';
import 'username_widget.dart';

class GalleryPostPreview extends HookConsumerWidget {
  const GalleryPostPreview({
    super.key,
    required this.account,
    required this.post,
    this.hideUserInfo = false,
    this.onTap,
  });

  final Account account;
  final GalleryPost post;
  final bool hideUserInfo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sensitive = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.sensitive),
    );
    final hide = useState(
      post.isSensitive && sensitive != SensitiveMediaDisplay.ignore,
    );
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Card.filled(
      color: colors.panel,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: hide.value ? () => hide.value = false : null,
              child: Stack(
                children: [
                  Container(height: 200.0, color: bannerBackgroundColor),
                  if (!hide.value)
                    ImageWidget(
                      url: post.files.first.url,
                      blurHash: post.files.first.blurhash,
                      height: 200.0,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  else if (post.files.first case DriveFile(:final blurhash?))
                    Positioned.fill(
                      child: InkWell(
                        onTap: () => hide.value = false,
                        child: ColorFiltered(
                          colorFilter: const ColorFilter.mode(
                            Color(0xffb4b4b4),
                            BlendMode.multiply,
                          ),
                          child: BlurHash(hash: blurhash),
                        ),
                      ),
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
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          post.title,
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
                  if (post.isSensitive)
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
                ],
              ),
            ),
            if (post case GalleryPost(:final description?)) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mfm(
                  account: account,
                  text: description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              const Divider(),
            ],
            if (!hideUserInfo)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    UserAvatar(
                      account: account,
                      user: post.user,
                      onTap:
                          () => context.push('/$account/users/${post.userId}'),
                    ),
                    const SizedBox(width: 2.0),
                    InkWell(
                      onTap:
                          () => context.push('/$account/users/${post.userId}'),
                      onLongPress:
                          () => showUserSheet(
                            context: context,
                            account: account,
                            userId: post.userId,
                          ),
                      child: UsernameWidget(account: account, user: post.user),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('${t.misskey.updatedAt}: '),
                  Expanded(child: TimeWidget(time: post.updatedAt)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
