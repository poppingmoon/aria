import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/colors.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import 'image_widget.dart';
import 'mfm.dart';
import 'time_widget.dart';
import 'user_avatar.dart';
import 'username_widget.dart';

class GalleryPostPreview extends ConsumerWidget {
  const GalleryPostPreview({
    super.key,
    required this.account,
    required this.post,
    this.onTap,
  });

  final Account account;
  final GalleryPost post;
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
                Container(height: 200.0, color: bannerBackgroundColor),
                ImageWidget(
                  url: post.files.first.url,
                  height: 200.0,
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
              ],
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  UserAvatar(
                    user: post.user,
                    onTap: () => context.push('/$account/users/${post.userId}'),
                  ),
                  UsernameWidget(
                    account: account,
                    user: post.user,
                    onTap: () => context.push('/$account/users/${post.userId}'),
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
