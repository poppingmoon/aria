import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constant/max_content_width.dart';
import '../../extension/note_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/children_notes_notifier_provider.dart';
import '../../provider/api/conversation_notes_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../widget/note_detailed_widget.dart';
import '../widget/note_fallback_widget.dart';
import '../widget/note_widget.dart';
import '../widget/pagination_bottom_widget.dart';

class NotePage extends HookConsumerWidget {
  const NotePage({super.key, required this.account, required this.noteId});

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(t.misskey.note),
          actions: [
            IconButton(
              tooltip: t.misskey.reload,
              onPressed: () async {
                await futureWithDialog(
                  context,
                  ref
                      .read(notesNotifierProvider(account).notifier)
                      .show(noteId),
                );
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: maxContentWidth,
            child: NoteFallbackWidget(account: account, noteId: noteId),
          ),
        ),
      );
    }

    final centerKey = useMemoized(() => GlobalKey(), []);
    final remoteUrl = note.uri ?? note.url;
    final remoteNoteId = remoteUrl?.pathSegments
        .where((segment) => segment != 'activity')
        .lastOrNull;
    final isChannelNote = note.channelId != null;
    final showUserNextNotes = useState(false);
    final showTimelineNextNotes = useState(false);
    final showNextNotes =
        showTimelineNextNotes.value || showUserNextNotes.value;
    final i = ref.watch(iNotifierProvider(account)).value;
    final meta = ref.watch(metaNotifierProvider(account.host)).value;
    final ltlAvailable =
        i?.policies?.ltlAvailable ?? meta?.policies?.ltlAvailable ?? true;
    final gtlAvailable =
        i?.policies?.ltlAvailable ?? meta?.policies?.ltlAvailable ?? true;
    final tabSettings = isChannelNote
        ? TabSettings.channel(account, note.channelId!)
        : ltlAvailable && note.user.host == null
        ? TabSettings.localTimeline(account)
        : gtlAvailable
        ? TabSettings.globalTimeline(account)
        : !account.isGuest
        ? TabSettings.homeTimeline(account)
        : null;
    final nextNotesState = showNextNotes
        ? ref.watch(
            timelineNotesAfterNoteNotifierProvider(
              showTimelineNextNotes.value && tabSettings != null
                  ? tabSettings
                  : TabSettings.user(account, note.userId),
              sinceId: noteId,
            ),
          )
        : null;
    final showUserPreviousNotes = useState(false);
    final showTimelinePreviousNotes = useState(false);
    final showPreviousNotes =
        showTimelinePreviousNotes.value || showUserPreviousNotes.value;
    final previousNotesState = showPreviousNotes
        ? ref.watch(
            timelineNotesNotifierProvider(
              showTimelinePreviousNotes.value && tabSettings != null
                  ? tabSettings
                  : TabSettings.user(account, note.userId),
              untilId: noteId,
            ),
          )
        : null;
    final controller = useScrollController();
    useEffect(() {
      if (ref.read(generalSettingsNotifierProvider).enableInfiniteScroll) {
        controller.addListener(() {
          if ((showTimelineNextNotes.value || showUserNextNotes.value) &&
              controller.position.extentBefore < 100) {
            ref
                .read(
                  timelineNotesAfterNoteNotifierProvider(
                    showTimelineNextNotes.value && tabSettings != null
                        ? tabSettings
                        : TabSettings.user(account, note.userId),
                    sinceId: noteId,
                  ).notifier,
                )
                .loadMore();
          } else if ((showTimelinePreviousNotes.value ||
                  showUserPreviousNotes.value) &&
              controller.position.extentAfter < 100) {
            ref
                .read(
                  timelineNotesNotifierProvider(
                    showTimelinePreviousNotes.value && tabSettings != null
                        ? tabSettings
                        : TabSettings.user(account, note.userId),
                    untilId: noteId,
                  ).notifier,
                )
                .loadMore();
          }
        });
      }
      return;
    }, []);
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(t.misskey.note),
        actions: [
          IconButton(
            tooltip: t.misskey.reload,
            onPressed: () async {
              final appearNoteId = note.isRenote ? note.renoteId : note.id;
              if (appearNoteId != null) {
                ref.invalidate(
                  conversationNotesProvider(account, appearNoteId),
                );
                ref.invalidate(
                  childrenNotesNotifierProvider(account, appearNoteId),
                );
              }
              await futureWithDialog(
                context,
                ref.read(notesNotifierProvider(account).notifier).show(noteId),
              );
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: CustomScrollView(
        controller: controller,
        center: centerKey,
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 4.0)),
          if (nextNotesState != null) ...[
            SliverToBoxAdapter(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: maxContentWidth,
                  child: PaginationBottomWidget(
                    paginationState: nextNotesState,
                    loadMore: () => ref
                        .read(
                          timelineNotesAfterNoteNotifierProvider(
                            showTimelineNextNotes.value && tabSettings != null
                                ? tabSettings
                                : TabSettings.user(account, note.userId),
                            sinceId: noteId,
                          ).notifier,
                        )
                        .loadMore(skipError: true),
                    reversed: true,
                  ),
                ),
              ),
            ),
            if (nextNotesState.value?.items case final notes?
                when notes.isNotEmpty)
              SliverList.separated(
                itemBuilder: (context, index) => Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8.0,
                      top: index == notes.length - 1 ? 4.0 : 0.0,
                      right: 8.0,
                      bottom: index == 0 ? 4.0 : 0.0,
                    ),
                    width: maxContentWidth,
                    child: NoteWidget(
                      account: account,
                      noteId: notes[notes.length - index - 1].id,
                      borderRadius: BorderRadius.vertical(
                        top: index == notes.length - 1
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                        bottom: index == 0
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: maxContentWidth,
                      child: Divider(height: 1.0),
                    ),
                  ),
                ),
                itemCount: notes.length,
              ),
          ] else
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (tabSettings != null)
                    IconButton(
                      onPressed: () => showTimelineNextNotes.value = true,
                      icon: Row(
                        children: [
                          const Icon(Icons.keyboard_arrow_up),
                          if (isChannelNote)
                            const Icon(Icons.tv)
                          else
                            const Icon(Icons.timeline),
                        ],
                      ),
                    ),
                  IconButton(
                    onPressed: () => showUserNextNotes.value = true,
                    icon: const Row(
                      children: [
                        Icon(Icons.keyboard_arrow_up),
                        Icon(Icons.person),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          SliverToBoxAdapter(
            key: centerKey,
            child: remoteUrl != null
                ? Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4.0,
                        horizontal: 8.0,
                      ),
                      width: maxContentWidth,
                      child: Card.filled(
                        color: colors.infoWarnBg,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.warning,
                                          color: colors.infoWarnFg,
                                        ),
                                      ),
                                      TextSpan(
                                        text: t.misskey.remoteUserCaution,
                                        style: TextStyle(
                                          color: colors.infoWarnFg,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Wrap(
                                children: [
                                  TextButton(
                                    onPressed: () => launchUrl(ref, remoteUrl),
                                    child: Text(t.misskey.showOnRemote),
                                  ),
                                  if (remoteNoteId != null)
                                    TextButton(
                                      onPressed: () => context.push(
                                        '/${remoteUrl.host}/notes/$remoteNoteId',
                                      ),
                                      child: Text(t.aria.openAsGuest),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : null,
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                width: maxContentWidth,
                child: Card.filled(
                  color: colors.panel,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.hardEdge,
                  child: NoteDetailedWidget(account: account, noteId: noteId),
                ),
              ),
            ),
          ),
          if (previousNotesState != null) ...[
            if (previousNotesState.value?.items case final notes?
                when notes.isNotEmpty)
              SliverList.separated(
                itemBuilder: (context, index) => Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8.0,
                      top: index == 0 ? 4.0 : 0.0,
                      right: 8.0,
                      bottom: index == notes.length - 1 ? 4.0 : 0.0,
                    ),
                    width: maxContentWidth,
                    child: NoteWidget(
                      account: account,
                      noteId: notes[index].id,
                      borderRadius: BorderRadius.vertical(
                        top: index == 0
                            ? const Radius.circular(8.0)
                            : Radius.zero,
                        bottom: index == notes.length - 1
                            ? const Radius.circular(8.0)
                            : Radius.zero,
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
                itemCount: notes.length,
              ),
            SliverToBoxAdapter(
              child: PaginationBottomWidget(
                paginationState: previousNotesState,
                loadMore: () => ref
                    .read(
                      timelineNotesNotifierProvider(
                        showTimelinePreviousNotes.value && tabSettings != null
                            ? tabSettings
                            : TabSettings.user(account, note.userId),
                        untilId: noteId,
                      ).notifier,
                    )
                    .loadMore(skipError: true),
              ),
            ),
          ] else
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (tabSettings != null)
                    IconButton(
                      onPressed: () => showTimelinePreviousNotes.value = true,
                      icon: Row(
                        children: [
                          const Icon(Icons.keyboard_arrow_down),
                          if (isChannelNote)
                            const Icon(Icons.tv)
                          else
                            const Icon(Icons.timeline),
                        ],
                      ),
                    ),
                  IconButton(
                    onPressed: () => showUserPreviousNotes.value = true,
                    icon: const Row(
                      children: [
                        Icon(Icons.keyboard_arrow_down),
                        Icon(Icons.person),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const SliverToBoxAdapter(child: SizedBox(height: 4.0)),
        ],
      ),
    );
  }
}
