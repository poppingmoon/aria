import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../cache_manager_provider.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'i_notifier_provider.g.dart';

// This provider depends on the `cacheManagerProvider`, but whether it is scoped
// does not matter here.
// ignore: provider_dependencies
@riverpod
class INotifier extends _$INotifier {
  @override
  Stream<MeDetailed?> build(Account account) async* {
    final link = ref.keepAlive();
    if (account.isGuest) {
      yield null;
    } else {
      try {
        final file = await ref
            .read(cacheManagerProvider)
            .getFileFromCache(_key);
        if (file != null) {
          final s = await file.file.readAsString();
          final i = MeDetailed.fromJson(jsonDecode(s) as Map<String, dynamic>);
          yield i;
          ref
              .read(notesNotifierProvider(account).notifier)
              .addAll(i.pinnedNotes ?? []);
        }
      } catch (_) {}
      try {
        final i = await _misskey.i.i();
        yield i;
        ref
            .read(notesNotifierProvider(account).notifier)
            .addAll(i.pinnedNotes ?? []);
        await _save(i);
      } catch (_) {
        link.close();
        rethrow;
      }
    }
  }

  String get _key => '$account/i';

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> _save(Object i) async {
    await ref
        .read(cacheManagerProvider)
        .putFile(_key, utf8.encode(jsonEncode(i)), eTag: _key);
  }

