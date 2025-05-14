import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:uuid/uuid.dart';

const _permissions = [
  Permission.readAccount,
  Permission.writeAccount,
  Permission.readBlocks,
  Permission.writeBlocks,
  Permission.readDrive,
  Permission.writeDrive,
  Permission.readFavorites,
  Permission.writeFavorites,
  Permission.readFollowing,
  Permission.writeFollowing,
  Permission.readMutes,
  Permission.writeMutes,
  Permission.writeNotes,
  Permission.readNotesSchedule,
  Permission.writeNotesSchedule,
  Permission.readNotifications,
  Permission.writeNotifications,
  Permission.readReactions,
  Permission.writeReactions,
  Permission.writeVotes,
  Permission.readPages,
  Permission.writePages,
  Permission.writePageLikes,
  Permission.readPageLikes,
  Permission.readChannels,
  Permission.writeChannels,
  Permission.readGallery,
  Permission.writeGallery,
  Permission.readGalleryLikes,
  Permission.writeGalleryLikes,
  Permission.readFlash,
  Permission.writeFlash,
  Permission.readFlashLikes,
  Permission.writeFlashLikes,
  Permission.writeClipFavorite,
  Permission.readClipFavorite,
  Permission.writeReportAbuse,
  Permission.readChat,
  Permission.writeChat,
];

class MiAuthRepository {
  const MiAuthRepository(this.dio);

  final Dio dio;

  ({String sessionId, Uri url}) buildMiAuthUrl(Uri serverUrl) {
    final sessionId = const Uuid().v4();
    final url = serverUrl.replace(
      pathSegments: ['miauth', sessionId],
      queryParameters: {
        'name': 'Aria',
        'permission': _permissions.map((e) => e.value).join(','),
        if (defaultTargetPlatform == TargetPlatform.android)
          'callback': 'aria://aria/miauth',
      },
    );
    return (sessionId: sessionId, url: url);
  }

  Future<({String token, UserDetailedNotMe user})?> check(
    Uri serverUrl,
    String sessionId,
  ) async {
    final response = await dio.postUri<Map<String, dynamic>>(
      serverUrl.replace(pathSegments: ['api', 'miauth', sessionId, 'check']),
    );
    if (response.data case {
      'ok': true,
      'token': final String token,
      'user': final Map<String, dynamic> user,
    }) {
      return (token: token, user: UserDetailedNotMe.fromJson(user));
    }
    return null;
  }
}
