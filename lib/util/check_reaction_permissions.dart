import 'package:misskey_dart/misskey_dart.dart';

bool checkReactionPermissions(MeDetailed? i, Note note, Emoji emoji) {
  final isRemoteNote = note.user.host != null;
  if ((emoji.localOnly ?? false) && isRemoteNote) {
    return false;
  }
  if (emoji.isSensitive) {
    if (note.reactionAcceptance
        case ReactionAcceptance.nonSensitiveOnly ||
            ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote) {
      return false;
    }
  }
  final roleIds = emoji.roleIdsThatCanBeUsedThisEmojiAsReaction;
  if (roleIds != null && roleIds.isNotEmpty) {
    return i?.roles?.any((role) => roleIds.contains(role.id)) ?? false;
  }
  return true;
}
