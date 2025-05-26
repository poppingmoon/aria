import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constant/inifite_scroll_extent_threshold.dart';
import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/tab_settings.dart';
import '../../../model/tab_type.dart';
import '../../../provider/api/timeline_notes_notifier_provider.dart';
import '../../../provider/general_settings_notifier_provider.dart';
import '../../widget/error_message.dart';
import '../../widget/media_card.dart';
import '../../widget/pagination_bottom_widget.dart';

class UserFiles extends HookConsumerWidget {
  const UserFiles({super.key, required this.account, required this.userId});

  final Account account;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = TabSettings(
      tabType: TabType.user,
      account: account,
      withFiles: true,
      userId: userId,
    );
    final notes = ref.watch(timelineNotesNotifierProvider(tabSettings));
    final enableInfiniteScroll = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => settings.enableInfiniteScroll,
      ),
    );
    final controller = useScrollController();
    final isAtBottom = useState(false);
    useEffect(() {
      void callback() {
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
          if (!isAtBottom.value) {
            ref
                .read(timelineNotesNotifierProvider(tabSettings).notifier)
                .loadMore();
            isAtBottom.value = true;
          }
        } else {
          isAtBottom.value = false;
        }
      }

      if (enableInfiniteScroll) {
        controller.addListener(callback);
      }
      return () {
        if (enableInfiniteScroll) {
          controller.removeListener(callback);
        }
      };
    }, []);
    if (enableInfiniteScroll) {
      ref.listen(
        timelineNotesNotifierProvider(
          tabSettings,
        ).select((notes) => notes.valueOrNull),
        (prev, next) {
          if ((prev?.items.length ?? 0) < (next?.items.length ?? 0) ||
              ((prev?.isLastLoaded ?? false) &&
                  (!(next?.isLastLoaded ?? true)))) {
            Future.delayed(const Duration(milliseconds: 10), () {
              if (controller.position.extentAfter <
                  infiniteScrollExtentThreshold) {
                ref
                    .read(timelineNotesNotifierProvider(tabSettings).notifier)
                    .loadMore();
              }
            });
          }
        },
      );
    }

    return RefreshIndicator(
      onRefresh: () =>
          ref.refresh(timelineNotesNotifierProvider(tabSettings).future),
      child: switch (notes) {
        AsyncValue(valueOrNull: final value?) =>
          value.items.isEmpty
              ? LayoutBuilder(
                  builder: (context, constraint) => SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: constraint.maxHeight,
                      child: Center(child: Text(t.misskey.nothing)),
                    ),
                  ),
                )
              : CustomScrollView(
                  controller: controller,
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: SliverGrid.extent(
                        maxCrossAxisExtent: 300.0,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        children: [
                          for (final note in value.items)
                            for (final (index, _) in note.files.indexed)
                              MediaCard(
                                account: account,
                                files: note.files,
                                index: index,
                                user: note.user,
                                noteId: note.id,
                              ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: PaginationBottomWidget(
                        paginationState: notes,
                        loadMore: () => ref
                            .read(
                              timelineNotesNotifierProvider(
                                tabSettings,
                              ).notifier,
                            )
                            .loadMore(skipError: true),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 120.0)),
                  ],
                ),
        AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ErrorMessage(error: error, stackTrace: stackTrace),
            ),
          ),
        ),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
