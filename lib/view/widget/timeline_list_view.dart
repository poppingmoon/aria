import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/scroll_controller_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/timeline_stream_notifier.dart';
import '../../provider/streaming/web_socket_channel_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
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
    final controller = ref.watch(timelineScrollControllerProvider(tabSettings));
    final centerKey = useMemoized(() => GlobalKey(), []);
    final hasUnread = useState(false);
    final nextNotes =
        ref.watch(timelineNotesAfterNoteNotifierProvider(tabSettings));
    final previousNotes = ref.watch(timelineNotesNotifierProvider(tabSettings));
    final vibrateOnNote = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.vibrateNote),
    );
    final keepAnimation = useState(true);
    final isAtBottom = useState(false);
    if (!tabSettings.disableStreaming) {
      final notifier =
          ref.watch(timelineStreamNotifierProvider(tabSettings).notifier);
      useEffect(
        () {
          notifier.connect();
          controller.addListener(() {
            if (controller.position.userScrollDirection ==
                ScrollDirection.reverse) {
              keepAnimation.value = false;
            } else if (controller.position.extentBefore == 0) {
              keepAnimation.value = true;
              hasUnread.value = false;
            }
          });
          return notifier.disconnect;
        },
        [],
      );
      ref.listen(timelineStreamNotifierProvider(tabSettings), (_, next) {
        next.whenData((note) {
          ref
              .read(
                timelineNotesAfterNoteNotifierProvider(tabSettings).notifier,
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
        if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
          controller.addListener(() {
            if (controller.position.extentAfter < 100) {
              if (!isAtBottom.value) {
                ref
                    .read(timelineNotesNotifierProvider(tabSettings).notifier)
                    .loadMore();
              }
            } else if (isAtBottom.value) {
              isAtBottom.value = false;
            }
          });
        }
        return;
      },
      [],
    );

    return RefreshIndicator(
      onRefresh: () async {
        if (!tabSettings.disableStreaming) {
          ref.invalidate(webSocketChannelProvider(tabSettings.account));
        }
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
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomScrollView(
            center: centerKey,
            controller: controller,
            slivers: [
              SliverToBoxAdapter(
                child: PaginationBottomWidget(
                  paginationState: nextNotes,
                  loadMore: () => ref
                      .read(timelineNotesNotifierProvider(tabSettings).notifier)
                      .loadMore(skipError: true),
                  reversed: true,
                ),
              ),
              SliverList.separated(
                itemBuilder: (context, index) => TimelineNote(
                  tabSettings: tabSettings,
                  noteId: nextNotes
                      .valueOrNull!
                      .items[nextNotes.valueOrNull!.items.length - index - 1]
                      .id,
                  postFormFocusNode: postFormFocusNode,
                ),
                separatorBuilder: (_, __) => const Divider(height: 0),
                itemCount: nextNotes.valueOrNull?.items.length ?? 0,
              ),
              SliverToBoxAdapter(
                key: centerKey,
                child: const Divider(height: 1),
              ),
              SliverList.separated(
                itemBuilder: (context, index) => TimelineNote(
                  tabSettings: tabSettings,
                  noteId: previousNotes.valueOrNull!.items[index].id,
                  postFormFocusNode: postFormFocusNode,
                ),
                separatorBuilder: (_, __) => const Divider(height: 0),
                itemCount: previousNotes.valueOrNull?.items.length ?? 0,
              ),
              SliverToBoxAdapter(
                child: PaginationBottomWidget(
                  paginationState: previousNotes,
                  noItemsLabel: t.misskey.noNotes,
                  loadMore: () => ref
                      .read(timelineNotesNotifierProvider(tabSettings).notifier)
                      .loadMore(skipError: true),
                ),
              ),
            ],
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
                      timelineNotesAfterNoteNotifierProvider(tabSettings),
                    );
                    ref.invalidate(timelineNotesNotifierProvider(tabSettings));
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
