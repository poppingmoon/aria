import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/colors.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../dialog/image_dialog.dart';
import 'follow_button.dart';
import 'image_widget.dart';

class UserBanner extends StatelessWidget {
  const UserBanner({
    super.key,
    required this.account,
    required this.user,
    this.height = 200,
    this.expandOnTap = false,
  });

  final Account account;
  final UserDetailed user;
  final double height;
  final bool expandOnTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: expandOnTap && user.bannerUrl != null
          ? () => showDialog<void>(
                context: context,
                builder: (context) =>
                    ImageDialog(url: user.bannerUrl.toString()),
              )
          : null,
      child: Stack(
        children: [
          Container(
            height: height,
            color: bannerBackgroundColor,
          ),
          if (user case UserDetailed(:final bannerUrl?))
            ImageWidget(
              url: bannerUrl.toString(),
              blurHash: user.bannerBlurhash,
              height: height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    inset: true,
                    blurRadius: height / 2,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FollowButton(
                account: account,
                userId: user.id,
              ),
            ),
          ),
          if (user
              case UserDetailedNotMeWithRelations(
                :final isFollowed,
                :final isMuted,
                :final isBlocking,
              ))
            if (isFollowed || isMuted || isBlocking)
              Align(
                alignment: Alignment.topLeft,
                child: Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultTextStyle(
                      style: DefaultTextStyle.of(context)
                          .style
                          .apply(fontSizeFactor: 0.85),
                      child: Column(
                        children: [
                          if (isFollowed) Text(t.misskey.followsYou),
                          if (isMuted) Text(t.aria.muted),
                          if (isBlocking) Text(t.misskey.blocked),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
