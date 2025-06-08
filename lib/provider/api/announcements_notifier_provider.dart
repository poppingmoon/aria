import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/pagination_state.dart';
import 'misskey_provider.dart';

part 'announcements_notifier_provider.g.dart';

@riverpod
class AnnouncementsNotifier extends _$AnnouncementsNotifier {
  @override
  Stream<PaginationState<AnnouncementsResponse>> build(
    Account account, {
    bool isActive = true,
  }) async* {
    final response = await _fetchAnnouncements();
    yield PaginationState.fromIterable(response);
    if (response.isNotEmpty && response.length < 10) {
      await loadMore();
    }
  }

  Misskey get _misskey => ref.read(misskeyProvider(account));

  Future<Iterable<AnnouncementsResponse>> _fetchAnnouncements({
    String? untilId,
    int? offset,
  }) {
    return _misskey.announcements(
      AnnouncementsRequest(
        isActive: isActive,
        untilId: untilId,
        offset: offset,
      ),
    );
  }

  Future<void> loadMore({bool skipError = false}) async {
    if (state.isLoading || (state.hasError && !skipError)) {
      return;
    }
    final value = skipError ? state.valueOrNull! : await future;
    if (value.isLastLoaded) {
      return;
    }
    bool shouldLoadMore = false;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final response = await _fetchAnnouncements(
        untilId: value.items.lastOrNull?.id,
        offset: value.items.length,
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

  Future<void> readAnnouncement(String announcementId) async {
    await _misskey.i.readAnnouncement(
      IReadAnnouncementRequest(announcementId: announcementId),
    );
    final value = await future;
    state = AsyncValue.data(
      value.copyWith(
        items: value.items
            .map(
              (announcement) => announcement.id == announcementId
                  ? announcement.copyWith(isRead: true)
                  : announcement,
            )
            .toList(),
      ),
    );
  }
}
