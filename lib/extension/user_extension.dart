import 'package:misskey_dart/misskey_dart.dart';

extension UserExtension on User {
  String get acct => '@$username${host != null ? '@$host' : ''}';

  User copyWith({
    String? id,
    String? username,
    String? host,
    String? name,
    OnlineStatus? onlineStatus,
    List<UserBadgeRole>? badgeRoles,
    Uri? avatarUrl,
    String? avatarBlurhash,
    List<UserAvatarDecoration>? avatarDecorations,
    UserInstanceInfo? instance,
    bool? isCat,
    bool? isBot,
    Map<String, String>? emojis,
  }) {
    final user = this;
    return switch (user) {
      UserLite() => user.copyWith(
        id: id ?? user.id,
        username: username ?? user.username,
        host: host ?? user.host,
        name: name ?? user.name,
        onlineStatus: onlineStatus ?? user.onlineStatus,
        badgeRoles: badgeRoles ?? user.badgeRoles,
        avatarUrl: avatarUrl ?? user.avatarUrl,
        avatarBlurhash: avatarBlurhash ?? user.avatarBlurhash,
        avatarDecorations: avatarDecorations ?? user.avatarDecorations,
        instance: instance ?? user.instance,
        isCat: isCat ?? user.isCat,
        isBot: isBot ?? user.isBot,
        emojis: emojis ?? user.emojis,
      ),
      UserDetailedNotMe() => user.copyWith(
        id: id ?? user.id,
        username: username ?? user.username,
        host: host ?? user.host,
        name: name ?? user.name,
        onlineStatus: onlineStatus ?? user.onlineStatus,
        badgeRoles: badgeRoles ?? user.badgeRoles,
        avatarUrl: avatarUrl ?? user.avatarUrl,
        avatarBlurhash: avatarBlurhash ?? user.avatarBlurhash,
        avatarDecorations: avatarDecorations ?? user.avatarDecorations,
        instance: instance ?? user.instance,
        isCat: isCat ?? user.isCat,
        isBot: isBot ?? user.isBot,
        emojis: emojis ?? user.emojis,
      ),
      UserDetailedNotMeWithRelations() => user.copyWith(
        id: id ?? user.id,
        username: username ?? user.username,
        host: host ?? user.host,
        name: name ?? user.name,
        onlineStatus: onlineStatus ?? user.onlineStatus,
        badgeRoles: badgeRoles ?? user.badgeRoles,
        avatarUrl: avatarUrl ?? user.avatarUrl,
        avatarBlurhash: avatarBlurhash ?? user.avatarBlurhash,
        avatarDecorations: avatarDecorations ?? user.avatarDecorations,
        instance: instance ?? user.instance,
        isCat: isCat ?? user.isCat,
        isBot: isBot ?? user.isBot,
        emojis: emojis ?? user.emojis,
      ),
      MeDetailed() => user.copyWith(
        id: id ?? user.id,
        username: username ?? user.username,
        host: host ?? user.host,
        name: name ?? user.name,
        onlineStatus: onlineStatus ?? user.onlineStatus,
        badgeRoles: badgeRoles ?? user.badgeRoles,
        avatarUrl: avatarUrl ?? user.avatarUrl,
        avatarBlurhash: avatarBlurhash ?? user.avatarBlurhash,
        avatarDecorations: avatarDecorations ?? user.avatarDecorations,
        instance: instance ?? user.instance,
        isCat: isCat ?? user.isCat,
        isBot: isBot ?? user.isBot,
        emojis: emojis ?? user.emojis,
      ),
      _ => user,
    };
  }

  String get nameOrUsername {
    if (name case final name? when name.isNotEmpty) {
      return name;
    } else {
      return username;
    }
  }
}
