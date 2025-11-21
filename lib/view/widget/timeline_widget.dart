import 'package:flutter/material.dart' hide Notification;
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../extension/scroll_controller_extension.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/id.dart';
import '../../model/streaming/broadcast.dart' as broadcast;
import '../../model/streaming/main_event.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/broadcast_provider.dart';
import '../../provider/streaming/main_stream_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_last_viewed_at_provider.dart';
import '../../provider/timeline_last_viewed_note_id_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/format_datetime.dart';
import 'announcement_widget.dart';
import 'timeline_header.dart';
import 'timeline_list_view.dart';

class TimelineWidget extends HookConsumerWidget {
  const TimelineWidget({super.key, required this.tabIndex, this.focusPostForm});

  final int tabIndex;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = ref.watch(
      timelineTabsNotifierProvider.select((tabs) => tabs[tabIndex]),
    );
    final account = tabSettings.account;
    final i = ref.watch(iNotifierProvider(account)).value;
    final (vibrateOnNotification, showTimelineLastViewedAt) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.vibrateNotification, settings.showTimelineLastViewedAt),
      ),
    );
    final lastViewedNoteId = tabSettings.tabType != TabType.notifications
        ? ref.watch(timelineLastViewedNoteIdNotifierProvider(tabSettings))
        : null;
    final lastViewedAt = lastViewedNoteId != null
        ? ref.watch(timelineLastViewedAtProvider(tabSettings))
        : null;
    final centerId = ref.watch(timelineCenterNotifierProvider(tabSettings));
    final nextNoteId = tabSettings.tabType != TabType.notifications
        ? ref.watch(
            timelineNotesAfterNoteNotifierProvider(
              tabSettings,
              sinceId: centerId,
            ).select((notes) => notes.value?.items.firstOrNull?.id),
          )
        : null;
    final previousNoteId = tabSettings.tabType != TabType.notifications
        ? ref.watch(
            timelineNotesNotifierProvider(
              tabSettings,
              untilId: centerId != null
                  ? Id.tryParse(centerId)?.next().toString() ?? centerId
                  : null,
            ).select((notes) => notes.value?.items.firstOrNull?.id),
          )
        : null;
    final lastViewedAtKey = useMemoized(() => GlobalKey(), []);
    final scrollController = ref.watch(
      timelineScrollControllerProvider(tabSettings),
    );
    useEffect(() {
      if (!tabSettings.keepPosition) {
        ref
            .read(
              timelineLastViewedNoteIdNotifierProvider(tabSettings).notifier,
            )
            .saveFromDate(DateTime.now());
      }
      return;
    }, []);
    if (!account.isGuest) {
      ref.listen(mainStreamProvider(account), (prev, next) async {
        if (next case AsyncData(value: final event)) {
          switch (event) {
            case Notification(:final notification) ||
                UnreadNotification(:final notification):
              if (prev?.value
                  case Notification(notification: final prev) ||
                      UnreadNotification(notification: final prev)
                  when prev.id == notification.id) {
                break;
              }
              await ref
                  .read(iNotifierProvider(account).notifier)
                  .addUnreadNotification();
              if (vibrateOnNotification) {
                await HapticFeedback.lightImpact();
              }
            case NewChatMessage():
              await ref
                  .read(iNotifierProvider(account).notifier)
                  .addUnreadChatMessage();
              if (vibrateOnNotification) {
                await HapticFeedback.lightImpact();
              }
            case AnnouncementCreated(:final announcement):
              await ref
                  .read(iNotifierProvider(account).notifier)
                  .addUnreadAnnouncement(announcement);
            default:
          }
        }
      });
    }
    ref.listen(broadcastProvider(account), (_, next) async {
      if (next case AsyncData(value: final event)) {
        switch (event) {
          case broadcast.EmojiAdded(:final emoji):
            ref.read(emojisNotifierProvider(account.host).notifier).add(emoji);
          case broadcast.EmojiUpdated(:final emojis):
            ref
                .read(emojisNotifierProvider(account.host).notifier)
                .addAll(emojis);
          case broadcast.EmojiDeleted(:final emojis):
            ref
                .read(emojisNotifierProvider(account.host).notifier)
                .deleteAll(emojis.map((emoji) => emoji.name));
          case broadcast.AnnouncementCreated(:final announcement):
            if (i != null) {
              await ref
                  .read(iNotifierProvider(account).notifier)
                  .addUnreadAnnouncement(announcement);
            }
        }
      }
    });
    final dialogAnnouncements = i?.unreadAnnouncements.where(
      (announcement) => announcement.display == AnnouncementDisplayType.dialog,
    );
    final bannerAnnouncements = i?.unreadAnnouncements.where(
      (announcement) => announcement.display == AnnouncementDisplayType.banner,
    );
    final showLastViewedAt = useState(showTimelineLastViewedAt);

    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            TimelineHeader(tabSettings: tabSettings),
            ...?bannerAnnouncements?.map(
              (announcement) => Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () => context.push('/$account/announcements'),
                  child: Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          if (announcement case AnnouncementsResponse(
                            :final icon?,
                          ))
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  end: 2.0,
                                ),
                                child: Icon(
                                  switch (icon) {
                                    AnnouncementIconType.info =>
                                      Icons.info_outline,
                                    AnnouncementIconType.error =>
                                      Icons.error_outline,
                                    AnnouncementIconType.warning =>
                                      Icons.warning_amber,
                                    AnnouncementIconType.success => Icons.check,
                                  },
                                  size: DefaultTextStyle.of(
                                    context,
                                  ).style.lineHeight,
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          TextSpan(
                            text: announcement.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const WidgetSpan(child: SizedBox(width: 8.0)),
                          TextSpan(
                            text: announcement.text.replaceAll('\n', ' '),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
            ),
            if (lastViewedNoteId != null && showLastViewedAt.value)
              if (previousNoteId != null &&
                  lastViewedNoteId.compareTo(previousNoteId) < 0)
                Container(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () async {
                      final currentContext = lastViewedAtKey.currentContext;
                      if (currentContext != null) {
                        await Scrollable.ensureVisible(currentContext);
                      } else {
                        final centerId = ref.read(
                          timelineCenterNotifierProvider(tabSettings),
                        );
                        final maxScrollExtent =
                            scrollController.position.maxScrollExtent;
                        final notes = ref
                            .watch(timelineNotesNotifierProvider(tabSettings))
                            .value;
                        final oldestNote = notes?.items.lastOrNull;
                        if (centerId == null &&
                            oldestNote != null &&
                            oldestNote.id.compareTo(lastViewedNoteId) < 0 &&
                            maxScrollExtent < 40000.0) {
                          double position = 0.0;
                          scrollController.jumpTo(position);
                          while (position < maxScrollExtent) {
                            final currentContext =
                                lastViewedAtKey.currentContext;
                            if (currentContext != null &&
                                currentContext.mounted) {
                              await Scrollable.ensureVisible(currentContext);
                              break;
                            }
                            position += 400.0;
                            await scrollController.animateTo(
                              position,
                              duration: const Duration(milliseconds: 30),
                              curve: Curves.linear,
                            );
                          }
                        } else {
                          ref
                              .read(
                                timelineCenterNotifierProvider(
                                  tabSettings,
                                ).notifier,
                              )
                              .setCenter(lastViewedNoteId);
                        }
                      }
                      showLastViewedAt.value = false;
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.history),
                        const SizedBox(width: 8.0),
                        if (lastViewedAt != null)
                          Expanded(
                            child: Text(
                              t.aria.jumpTo(
                                x:
                                    '${absoluteTime(lastViewedAt)}'
                                    ' (${relativeTime(lastViewedAt)})',
                              ),
                              maxLines: 1,
                            ),
                          ),
                        IconButton(
                          style: IconButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.all(6.0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () => showLastViewedAt.value = false,
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                )
              else if (nextNoteId != null &&
                  lastViewedNoteId.compareTo(nextNoteId) < 0)
                Container(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () async {
                      await scrollController.scrollToTop();
                      showLastViewedAt.value = false;
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.update),
                        const SizedBox(width: 8.0),
                        if (Id.tryParse(nextNoteId)?.date
                            case final nextNoteDate?)
                          Expanded(
                            child: Text(
                              t.aria.jumpTo(
                                x:
                                    '${absoluteTime(nextNoteDate)}'
                                    ' (${relativeTime(nextNoteDate)})',
                              ),
                              maxLines: 1,
                            ),
                          ),
                        IconButton(
                          style: IconButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.all(6.0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () => showLastViewedAt.value = false,
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                ),
            const Divider(height: 1.0),
            Expanded(
              child: TimelineListView(
                tabSettings: tabSettings,
                focusPostForm: focusPostForm,
                lastViewedAtKey: lastViewedAtKey,
              ),
            ),
          ],
        ),
        if (dialogAnnouncements?.isNotEmpty ?? false)
          const ModalBarrier(color: Colors.black54),
        ...?dialogAnnouncements?.map(
          (announcement) => Card(
            margin: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 8.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AnnouncementWidget(
                  account: account,
                  announcement: announcement,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
