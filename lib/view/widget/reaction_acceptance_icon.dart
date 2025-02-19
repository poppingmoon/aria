import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class ReactionAcceptanceIcon extends StatelessWidget {
  const ReactionAcceptanceIcon({super.key, required this.acceptance});

  final ReactionAcceptance? acceptance;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: switch (acceptance) {
        null => t.misskey.all,
        ReactionAcceptance.likeOnlyForRemote => t.misskey.likeOnlyForRemote,
        ReactionAcceptance.nonSensitiveOnly => t.misskey.nonSensitiveOnly,
        ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote =>
          t.misskey.nonSensitiveOnlyForLocalLikeOnlyForRemote,
        ReactionAcceptance.likeOnly => t.misskey.likeOnly,
      },
      child: Icon(switch (acceptance) {
        null => Icons.interests,
        ReactionAcceptance.likeOnlyForRemote => Icons.check_circle,
        ReactionAcceptance.nonSensitiveOnly => Icons.shield,
        ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote =>
          Icons.verified_user,
        ReactionAcceptance.likeOnly => Icons.favorite,
      }),
    );
  }
}
