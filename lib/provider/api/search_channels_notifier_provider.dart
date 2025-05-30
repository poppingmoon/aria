import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'search_channels_notifier_provider.g.dart';

@riverpod
class SearchChannelsNotifier extends _$SearchChannelsNotifier {
  @override
  FutureOr<PaginationState<CommunityChannel>> build(
    Account account,
    String query, {
    bool includeDescription = true,
  }) async {
    final response = await _fetchChannels();
    return PaginationState.fromIterable(response);
  }

  Future<Iterable<CommunityChannel>> _fetchChannels({String? untilId}) async {
    final channels = await ref
        .read(misskeyProvider(account))
        .channels
        .search(
          ChannelsSearchRequest(
            query: query,
            type: includeDescription
                ? ChannelSearchType.nameAndDescription
                : ChannelSearchType.nameOnly,
            untilId: untilId,
          ),
        );
    return channels;
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchChannels(
        untilId: value.items.lastOrNull?.id,
      );
      return PaginationState(
        items: [...value.items, ...response],
        isLastLoaded: response.isEmpty,
      );
    });
  }
}
