import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../notes_notifier_provider.dart';
import 'misskey_provider.dart';

part 'channel_notifier_provider.g.dart';

@riverpod
class ChannelNotifier extends _$ChannelNotifier {
  @override
  FutureOr<CommunityChannel> build(Account account, String channelId) async {
    final link = ref.keepAlive();
    Timer? timer;
    ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
    ref.onResume(() => timer?.cancel());
    ref.onDispose(() => timer?.cancel());
    try {
      final channel = await _misskey.channels
          .show(ChannelsShowRequest(channelId: channelId));
      ref
          .read(notesNotifierProvider(account).notifier)
          .addAll(channel.pinnedNotes ?? []);
      return channel;
    } catch (_) {
      timer?.cancel();
      link.close();
      rethrow;
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<void> follow() async {
    await _misskey.channels.follow(ChannelsFollowRequest(channelId: channelId));
    final channel = state.valueOrNull;
    if (channel != null) {
      state = AsyncValue.data(channel.copyWith(isFollowing: true));
    }
  }

  Future<void> unfollow() async {
    await _misskey.channels
        .unfollow(ChannelsUnfollowRequest(channelId: channelId));
    final channel = state.valueOrNull;
    if (channel != null) {
      state = AsyncValue.data(channel.copyWith(isFollowing: false));
    }
  }

  Future<void> favorite() async {
    await _misskey.channels
        .favorite(ChannelsFavoriteRequest(channelId: channelId));
    final channel = state.valueOrNull;
    if (channel != null) {
      state = AsyncValue.data(channel.copyWith(isFavorited: true));
    }
  }

  Future<void> unfavorite() async {
    await _misskey.channels
        .unfavorite(ChannelsUnfavoriteRequest(channelId: channelId));
    final channel = state.valueOrNull;
    if (channel != null) {
      state = AsyncValue.data(channel.copyWith(isFavorited: false));
    }
  }
}
