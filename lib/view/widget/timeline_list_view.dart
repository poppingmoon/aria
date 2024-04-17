import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/streaming/timeline_stream_notifier.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import 'notifications_list_view.dart';
import 'pagination_bottom_widget.dart';
import 'timeline_note.dart';

class TimelineListView extends HookConsumerWidget {
  const TimelineListView({
    super.key,
    required this.tabSettings,
    this.postFormFocusNode,
  });

  final TabSettings tabSettings;
  final FocusNode? postFormFocusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (tabSettings.tabType == TabType.notifications) {
      return NotificationsListView(account: tabSettings.account);
    }
    final controller = ref.watch(timelineScrollControllerProvider(tabSettings));
    final centerId = ref.watch(timelineCenterNotifierProvider(tabSettings));
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final nextNotes = ref.watch(
      timelineNotesAfterNoteNotifierProvider(tabSettings, sinceId: centerId),
    );
    final isLatestLoaded = nextNotes.valueOrNull?.isLastLoaded ?? false;
    final previousNotes = ref
        .watch(timelineNotesNotifierProvider(tabSettings, untilId: centerId));
    final vibrateOnNote = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.vibrateNote),
    );
    final keepAnimation = useState(true);
    final isAtTop = useState(false);
    final isAtBottom = useState(false);
    if (!tabSettings.disableStreaming) {
      final notifier =
          ref.watch(timelineStreamNotifierProvider(tabSettings).notifier);
      useEffect(
        () {
          void callback() {
            if (controller.position.userScrollDirection ==
                ScrollDirection.reverse) {
              keepAnimation.value = false;
            } else if (controller.position.extentBefore == 0) {
              keepAnimation.value = true;
              hasUnread.value = false;
            }
          }

          if (centerId == null || isLatestLoaded) {
            notifier.connect();
            controller.addListener(callback);
          }
          return () {
            notifier.disconnect();
            controller.removeListener(callback);
          };
        },
        [centerId, isLatestLoaded],
      );
      ref.listen(timelineStreamNotifierProvider(tabSettings), (_, next) {
        next.whenData((note) {
          ref
              .read(
                timelineNotesAfterNoteNotifierProvider(
                  tabSettings,
                  sinceId: centerId,
                ).notifier,
              )
              .addNote(note);
          if (vibrateOnNote) {
            HapticFeedback.lightImpact();
          }
          if (keepAnimation.value) {
            Future<void>.delayed(
              const Duration(milliseconds: 100),
              controller.scrollToTop,
            );
          } else {
            hasUnread.value = true;
          }
        });
      });
    }
    useEffect(
      () {
        void callback() {
          if (controller.position.extentBefore < 100) {
            if (!isAtTop.value) {
              ref
                  .read(
                    timelineNotesAfterNoteNotifierProvider(
                      tabSettings,
                      sinceId: centerId,
                    ).notifier,
                  )
                  .loadMore();
            }
          } else if (isAtTop.value) {
            isAtTop.value = false;
          }
          if (controller.position.extentAfter < 100) {
            if (!isAtBottom.value) {
              ref
                  .read(
                    timelineNotesNotifierProvider(
                      tabSettings,
                      untilId: centerId,
                    ).notifier,
                  )
                  .loadMore();
            }
          } else if (isAtBottom.value) {
            isAtBottom.value = false;
          }
        }

        if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
          controller.addListener(callback);
        }
        return () => controller.removeListener(callback);
      },
      [centerId],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return RefreshIndicator(
      onRefresh: () async {
        if (!tabSettings.disableStreaming) {
          ref.invalidate(webSocketChannelProvider(tabSettings.account));
        }
        ref.read(timelineCenterNotifierProvider(tabSettings).notifier).reset();
        await Future.wait([
          ref.refresh(
            timelineNotesAfterNoteNotifierProvider(tabSettings).future,
          ),
          ref.refresh(timelineNotesNotifierProvider(tabSettings).future),
          if (!tabSettings.disableStreaming)
            ref
                .read(timelineStreamNotifierProvider(tabSettings).notifier)
                .connect(),
        ]);
      },
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 800.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomScrollView(
                center: centerKey,
                controller: controller,
                slivers: [
                  SliverToBoxAdapter(
                    child: PaginationBottomWidget(
                      paginationState: nextNotes,
                      loadMore: () => ref
                          .read(
                            timelineNotesAfterNoteNotifierProvider(
                              tabSettings,
                              sinceId: centerId,
                            ).notifier,
                          )
                          .loadMore(skipError: true),
                      reversed: true,
                    ),
                  ),
                  if ((nextNotes.valueOrNull?.items.isNotEmpty ?? false) ||
                      (previousNotes.valueOrNull?.items.isNotEmpty ?? false))
                    SliverToBoxAdapter(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          color: colors.panel,
                        ),
                        child: const SizedBox(height: 8.0),
                      ),
                    ),
                  SliverList.separated(
                    itemBuilder: (context, index) => Material(
                      color: colors.panel,
                      child: TimelineNote(
                        tabSettings: tabSettings,
                        noteId: nextNotes
                            .valueOrNull!
                            .items[
                                nextNotes.valueOrNull!.items.length - index - 1]
                            .id,
                        postFormFocusNode: postFormFocusNode,
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 1.0),
                    itemCount: nextNotes.valueOrNull?.items.length ?? 0,
                  ),
                  if ((nextNotes.valueOrNull?.items.isNotEmpty ?? false) &&
                      (previousNotes.valueOrNull?.items.isNotEmpty ?? false))
                    const SliverToBoxAdapter(child: Divider(height: 1.0)),
                  SliverList.separated(
                    key: centerKey,
                    itemBuilder: (context, index) => Material(
                      color: colors.panel,
                      child: TimelineNote(
                        tabSettings: tabSettings,
                        noteId: previousNotes.valueOrNull!.items[index].id,
                        postFormFocusNode: postFormFocusNode,
                      ),
                    ),
                    separatorBuilder: (_, __) => const Divider(height: 0.0),
                    itemCount: previousNotes.valueOrNull?.items.length ?? 0,
                  ),
                  if ((nextNotes.valueOrNull?.items.isNotEmpty ?? false) ||
                      (previousNotes.valueOrNull?.items.isNotEmpty ?? false))
                    SliverToBoxAdapter(
                      child: Container(
                        height: 8.0,
                        margin: const EdgeInsets.only(bottom: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: colors.panel,
                        ),
                      ),
                    ),
                  SliverToBoxAdapter(
                    child: PaginationBottomWidget(
                      paginationState: previousNotes,
                      noItemsLabel: t.misskey.noNotes,
                      loadMore: () => ref
                          .read(
                            timelineNotesNotifierProvider(
                              tabSettings,
                              untilId: centerId,
                            ).notifier,
                          )
                          .loadMore(skipError: true),
                    ),
                  ),
                ],
              ),
            ),
            if (hasUnread.value)
              Positioned(
                top: 16.0,
                child: ElevatedButton(
                  onPressed: () {
                    if (controller.position.extentBefore < 10000) {
                      controller.scrollToTop();
                      keepAnimation.value = true;
                    } else {
                      ref.invalidate(
                        timelineNotesAfterNoteNotifierProvider(
                          tabSettings,
                          sinceId: centerId,
                        ),
                      );
                      ref.invalidate(
                        timelineNotesNotifierProvider(
                          tabSettings,
                          untilId: centerId,
                        ),
                      );
                      keepAnimation.value = true;
                    }
                    hasUnread.value = false;
                  },
                  child: Text(t.misskey.newNoteRecived),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
