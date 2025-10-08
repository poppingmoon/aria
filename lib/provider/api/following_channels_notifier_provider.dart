import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'following_channels_notifier_provider.g.dart';

@riverpod
class FollowingChannelsNotifier extends _$FollowingChannelsNotifier {
  @override
  Stream<PaginationState<CommunityChannel>> build(Account account) async* {
    final response = await _fetchChannels();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Future<Iterable<CommunityChannel>> _fetchChannels({String? untilId}) async {
    final channels = await ref
        .read(misskeyProvider(account))
        .channels
        .followed(ChannelsFollowedRequest(untilId: untilId));
    if (untilId != null) {
      return channels.where((channel) => channel.id.compareTo(untilId) < 0);
    } else {
      return channels;
    }
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.value! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchChannels(
        untilId: value.items.lastOrNull?.id,
      );
      shouldLoadMore = response.isNotEmpty && response.length < 5;
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
    if (shouldLoadMore) {
      await loadMore();
    }
  }
}
