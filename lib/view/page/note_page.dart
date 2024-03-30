import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/tab_settings.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_provider.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/note_provider.dart';
import '../widget/note_detailed_widget.dart';
import '../widget/note_fallback_widget.dart';
import '../widget/note_widget.dart';
import '../widget/pagination_bottom_widget.dart';

class NotePage extends HookConsumerWidget {
  const NotePage({
    super.key,
    required this.account,
    required this.noteId,
  });

  final Account account;
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final centerKey = useMemoized(() => GlobalKey(), []);
    final note = ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return Scaffold(
        appBar: AppBar(title: Text(t.misskey.note)),
        body: NoteFallbackWidget(
          account: account,
          noteId: noteId,
        ),
      );
    }
    final remoteUrl = note.uri ?? note.url;
    final remoteNoteId = remoteUrl?.pathSegments.lastOrNull;
    final isChannelNote = note.channelId != null;
    final showUserNextNotes = useState(false);
    final showTimelineNextNotes = useState(false);
    final showNextNotes =
        showTimelineNextNotes.value || showUserNextNotes.value;
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaProvider(account)).valueOrNull;
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
    final nextNotes =
        nextNotesState?.valueOrNull?.items.reversed.toList() ?? [];
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
    final previousNotes = previousNotesState?.valueOrNull?.items ?? [];
    final controller = useScrollController();
    useEffect(
      () {
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
      },
      [],
    );
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.note)),
      body: CustomScrollView(
        controller: controller,
        center: centerKey,
        slivers: [
          if (nextNotesState != null) ...[
            SliverToBoxAdapter(
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
            SliverList.separated(
              itemBuilder: (context, index) => NoteWidget(
                account: account,
                noteId: nextNotes[index].id,
              ),
              separatorBuilder: (context, index) => const Divider(height: 0),
              itemCount: nextNotes.length,
            ),
            const SliverToBoxAdapter(child: Divider()),
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
                ? Card(
                    margin: const EdgeInsets.all(8.0),
                    color: colors.infoWarnBg,
                    elevation: 0.0,
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                onPressed: () => launchUrl(
                                  remoteUrl,
                                  mode: LaunchMode.externalApplication,
                                ),
                                child: Text(t.misskey.showOnRemote),
                              ),
                              if (remoteNoteId != null)
                                TextButton(
                                  onPressed: () {
                                    ref
                                        .read(
                                          emojisNotifierProvider(
                                            remoteUrl.host,
                                          ).notifier,
                                        )
                                        .fetchIfNeeded();
                                    context.push(
                                      '/${remoteUrl.host}/notes/$remoteNoteId',
                                    );
                                  },
                                  child: Text(t.aria.openAsGuest),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          SliverToBoxAdapter(
            child: NoteDetailedWidget(
              account: account,
              noteId: noteId,
            ),
          ),
          if (previousNotesState != null) ...[
            const SliverToBoxAdapter(child: Divider()),
            SliverList.separated(
              itemBuilder: (context, index) => NoteWidget(
                account: account,
                noteId: previousNotes[index].id,
              ),
              separatorBuilder: (context, index) => const Divider(height: 0),
              itemCount: previousNotes.length,
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
        ],
      ),
    );
  }
}
