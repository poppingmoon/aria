import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';

class const ReactionAcceptanceIcon({
  super.key,
  required final ReactionAcceptance? acceptance,
}) extends StatelessWidget {
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
