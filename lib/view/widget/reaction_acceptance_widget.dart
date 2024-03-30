import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class ReactionAcceptanceWidget extends StatelessWidget {
  const ReactionAcceptanceWidget({super.key, required this.acceptance});

  final ReactionAcceptance? acceptance;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (acceptance) {
        null => t.misskey.all,
        ReactionAcceptance.likeOnlyForRemote => t.misskey.likeOnlyForRemote,
        ReactionAcceptance.nonSensitiveOnly => t.misskey.nonSensitiveOnly,
        ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote =>
          t.misskey.nonSensitiveOnlyForLocalLikeOnlyForRemote,
        ReactionAcceptance.likeOnly => t.misskey.likeOnly,
      },
    );
  }
}
