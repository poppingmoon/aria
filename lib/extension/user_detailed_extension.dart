import 'package:misskey_dart/misskey_dart.dart';

extension UserDetailedExtension on UserDetailed {
  bool get isFollowersVisibleForMe {
    if (this is MeDetailed) {
      return true;
    }

    final user = this;

    return switch (followersVisibility ?? ffVisibility) {
      FFVisibility.public => true,
      FFVisibility.followers =>
        user is UserDetailedNotMeWithRelations && user.isFollowing,
      FFVisibility.private || null => false,
    };
  }

  bool get isFollowingVisibleForMe {
    if (this is MeDetailed) {
      return true;
    }

    final user = this;

    return switch (followingVisibility ?? ffVisibility) {
      FFVisibility.public => true,
      FFVisibility.followers =>
        user is UserDetailedNotMeWithRelations && user.isFollowing,
      FFVisibility.private || null => false,
    };
  }
}
