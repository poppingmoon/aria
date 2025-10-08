import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/clip_settings.dart';
import '../../provider/api/clips_notifier_provider.dart';
import '../../provider/api/favorite_clips_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/clip_settings_dialog.dart';
import '../widget/clip_preview.dart';
import '../widget/error_message.dart';
import '../widget/haptic_feedback_refresh_indicator.dart';
import '../widget/paginated_list_view.dart';

class ClipsPage extends ConsumerWidget {
  const ClipsPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clips = ref.watch(clipsNotifierProvider(account));
    final favoriteClips = ref.watch(favoriteClipsNotifierProvider(account));
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.clips),
          bottom: TabBar(
            tabs: [
              Tab(text: t.misskey.myClips),
              Tab(text: t.misskey.favorites),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HapticFeedbackRefreshIndicator(
              onRefresh: () =>
                  ref.refresh(clipsNotifierProvider(account).future),
              child: switch (clips) {
                AsyncValue(:final value?) =>
                  value.items.isEmpty
                      ? LayoutBuilder(
                          builder: (context, constraint) =>
                              SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: SizedBox(
                                  height: constraint.maxHeight,
                                  child: Center(child: Text(t.misskey.nothing)),
                                ),
                              ),
                        )
                      : PaginatedListView(
                          paginationState: clips,
                          itemBuilder: (context, clip) => ClipPreview(
                            account: account,
                            clip: clip,
                            hideUserInfo: true,
                            onTap: () =>
                                context.push('/$account/clips/${clip.id}'),
                          ),
                          loadMore: (skipError) => ref
                              .read(clipsNotifierProvider(account).notifier)
                              .loadMore(skipError: skipError),
                        ),
                AsyncValue(:final error?, :final stackTrace) =>
                  SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child: ErrorMessage(
                          error: error,
                          stackTrace: stackTrace,
                        ),
                      ),
                    ),
                  ),
                _ => const Center(child: CircularProgressIndicator()),
              },
            ),
            HapticFeedbackRefreshIndicator(
              onRefresh: () =>
                  ref.refresh(favoriteClipsNotifierProvider(account).future),
              child: switch (favoriteClips) {
                AsyncValue(value: final clips?) =>
                  clips.isEmpty
                      ? LayoutBuilder(
                          builder: (context, constraint) =>
                              SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: SizedBox(
                                  height: constraint.maxHeight,
                                  child: Center(child: Text(t.misskey.nothing)),
                                ),
                              ),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) => Center(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 8.0,
                                top: index == 0 ? 8.0 : 0.0,
                                right: 8.0,
                                bottom: index == clips.length - 1 ? 120.0 : 0.0,
                              ),
                              width: maxContentWidth,
                              child: ListTileTheme.merge(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: index == 0
                                        ? const Radius.circular(8.0)
                                        : Radius.zero,
                                    bottom: index == clips.length - 1
                                        ? const Radius.circular(8.0)
                                        : Radius.zero,
                                  ),
                                ),
                                tileColor: theme.colorScheme.surface,
                                child: ClipPreview(
                                  account: account,
                                  clip: clips[index],
                                  hideUserInfo: true,
                                  onTap: () => context.push(
                                    '/$account/clips/${clips[index].id}',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                width: maxContentWidth,
                                child: Divider(height: 0.0),
                              ),
                            ),
                          ),
                          itemCount: clips.length,
                        ),
                AsyncValue(:final error?, :final stackTrace) =>
                  SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        width: maxContentWidth,
                        child: ErrorMessage(
                          error: error,
                          stackTrace: stackTrace,
                        ),
                      ),
                    ),
                  ),
                _ => const Center(child: CircularProgressIndicator()),
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: t.misskey.createNewClip,
          onPressed: () async {
            final result = await showDialog<ClipSettings>(
              context: context,
              builder: (context) => const ClipSettingsDialog(),
            );
            if (!ref.context.mounted) return;
            if (result != null) {
              await futureWithDialog(
                ref.context,
                ref
                    .read(clipsNotifierProvider(account).notifier)
                    .create(
                      name: result.name ?? '',
                      description: result.description,
                      isPublic: result.isPublic,
                    ),
              );
            }
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
