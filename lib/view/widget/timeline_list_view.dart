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
import '../../provider/streaming/incoming_message_provider.dart';
import '../../provider/streaming/timeline_stream_notifier.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_last_viewed_note_id_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../util/reload_timeline.dart';
import 'notifications_list_view.dart';
import 'pagination_bottom_widget.dart';
import 'timeline_note.dart';

class TimelineListView extends HookConsumerWidget {
  const TimelineListView({
    super.key,
    required this.tabSettings,
    this.nested = false,
    this.focusPostForm,
    this.lastViewedAtKey,
  });

  final TabSettings tabSettings;
  final bool nested;
  final void Function()? focusPostForm;
  final Key? lastViewedAtKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = nested
        ? PrimaryScrollController.of(context)
        : ref.watch(timelineScrollControllerProvider(tabSettings));
    if (tabSettings.tabType == TabType.notifications) {
      return NotificationsListView(
        account: tabSettings.account,
        controller: controller,
      );
    }
    final lastViewedNoteId =
        ref.watch(timelineLastViewedNoteIdNotifierProvider(tabSettings));
    final centerId = ref.watch(timelineCenterNotifierProvider(tabSettings));
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final nextNotes = ref.watch(
      timelineNotesAfterNoteNotifierProvider(tabSettings, sinceId: centerId),
    );
    final isLatestLoaded = nextNotes.valueOrNull?.isLastLoaded ?? false;
    final previousNotes = ref
        .watch(timelineNotesNotifierProvider(tabSettings, untilId: centerId));
    final showPopup = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.showPopupOnNewNote),
    );
    final vibrateOnNote = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.vibrateNote),
    );
    final keepAnimation = useState(true);
    final isAtTop = useState(false);
    final isAtBottom = useState(false);
    if (!tabSettings.disableStreaming) {
      ref.listen(incomingMessageProvider(tabSettings.account), (_, __) {});
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
          if (centerId == null || isLatestLoaded) {
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
              if (controller.offset < 400.0) {
                ref
                    .read(
                      timelineLastViewedNoteIdNotifierProvider(tabSettings)
                          .notifier,
                    )
                    .save(note.id);
                Future<void>.delayed(const Duration(milliseconds: 100),
                    () async {
                  await controller.scrollToTop();
                  await Future<void>.delayed(
                    const Duration(milliseconds: 100),
                    controller.scrollToTop,
                  );
                });
              } else {
                keepAnimation.value = false;
                hasUnread.value = true;
              }
            } else {
              hasUnread.value = true;
            }
          }
        });
      });
    }
    useEffect(
      () {
        void callback() {
          if (centerId != null) {
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
                isAtTop.value = true;
              }
            } else {
              isAtTop.value = false;
            }
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
              isAtBottom.value = true;
            }
          } else {
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
    useEffect(
      () {
        void callback() {
          if (controller.position.extentBefore < 400.0) {
            final nextNotes = ref
                .read(
                  timelineNotesAfterNoteNotifierProvider(
                    tabSettings,
                    sinceId: centerId,
                  ),
                )
                .valueOrNull
                ?.items;
            final latestNoteId = nextNotes?.firstOrNull?.id;
            if (latestNoteId != null &&
                (lastViewedNoteId == null ||
                    lastViewedNoteId.compareTo(latestNoteId) < 0)) {
              ref
                  .read(
                    timelineLastViewedNoteIdNotifierProvider(
                      tabSettings,
                    ).notifier,
                  )
                  .save(latestNoteId);
            }
          }
        }

        if (tabSettings.keepPosition) {
          controller.addListener(callback);
        }
        return () => controller.removeListener(callback);
      },
      [centerId],
    );

    return RefreshIndicator(
      onRefresh: () => reloadTimeline(ref, tabSettings),
      notificationPredicate: (_) =>
          nextNotes.valueOrNull?.isLastLoaded ?? false,
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 800.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomScrollView(
                controller: nested ? null : controller,
                center: centerKey,
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
                          color: Theme.of(context).colorScheme.surface,
                        ),
                        child: const SizedBox(height: 8.0),
                      ),
                    ),
                  SliverList.separated(
                    itemBuilder: (context, index) {
                      final note = nextNotes.valueOrNull!.items[
                          nextNotes.valueOrNull!.items.length - index - 1];
                      return Material(
                        color: Theme.of(context).colorScheme.surface,
                        child: TimelineNote(
                          key: ValueKey(note.id),
                          tabSettings: tabSettings,
                          noteId: note.id,
                          focusPostForm: focusPostForm,
                        ),
                      );
                    },
                    separatorBuilder: (_, __) => const Divider(height: 1.0),
                    itemCount: nextNotes.valueOrNull?.items.length ?? 0,
                  ),
                  if (previousNotes.valueOrNull?.items.firstOrNull?.id
                      case final previousNoteId?)
                    if (nextNotes.valueOrNull?.items.lastOrNull?.id
                        case final nextNoteId?)
                      SliverToBoxAdapter(
                        child: lastViewedNoteId != null &&
                                previousNoteId.compareTo(lastViewedNoteId) <=
                                    0 &&
                                lastViewedNoteId.compareTo(nextNoteId) < 0
                            ? _NewNotesDivider(key: lastViewedAtKey)
                            : const Divider(height: 1.0),
                      ),
                  SliverList.separated(
                    key: centerKey,
                    itemBuilder: (context, index) {
                      final note = previousNotes.valueOrNull!.items[index];
                      return Material(
                        color: Theme.of(context).colorScheme.surface,
                        child: TimelineNote(
                          key: ValueKey(note.id),
                          tabSettings: tabSettings,
                          noteId: note.id,
                          focusPostForm: focusPostForm,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      if (lastViewedNoteId != null) {
                        if (previousNotes.valueOrNull?.items
                                .elementAtOrNull(index + 1)
                                ?.id
                            case final previousNoteId?
                            when previousNoteId.compareTo(lastViewedNoteId) <=
                                0) {
                          if (previousNotes.valueOrNull?.items
                                  .elementAtOrNull(index)
                                  ?.id
                              case final nextNoteId?
                              when lastViewedNoteId.compareTo(nextNoteId) < 0) {
                            return _NewNotesDivider(key: lastViewedAtKey);
                          }
                        }
                      }
                      return const Divider(height: 0.0);
                    },
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
                          color: Theme.of(context).colorScheme.surface,
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
                  const SliverToBoxAdapter(child: SizedBox(height: 160.0)),
                ],
              ),
            ),
            if (hasUnread.value && showPopup)
              Positioned(
                top: 8.0,
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

class _NewNotesDivider extends ConsumerWidget {
  const _NewNotesDivider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 2.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Text(
              t.aria.newNotes,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Expanded(
            child: Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 2.0,
            ),
          ),
        ],
      ),
    );
  }
}
