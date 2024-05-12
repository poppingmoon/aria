import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/shortcuts.dart';
import '../../extension/text_style_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/streaming/broadcast.dart' as broadcast;
import '../../model/streaming/main_event.dart';
import '../../model/tab_type.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/timeline_notes_after_note_notifier_provider.dart';
import '../../provider/api/timeline_notes_notifier_provider.dart';
import '../../provider/emojis_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/streaming/broadcast_provider.dart';
import '../../provider/streaming/main_stream_notifier_provider.dart';
import '../../provider/streaming/note_subscription_notifier_provider.dart';
import '../../provider/timeline_center_notifier_provider.dart';
import '../../provider/timeline_last_viewed_at_notifier_provider.dart';
import '../../provider/timeline_scroll_controller_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/format_datetime.dart';
import 'announcement_widget.dart';
import 'post_form.dart';
import 'timeline_header.dart';
import 'timeline_list_view.dart';

class TimelineWidget extends HookConsumerWidget {
  const TimelineWidget({super.key, required this.tabIndex});

  final int tabIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabSettings = ref
        .watch(timelineTabsNotifierProvider.select((tabs) => tabs[tabIndex]));
    final account = tabSettings.account;
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final vibrateOnNotification = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.vibrateNotification),
    );
    final lastViewedAt = tabSettings.tabType != TabType.notifications
        ? ref.watch(timelineLastViewedAtNotifierProvider(tabSettings))
        : null;
    final nextNotes = tabSettings.tabType != TabType.notifications
        ? ref
            .watch(timelineNotesAfterNoteNotifierProvider(tabSettings))
            .valueOrNull
        : null;
    final previousNotes = tabSettings.tabType != TabType.notifications
        ? ref.watch(timelineNotesNotifierProvider(tabSettings)).valueOrNull
        : null;
    final lastViewedAtKey = useMemoized(() => GlobalKey(), []);
    final scrollController =
        ref.watch(timelineScrollControllerProvider(tabSettings));
    useEffect(
      () {
        ref
            .read(timelineLastViewedAtNotifierProvider(tabSettings).notifier)
            .save(DateTime.now());
        if (!tabSettings.disableSubscribing) {
          final notifier =
              ref.read(noteSubscriptionNotifierProvider(account).notifier);
          return notifier.unsubscribeAll;
        }
        return null;
      },
      [],
    );
    if (i != null) {
      ref.listen(
        mainStreamNotifierProvider(account),
        (_, next) => next.whenData(
          (event) async {
            switch (event) {
              case UnreadNotification():
                await ref
                    .read(iNotifierProvider(account).notifier)
                    .addUnreadNotification();
                if (vibrateOnNotification) {
                  await HapticFeedback.mediumImpact();
                }
              case AnnouncementCreated(:final announcement):
                await ref
                    .read(iNotifierProvider(account).notifier)
                    .addUnreadAnnouncement(announcement);
              default:
            }
          },
        ),
      );
    }
    ref.listen(
      broadcastProvider(account),
      (_, next) => next.whenData(
        (event) async {
          switch (event) {
            case broadcast.EmojiAdded(:final emoji):
              ref
                  .read(emojisNotifierProvider(account.host).notifier)
                  .add(emoji);
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
        },
      ),
    );
    final dialogAnnouncements = i?.unreadAnnouncements.where(
      (announcement) => announcement.display == AnnouncementDisplayType.dialog,
    );
    final bannerAnnouncements = i?.unreadAnnouncements.where(
      (announcement) => announcement.display == AnnouncementDisplayType.banner,
    );
    final rootFocusNode = useFocusNode();
    final postFormFocusNode = useFocusNode();
    final showLastViewedAt = useState(
      ref.watch(
        generalSettingsNotifierProvider
            .select((settings) => settings.showTimelineLastViewedAt),
      ),
    );

    return FocusableActionDetector(
      focusNode: rootFocusNode,
      autofocus: true,
      shortcuts: {
        postActivatorN:
            VoidCallbackIntent(() => postFormFocusNode.requestFocus()),
        postActivatorP:
            VoidCallbackIntent(() => postFormFocusNode.requestFocus()),
        dismissActivator:
            VoidCallbackIntent(() => rootFocusNode.requestFocus()),
      },
      child: Stack(
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
                            if (announcement
                                case AnnouncementsResponse(:final icon?))
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 2.0),
                                  child: Icon(
                                    switch (icon) {
                                      AnnouncementIconType.info =>
                                        Icons.info_outline,
                                      AnnouncementIconType.error =>
                                        Icons.error_outline,
                                      AnnouncementIconType.warning =>
                                        Icons.warning_amber,
                                      AnnouncementIconType.success =>
                                        Icons.check,
                                    },
                                    size: DefaultTextStyle.of(context)
                                        .style
                                        .lineHeight,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            TextSpan(
                              text: announcement.title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
              if (lastViewedAt != null &&
                  showLastViewedAt.value &&
                  !(nextNotes?.isLastLoaded ?? true) &&
                  (previousNotes?.items.firstOrNull?.createdAt
                          .isAfter(lastViewedAt) ??
                      false))
                Container(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () async {
                      final currentContext = lastViewedAtKey.currentContext;
                      if (currentContext != null) {
                        await Scrollable.ensureVisible(currentContext);
                      } else {
                        final centerId = ref
                            .read(timelineCenterNotifierProvider(tabSettings));
                        final maxScrollExtent =
                            scrollController.position.maxScrollExtent;
                        final notes = ref
                            .watch(timelineNotesNotifierProvider(tabSettings))
                            .valueOrNull;
                        final oldestNote = notes?.items.lastOrNull;
                        if (centerId == null &&
                            !(oldestNote?.createdAt.isAfter(lastViewedAt) ??
                                true) &&
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
                          await ref
                              .read(
                                timelineCenterNotifierProvider(tabSettings)
                                    .notifier,
                              )
                              .setCenterFromDate(lastViewedAt);
                        }
                      }
                      showLastViewedAt.value = false;
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.history),
                        const SizedBox(width: 8.0),
                        Expanded(
                          child: Text(
                            t.aria.jumpTo(
                              x: '${absoluteTime(lastViewedAt)} (${relativeTime(lastViewedAt)})',
                            ),
                          ),
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () => showLastViewedAt.value = false,
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                child: TimelineListView(
                  tabSettings: tabSettings,
                  postFormFocusNode: postFormFocusNode,
                  lastViewedAtKey: lastViewedAtKey,
                ),
              ),
              if (!account.isGuest)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: PostForm(
                    account: account,
                    focusNode: postFormFocusNode,
                  ),
                ),
            ],
          ),
          if (dialogAnnouncements?.isNotEmpty ?? false)
            const ModalBarrier(color: Colors.black54),
          ...?dialogAnnouncements?.map(
            (announcement) => Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnnouncementWidget(
                  account: account,
                  announcement: announcement,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
