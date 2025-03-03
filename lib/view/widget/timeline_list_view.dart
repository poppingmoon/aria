import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/inifite_scroll_extent_threshold.dart';
import '../../constant/max_content_width.dart';
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

  @visibleForTesting
  int? getNewNoteDividerIndex({
    required String lastViewedNoteId,
    List<Note>? nextNotes,
    List<Note>? previousNotes,
    int? newNoteDividerIndex,
  }) {
    if (nextNotes != null) {
      final oldestNextNoteId = nextNotes.lastOrNull?.id;
      final latestNextNoteId = nextNotes.firstOrNull?.id;
      if (latestNextNoteId != null && oldestNextNoteId != null) {
        if (oldestNextNoteId.compareTo(lastViewedNoteId) <= 0) {
          if (lastViewedNoteId.compareTo(latestNextNoteId) < 0) {
            if (newNoteDividerIndex case final newNoteDividerIndex?
                when newNoteDividerIndex < 0) {
              final index = -newNoteDividerIndex - 1;
              if (nextNotes.elementAtOrNull(index + 1)?.id
                  case final previousNoteId?
                  when previousNoteId.compareTo(lastViewedNoteId) <= 0) {
                if (nextNotes.elementAtOrNull(index)?.id case final nextNoteId?
                    when lastViewedNoteId.compareTo(nextNoteId) < 0) {
                  return newNoteDividerIndex;
                }
              }
            }
            final index = nextNotes.lastIndexWhere(
              (note) => lastViewedNoteId.compareTo(note.id) < 0,
            );
            if (0 <= index && index < nextNotes.length - 1) {
              return nextNotes.length - index - 1;
            }
          }
        } else if (previousNotes?.firstOrNull?.id
            case final latestPreviousNoteId?
            when latestPreviousNoteId.compareTo(lastViewedNoteId) <= 0) {
          return 0;
        }
      }
    }
    if (previousNotes != null) {
      if (previousNotes.lastOrNull?.id case final oldestPreviousNoteId?
          when oldestPreviousNoteId.compareTo(lastViewedNoteId) <= 0) {
        if (previousNotes.firstOrNull?.id case final latestPreviousNoteId?
            when lastViewedNoteId.compareTo(latestPreviousNoteId) < 0) {
          if (newNoteDividerIndex case final newNoteDividerIndex?
              when newNoteDividerIndex > 0) {
            final index = newNoteDividerIndex - 1;
            if (previousNotes.elementAtOrNull(index + 1)?.id
                case final previousNoteId?
                when previousNoteId.compareTo(lastViewedNoteId) <= 0) {
              if (previousNotes.elementAtOrNull(index)?.id
                  case final nextNoteId?
                  when lastViewedNoteId.compareTo(nextNoteId) < 0) {
                return newNoteDividerIndex;
              }
            }
          }
          final index = previousNotes.lastIndexWhere(
            (note) => lastViewedNoteId.compareTo(note.id) < 0,
          );
          if (0 <= index && index < previousNotes.length - 1) {
            return -index - 1;
          }
        }
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller =
        nested
            ? PrimaryScrollController.of(context)
            : ref.watch(timelineScrollControllerProvider(tabSettings));
    if (tabSettings.tabType == TabType.notifications) {
      return NotificationsListView(
        account: tabSettings.account,
        controller: controller,
      );
    }
    final lastViewedNoteId = ref.watch(
      timelineLastViewedNoteIdNotifierProvider(tabSettings),
    );
    final centerId = ref.watch(timelineCenterNotifierProvider(tabSettings));
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final nextNotes = ref.watch(
      timelineNotesAfterNoteNotifierProvider(tabSettings, sinceId: centerId),
    );
    final hasNextNote = nextNotes.valueOrNull?.items.isNotEmpty ?? false;
    final isLatestLoaded = nextNotes.valueOrNull?.isLastLoaded ?? false;
    final previousNotes = ref.watch(
      timelineNotesNotifierProvider(tabSettings, untilId: centerId),
    );
    final hasPreviousNote =
        previousNotes.valueOrNull?.items.isNotEmpty ?? false;
    final (showGap, showPopup, vibrateOnNote) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.showGapBetweenNotesInTimeline,
          settings.showPopupOnNewNote,
          settings.vibrateNote,
        ),
      ),
    );
    final newNoteDividerIndex = useState<int?>(null);
    useEffect(() {
      if (lastViewedNoteId != null) {
        final index = getNewNoteDividerIndex(
          lastViewedNoteId: lastViewedNoteId,
          nextNotes: nextNotes.valueOrNull?.items,
          previousNotes: previousNotes.valueOrNull?.items,
          newNoteDividerIndex: newNoteDividerIndex.value,
        );
        if (index != null) {
          newNoteDividerIndex.value = index;
        }
      }
      return;
    }, [nextNotes.valueOrNull?.items, previousNotes.valueOrNull?.items]);
    final keepAnimation = useState(true);
    final isAtTop = useState(false);
    final isAtBottom = useState(false);
    if (!tabSettings.disableStreaming) {
      ref.listen(incomingMessageProvider(tabSettings.account), (_, _) {});
      final notifier = ref.watch(
        timelineStreamNotifierProvider(tabSettings).notifier,
      );
      useEffect(() {
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
      }, [centerId, isLatestLoaded]);
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
                      timelineLastViewedNoteIdNotifierProvider(
                        tabSettings,
                      ).notifier,
                    )
                    .save(note.id);
                Future<void>.delayed(
                  const Duration(milliseconds: 100),
                  () async {
                    await controller.scrollToTop();
                    await Future<void>.delayed(
                      const Duration(milliseconds: 100),
                      controller.scrollToTop,
                    );
                  },
                );
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
    useEffect(() {
      void callback() {
        if (centerId != null) {
          if (controller.position.extentBefore <
              infiniteScrollExtentThreshold) {
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
        if (controller.position.extentAfter < infiniteScrollExtentThreshold) {
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
    }, [centerId]);
    useEffect(() {
      void callback() {
        if (controller.position.extentBefore < infiniteScrollExtentThreshold) {
          final nextNotes =
              ref
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
    }, [centerId]);

    return RefreshIndicator(
      onRefresh: () => reloadTimeline(ref, tabSettings),
      notificationPredicate:
          (_) => nextNotes.valueOrNull?.isLastLoaded ?? false,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomScrollView(
            controller: nested ? null : controller,
            center: centerKey,
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: PaginationBottomWidget(
                      paginationState: nextNotes,
                      loadMore:
                          () => ref
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
                ),
              ),
              if (nextNotes.valueOrNull?.items case final notes?)
                SliverList.separated(
                  itemBuilder: (context, index) {
                    final note = notes[notes.length - index - 1];
                    final isTop = index == notes.length - 1;
                    final isBottom = index == 0 && !hasPreviousNote;
                    final (
                      isBelowNewNote,
                      isAboveNewNote,
                    ) = switch (newNoteDividerIndex.value) {
                      final i? => (index == i - 1, index == i),
                      _ => (false, false),
                    };

                    return Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: switch ((showGap, isTop, isBelowNewNote)) {
                            (true, true, _) => 4.0,
                            (false, true, _) => 8.0,
                            (false, false, true) => 4.0,
                            _ => 0.0,
                          },
                          right: 8.0,
                          bottom: switch ((showGap, isBottom, isAboveNewNote)) {
                            (true, true, _) => 4.0,
                            (false, true, _) => 8.0,
                            (false, false, true) => 4.0,
                            _ => 0.0,
                          },
                        ),
                        width: maxContentWidth,
                        child: TimelineNote(
                          key: ValueKey(note.id),
                          tabSettings: tabSettings,
                          noteId: note.id,
                          focusPostForm: focusPostForm,
                          margin:
                              showGap
                                  ? const EdgeInsets.symmetric(vertical: 4.0)
                                  : EdgeInsets.zero,
                          borderRadius:
                              showGap
                                  ? BorderRadius.circular(8.0)
                                  : BorderRadius.vertical(
                                    top:
                                        isTop || isBelowNewNote
                                            ? const Radius.circular(8.0)
                                            : Radius.zero,
                                    bottom:
                                        isBottom || isAboveNewNote
                                            ? const Radius.circular(8.0)
                                            : Radius.zero,
                                  ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder:
                      (context, index) =>
                          !showGap
                              ? Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  width: maxContentWidth,
                                  child:
                                      newNoteDividerIndex.value != null &&
                                              index ==
                                                  newNoteDividerIndex.value! - 1
                                          ? _NewNotesDivider(
                                            key: lastViewedAtKey,
                                          )
                                          : const Divider(height: 1.0),
                                ),
                              )
                              : const SizedBox.shrink(),
                  itemCount: notes.length,
                ),
              SliverToBoxAdapter(
                key: centerKey,
                child:
                    hasNextNote && hasPreviousNote
                        ? Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            width: maxContentWidth,
                            child:
                                newNoteDividerIndex.value == 0
                                    ? _NewNotesDivider(key: lastViewedAtKey)
                                    : !showGap
                                    ? const Divider(height: 1.0)
                                    : null,
                          ),
                        )
                        : null,
              ),
              if (previousNotes.valueOrNull?.items case final notes?)
                SliverList.separated(
                  itemBuilder: (context, index) {
                    final note = notes[index];
                    final isTop = index == 0 && !hasNextNote;
                    final isBottom = index == notes.length - 1;
                    final (
                      isBelowNewNote,
                      isAboveNewNote,
                    ) = switch (newNoteDividerIndex.value) {
                      final i? => (index == -i, index == -i - 1),
                      _ => (false, false),
                    };

                    return Center(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          top: switch ((showGap, isTop, isBelowNewNote)) {
                            (true, true, _) => 4.0,
                            (false, true, _) => 8.0,
                            (false, false, true) => 4.0,
                            _ => 0.0,
                          },
                          right: 8.0,
                          bottom: switch ((showGap, isBottom, isAboveNewNote)) {
                            (true, true, _) => 4.0,
                            (false, true, _) => 8.0,
                            (false, false, true) => 4.0,
                            _ => 0.0,
                          },
                        ),
                        width: maxContentWidth,
                        child: TimelineNote(
                          key: ValueKey(note.id),
                          tabSettings: tabSettings,
                          noteId: note.id,
                          focusPostForm: focusPostForm,
                          margin:
                              showGap
                                  ? const EdgeInsets.symmetric(vertical: 4.0)
                                  : EdgeInsets.zero,
                          borderRadius:
                              showGap
                                  ? BorderRadius.circular(8.0)
                                  : BorderRadius.vertical(
                                    top:
                                        isTop || isBelowNewNote
                                            ? const Radius.circular(8.0)
                                            : Radius.zero,
                                    bottom:
                                        isBottom || isAboveNewNote
                                            ? const Radius.circular(8.0)
                                            : Radius.zero,
                                  ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder:
                      (context, index) =>
                          !showGap
                              ? Center(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  width: maxContentWidth,
                                  child:
                                      newNoteDividerIndex.value != null &&
                                              index ==
                                                  -newNoteDividerIndex.value! -
                                                      1
                                          ? _NewNotesDivider(
                                            key: lastViewedAtKey,
                                          )
                                          : const Divider(height: 0.0),
                                ),
                              )
                              : const SizedBox.shrink(),
                  itemCount: notes.length,
                ),
              SliverToBoxAdapter(
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    child: PaginationBottomWidget(
                      paginationState: previousNotes,
                      noItemsLabel: t.misskey.noNotes,
                      loadMore:
                          () => ref
                              .read(
                                timelineNotesNotifierProvider(
                                  tabSettings,
                                  untilId: centerId,
                                ).notifier,
                              )
                              .loadMore(skipError: true),
                      height: 120.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (hasUnread.value && showPopup)
            Positioned(
              top: 8.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    0.0,
                    DefaultTextStyle.of(context).style.fontSize! * 2.75,
                  ),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
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
    );
  }
}

class _NewNotesDivider extends ConsumerWidget {
  const _NewNotesDivider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = Theme.of(context).colorScheme.primary;

    return Row(
      children: [
        Expanded(child: Divider(color: color, thickness: 2.0)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            t.aria.newNotes,
            style: DefaultTextStyle.of(context).style
                .apply(color: color, fontSizeFactor: 0.9)
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(child: Divider(color: color, thickness: 2.0)),
      ],
    );
  }
}