  Future<void> setName(String? name) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'name': name},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setDescription(String? description) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'description': description},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setFollowedMessage(String? followedMessage) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'followedMessage': followedMessage},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setLocation(String? location) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'location': location},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setBirthday(DateTime? birthday) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {
        'birthday':
            birthday != null ? birthday.toIso8601String().split('T')[0] : null,
      },
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setLang(String? lang) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'lang': lang},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setAvatarId(String? avatarId) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'avatarId': avatarId},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setAvatarDecorations(
    List<UserAvatarDecoration> avatarDecorations,
  ) async {
    final i = await _misskey.i.update(
      IUpdateRequest(
        avatarDecorations:
            avatarDecorations
                .map(
                  (decoration) => IUpdateAvatarDecoration(
                    id: decoration.id,
                    angle: decoration.angle,
                    flipH: decoration.flipH,
                    offsetX: decoration.offsetX,
                    offsetY: decoration.offsetY,
                  ),
                )
                .toList(),
      ),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setBannerId(String? bannerId) async {
    final response = await _misskey.apiService.post<Map<String, dynamic>>(
      'i/update',
      {'bannerId': bannerId},
      excludeRemoveNullPredicate: (_, _) => true,
    );
    state = AsyncValue.data(MeDetailed.fromJson(response));
    await _save(response);
  }

  Future<void> setIsCat(bool isCat) async {
    final i = await _misskey.i.update(IUpdateRequest(isCat: isCat));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setIsBot(bool isBot) async {
    final i = await _misskey.i.update(IUpdateRequest(isBot: isBot));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setFields(List<UserField> fields) async {
    final i = await _misskey.i.update(IUpdateRequest(fields: fields));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setIsLocked(bool isLocked) async {
    final i = await _misskey.i.update(IUpdateRequest(isLocked: isLocked));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setAutoAcceptFollowed(bool autoAcceptFollowed) async {
    final i = await _misskey.i.update(
      IUpdateRequest(autoAcceptFollowed: autoAcceptFollowed),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setPublicReactions(bool publicReactions) async {
    final i = await _misskey.i.update(
      IUpdateRequest(publicReactions: publicReactions),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setFfVisibility(FFVisibility ffVisibility) async {
    final i = await _misskey.i.update(
      IUpdateRequest(ffVisibility: ffVisibility),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setFollowingVisibility(FFVisibility followingVisibility) async {
    try {
      final i = await _misskey.i.update(
        IUpdateRequest(followingVisibility: followingVisibility),
      );
      state = AsyncValue.data(i);
      await _save(i);
    } catch (_) {
      await setFfVisibility(followingVisibility);
    }
  }

  Future<void> setFollowersVisibility(FFVisibility followersVisibility) async {
    try {
      final i = await _misskey.i.update(
        IUpdateRequest(followersVisibility: followersVisibility),
      );
      state = AsyncValue.data(i);
      await _save(i);
    } catch (_) {
      await setFfVisibility(followersVisibility);
    }
  }

  Future<void> setHideOnlineStatus(bool hideOnlineStatus) async {
    final i = await _misskey.i.update(
      IUpdateRequest(hideOnlineStatus: hideOnlineStatus),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setNoCrawle(bool noCrawle) async {
    final i = await _misskey.i.update(IUpdateRequest(noCrawle: noCrawle));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setPreventAiLearning(bool preventAiLearning) async {
    final i = await _misskey.i.update(
      IUpdateRequest(preventAiLearning: preventAiLearning),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setIsExplorable(bool isExplorable) async {
    final i = await _misskey.i.update(
      IUpdateRequest(isExplorable: isExplorable),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setChatScope(ChatScope chatScope) async {
    final i = await _misskey.i.update(IUpdateRequest(chatScope: chatScope));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setAlwaysMarkSensitive(bool alwaysMarkSensitive) async {
    final i = await _misskey.i.update(
      IUpdateRequest(alwaysMarkNsfw: alwaysMarkSensitive),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setAutoSensitive(bool autoSensitive) async {
    final i = await _misskey.i.update(
      IUpdateRequest(autoSensitive: autoSensitive),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setMutedWords(List<MuteWord> mutedWords) async {
    final i = await _misskey.i.update(IUpdateRequest(mutedWords: mutedWords));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setHardMutedWords(List<MuteWord> hardMutedWords) async {
    final i = await _misskey.i.update(
      IUpdateRequest(hardMutedWords: hardMutedWords),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> setMutedServers(List<String> mutedServers) async {
    final i = await _misskey.i.update(
      IUpdateRequest(mutedInstances: mutedServers),
    );
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> pin(String noteId) async {
    final i = await _misskey.i.pin(IPinRequest(noteId: noteId));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> unpin(String noteId) async {
    final i = await _misskey.i.unpin(IUnpinRequest(noteId: noteId));
    state = AsyncValue.data(i);
    await _save(i);
  }

  Future<void> addUnreadNotification() async {
    final i = await future;
    if (i != null) {
      state = AsyncValue.data(
        i.copyWith(
          unreadNotificationsCount: (i.unreadNotificationsCount ?? 0) + 1,
          hasUnreadNotification: true,
        ),
      );
    }
  }

  Future<void> readNotifications() async {
    final i = await future;
    if (i != null) {
      state = AsyncValue.data(i.copyWith(hasUnreadNotification: false));
    }
  }

  Future<void> addUnreadChatMessage() async {
    final i = await future;
    if (i != null) {
      state = AsyncValue.data(i.copyWith(hasUnreadChatMessages: true));
    }
  }

  Future<void> readChatMessages() async {
    final i = await future;
    if (i != null) {
      state = AsyncValue.data(i.copyWith(hasUnreadChatMessages: false));
    }
  }

  Future<void> addUnreadAnnouncement(AnnouncementsResponse announcement) async {
    final i = await future;
    if (i != null) {
      state = AsyncValue.data(
        i.copyWith(
          unreadAnnouncements: [announcement, ...i.unreadAnnouncements],
          hasUnreadAnnouncement: true,
        ),
      );
    }
  }

  Future<void> readAnnouncement(String announcementId) async {
    final i = await future;
    if (i != null) {
      final unreadAnnouncements =
          i.unreadAnnouncements
              .where((announcement) => announcement.id != announcementId)
              .toList();
      final updated = i.copyWith(
        unreadAnnouncements: unreadAnnouncements,
        hasUnreadAnnouncement: unreadAnnouncements.isNotEmpty,
      );
      state = AsyncValue.data(updated);
      await _save(updated);
    }
  }
}
