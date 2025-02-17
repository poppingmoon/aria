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
];

class MiAuthRepository {
  const MiAuthRepository(this.dio);

  final Dio dio;

  (String, Uri) buildMiAuthUrl(String host) {
    final sessionId = const Uuid().v4();
    if (kDebugMode) {
      if (host.startsWith('localhost')) {
        final url = Uri.http(
          host,
          'miauth/$sessionId',
          {
            'name': 'Aria',
            'permission': _permissions.map((e) => e.value).join(','),
            if (defaultTargetPlatform == TargetPlatform.android)
              'callback': 'aria://aria/miauth',
          },
        );
        return (sessionId, url);
      }
    }
    final url = Uri.https(
      host,
      'miauth/$sessionId',
      {
        'name': 'Aria',
        'permission': _permissions.map((e) => e.value).join(','),
        if (defaultTargetPlatform
            case TargetPlatform.android || TargetPlatform.iOS)
          'callback': 'aria://aria/miauth',
      },
    );
    return (sessionId, url);
  }

  Future<(String, UserDetailedNotMe)?> check(
    String host,
    String sessionId,
  ) async {
    if (kDebugMode) {
      if (host.startsWith('localhost')) {
        final response = await dio.postUri<Map<String, dynamic>>(
          Uri.http(host, 'api/miauth/$sessionId/check'),
        );
        final data = response.data;
        if (data != null && data['ok'] as bool) {
          return (
            data['token'] as String,
            UserDetailedNotMe.fromJson(
              data['user'] as Map<String, dynamic>,
            )
          );
        }
      }
    }
    final response = await dio.postUri<Map<String, dynamic>>(
      Uri.https(host, 'api/miauth/$sessionId/check'),
    );
    final data = response.data!;
    if (data['ok'] as bool) {
      return (
        data['token'] as String,
        UserDetailedNotMe.fromJson(
          data['user'] as Map<String, dynamic>,
        )
      );
    }
    return null;
  }
}
