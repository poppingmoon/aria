import 'package:misskey_dart/misskey_dart.dart';

extension MeDetailedExtension on MeDetailed {
  UserLite toUserLite() => UserLite(
    id: id,
    name: name,
    username: username,
    host: host,
    avatarUrl: avatarUrl,
    avatarBlurhash: avatarBlurhash,
    avatarDecorations: avatarDecorations,
    isBot: isBot,
    isCat: isCat,
    instance: instance,
    emojis: emojis,
    onlineStatus: onlineStatus,
    badgeRoles: badgeRoles,
    requireSigninToViewContents: requireSigninToViewContents,
    makeNotesFollowersOnlyBefore: makeNotesFollowersOnlyBefore,
    makeNotesHiddenBefore: makeNotesHiddenBefore,
  );
}
