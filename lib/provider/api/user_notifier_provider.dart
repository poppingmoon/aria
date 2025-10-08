import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'user_notifier_provider.g.dart';

@riverpod
class UserNotifier extends _$UserNotifier {
  @override
  FutureOr<UserDetailed> build(
    Account account, {
    String? userId,
    String? username,
    String? host,
  }) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final user = userId != null
          ? await _misskey.users.show(UsersShowRequest(userId: userId))
          : await _misskey.users.showByName(
              UsersShowByUserNameRequest(userName: username!, host: host),
            );
      ref
          .read(notesNotifierProvider(account).notifier)
          .addAll(user.pinnedNotes ?? []);
      return user;
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  String get _userId => userId ?? state.value!.id;

  Future<void> follow() async {
    await _misskey.following.create(FollowingCreateRequest(userId: _userId));
    await Future<void>.delayed(const Duration(seconds: 1));
    ref.invalidateSelf();
  }

  Future<void> unfollow() async {
    await _misskey.following.delete(FollowingDeleteRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isFollowing: false));
    }
  }

  Future<void> cancelFollowRequest() async {
    await _misskey.following.requests.cancel(
      FollowingRequestsCancelRequest(userId: _userId),
    );
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(
        user.copyWith(hasPendingFollowRequestFromYou: false),
      );
    }
  }

  Future<void> mute(DateTime? expiresAt) async {
    await _misskey.mute.create(
      MuteCreateRequest(userId: _userId, expiresAt: expiresAt),
    );
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isMuted: true));
    }
  }

  Future<void> unmute() async {
    await _misskey.mute.delete(MuteDeleteRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isMuted: false));
    }
  }

  Future<void> renoteMute() async {
    await _misskey.renoteMute.create(RenoteMuteCreateRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isRenoteMuted: true));
    }
  }

  Future<void> renoteUnmute() async {
    await _misskey.renoteMute.delete(RenoteMuteDeleteRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isRenoteMuted: false));
    }
  }

  Future<void> block() async {
    await _misskey.blocking.create(BlockCreateRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isBlocking: true));
    }
  }

  Future<void> unblock() async {
    await _misskey.blocking.delete(BlockDeleteRequest(userId: _userId));
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isBlocking: false));
    }
  }

  Future<void> invalidateFollow() async {
    await _misskey.following.invalidate(
      FollowingInvalidateRequest(userId: _userId),
    );
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(isFollowed: false));
    }
  }

  Future<void> updateMemo(String memo) async {
    await _misskey.users.updateMemo(
      UsersUpdateMemoRequest(userId: _userId, memo: memo),
    );
    final user = state.value;
    if (user is UserDetailedNotMe) {
      state = AsyncValue.data(user.copyWith(memo: memo));
    } else if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(memo: memo));
    } else if (user is MeDetailed) {
      state = AsyncValue.data(user.copyWith(memo: memo));
    }
  }

  Future<void> updateWithReplies(bool withReplies) async {
    await _misskey.following.update(
      FollowingUpdateRequest(userId: _userId, withReplies: withReplies),
    );
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(user.copyWith(withReplies: withReplies));
    }
  }

  Future<void> updateNotify(bool notify) async {
    await _misskey.following.update(
      FollowingUpdateRequest(
        userId: _userId,
        notify: notify
            ? FollowingUpdateAllNotifyType.normal
            : FollowingUpdateAllNotifyType.none,
      ),
    );
    final user = state.value;
    if (user is UserDetailedNotMeWithRelations) {
      state = AsyncValue.data(
        user.copyWith(notify: notify ? Notify.normal : Notify.none),
      );
    }
  }
}
