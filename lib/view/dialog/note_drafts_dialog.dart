import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;

import '../../constant/max_content_width.dart';
import '../../extension/note_draft_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/local_note_draft.dart';
import '../../model/post_file.dart';
import '../../model/tab_type.dart';
import '../../provider/api/attaches_notifier_provider.dart';
import '../../provider/api/endpoints_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/note_drafts_notifier_provider.dart';
import '../../provider/local_note_drafts_notifier_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../provider/timeline_tabs_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../widget/error_message.dart';
import '../widget/note_widget.dart';
import '../widget/paginated_list_view.dart';
import '../widget/tab_icon_widget.dart';
import '../widget/user_avatar.dart';
import 'confirmation_dialog.dart';

class NoteDraftsDialog extends HookConsumerWidget {
  const NoteDraftsDialog({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final local = useState(true);

    return Dialog(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          AppBar(
            title: Text(t.misskey.drafts),
            leading: const CloseButton(),
            backgroundColor: Colors.transparent,
          ),
          if (endpoints?.contains('notes/drafts/list') ?? true)
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                width: maxContentWidth,
                child: SegmentedButton(
                  segments: [
                    ButtonSegment(value: true, label: Text(t.aria.device)),
                    ButtonSegment(value: false, label: Text(t.aria.server)),
                  ],
                  selected: {local.value},
                  onSelectionChanged: (selection) =>
                      local.value = selection.single,
                ),
              ),
            ),
          Expanded(
            child: local.value
                ? _LocalNoteDrafts(account: account)
                : _NoteDrafts(account: account),
          ),
        ],
      ),
    );
  }
}

class _LocalNoteDrafts extends ConsumerWidget {
  const _LocalNoteDrafts({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drafts = ref.watch(localNoteDraftsNotifierProvider);

    return switch (drafts) {
      AsyncValue(value: final drafts?) =>
        drafts.isNotEmpty
            ? ListView.builder(
                itemBuilder: (context, index) => Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    width: maxContentWidth,
                    padding: EdgeInsets.only(
                      top: index == 0 ? 8.0 : 4.0,
                      bottom: index == drafts.length - 1 ? 128.0 : 4.0,
                    ),
                    child: _LocalNoteDraftWidget(
                      account: account,
                      draft: drafts[index],
                    ),
                  ),
                ),
                itemCount: drafts.length,
              )
            : Center(child: Text(t.misskey.drafts_.noDrafts)),
      AsyncValue(:final error?, :final stackTrace) => SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            width: maxContentWidth,
            child: ErrorMessage(error: error, stackTrace: stackTrace),
          ),
        ),
      ),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}

class _LocalNoteDraftWidget extends ConsumerWidget {
  const _LocalNoteDraftWidget({required this.account, required this.draft});

  final Account account;
  final LocalNoteDraft draft;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(draft.account)).value;
    final tabSettings = ref.watch(
      timelineTabsNotifierProvider.select(
        (tabs) => tabs.firstWhereOrNull((tab) => tab.id == draft.tabId),
      ),
    );
    final endpoints = ref.watch(endpointsNotifierProvider(account.host)).value;
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: draft.isPinned
                    ? const Icon(Icons.push_pin)
                    : tabSettings != null
                    ? TabIconWidget(tabSettings: tabSettings)
                    : draft.draft.replyId != null
                    ? const Icon(Icons.reply)
                    : draft.draft.renoteId != null
                    ? const Icon(Icons.repeat_rounded)
                    : draft.draft.channelId != null
                    ? const Icon(Icons.tv)
                    : i != null
                    ? UserAvatar(account: draft.account, user: i, size: 24.0)
                    : const Icon(Icons.person),
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: draft.isPinned
                            ? t.aria.pinnedDraft
                            : tabSettings != null
                            ? tabSettings.name ??
                                  switch (tabSettings.tabType) {
                                    TabType.homeTimeline =>
                                      t.misskey.timelines_.home,
                                    TabType.localTimeline =>
                                      t.misskey.timelines_.local,
                                    TabType.hybridTimeline =>
                                      t.misskey.timelines_.social,
                                    TabType.globalTimeline =>
                                      t.misskey.timelines_.global,
                                    TabType.roleTimeline => t.misskey.role,
                                    TabType.userList => t.misskey.userList,
                                    TabType.antenna => t.misskey.antennas,
                                    TabType.channel => t.misskey.channel,
                                    TabType.hashtag => t.misskey.hashtags,
                                    TabType.mention => t.misskey.mentions,
                                    TabType.direct => t.misskey.directNotes,
                                    TabType.user => t.misskey.user,
                                    TabType.notifications =>
                                      t.misskey.notifications,
                                    TabType.custom => t.aria.custom,
                                  }
                            : draft.draft.replyId != null
                            ? t.misskey.reply
                            : draft.draft.renoteId != null
                            ? t.misskey.renote
                            : draft.draft.channelId != null
                            ? draft.draft.channel?.name ?? t.misskey.channel
                            : draft.account.toString(),
                      ),
                      if (draft.isPinned ||
                          tabSettings != null ||
                          draft.draft.replyId != null ||
                          draft.draft.renoteId != null ||
                          draft.draft.channelId != null) ...[
                        const WidgetSpan(child: SizedBox(width: 4.0)),
                        if (defaultTargetPlatform != TargetPlatform.linux)
                          const TextSpan(text: Unicode.LRI),
                        TextSpan(
                          text: draft.account.toString(),
                          style: DefaultTextStyle.of(context).style.apply(
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: 0.85,
                            ),
                          ),
                        ),
                        if (defaultTargetPlatform != TargetPlatform.linux)
                          const TextSpan(text: Unicode.PDI),
                      ],
                    ],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              PopupMenuButton<void>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .fromDraft(draft.draft, draft.account);
                      ref
                          .read(attachesNotifierProvider(account).notifier)
                          .removeAll();
                      if (draft.draft.files case final files?
                          when account == draft.account) {
                        ref
                            .read(attachesNotifierProvider(account).notifier)
                            .addAll(files.map(DrivePostFile.fromDriveFile));
                      }
                      context.pop();
                    },
                    child: ListTile(
                      leading: const Icon(Icons.edit),
                      title: Text(t.misskey.drafts_.restore),
                    ),
                  ),
                  if (!draft.isPinned)
                    PopupMenuItem(
                      onTap: () => futureWithDialog(
                        context,
                        ref
                            .read(localNoteDraftsNotifierProvider.notifier)
                            .pin(draft.id),
                        message: t.aria.pinned,
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.push_pin),
                        title: Text(t.aria.pin),
                      ),
                    ),
                  if (endpoints?.contains('notes/drafts/create') ?? true)
                    PopupMenuItem(
                      onTap: () => futureWithDialog(
                        context,
                        ref
                            .read(misskeyProvider(account))
                            .notes
                            .drafts
                            .create(draft.draft.toNotesDraftsCreateRequest()),
                        message: t.aria.uploaded,
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.upload),
                        title: Text(t.misskey.upload),
                      ),
                    ),
                  PopupMenuItem(
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.drafts_.deleteAreYouSure,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(localNoteDraftsNotifierProvider.notifier)
                              .delete(draft.id),
                        );
                      }
                    },
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: Text(t.misskey.delete),
                      iconColor: theme.colorScheme.error,
                      textColor: theme.colorScheme.error,
                    ),
                  ),
                ],
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        if (draft.draft.isRenote)
          NoteWidget(
            account: draft.account,
            noteId: draft.draft.renoteId!,
            withHardMute: false,
            showFooter: false,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8.0),
            ),
          )
        else
          NoteWidget(
            account: draft.account,
            noteId: '',
            withHardMute: false,
            showFooter: false,
            note: draft.draft.toNote(),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8.0),
            ),
          ),
      ],
    );
  }
}

class _NoteDrafts extends ConsumerWidget {
  const _NoteDrafts({required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drafts = ref.watch(noteDraftsNotifierProvider(account));

    return PaginatedListView(
      paginationState: drafts,
      itemBuilder: (context, draft) =>
          _NoteDraftWidget(account: account, draft: draft),
      onRefresh: () => ref.refresh(noteDraftsNotifierProvider(account).future),
      loadMore: (skipError) => ref
          .read(noteDraftsNotifierProvider(account).notifier)
          .loadMore(skipError: skipError),
      panel: false,
      noItemsLabel: t.misskey.drafts_.noDrafts,
    );
  }
}

class _NoteDraftWidget extends ConsumerWidget {
  const _NoteDraftWidget({required this.account, required this.draft});

  final Account account;
  final NoteDraft draft;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.notes),
              ),
              Expanded(child: Text(t.misskey.draft)),
              PopupMenuButton<void>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    onTap: () {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .fromDraft(draft, account);
                      ref
                          .read(attachesNotifierProvider(account).notifier)
                          .removeAll();
                      if (draft.files case final files?) {
                        ref
                            .read(attachesNotifierProvider(account).notifier)
                            .addAll(files.map(DrivePostFile.fromDriveFile));
                      }
                      context.pop();
                    },
                    child: ListTile(
                      leading: const Icon(Icons.edit),
                      title: Text(t.misskey.drafts_.restore),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      final confirmed = await confirm(
                        context,
                        message: t.misskey.drafts_.deleteAreYouSure,
                      );
                      if (!context.mounted) return;
                      if (confirmed) {
                        await futureWithDialog(
                          context,
                          ref
                              .read(
                                noteDraftsNotifierProvider(account).notifier,
                              )
                              .delete(draft.id),
                        );
                      }
                    },
                    child: ListTile(
                      leading: const Icon(Icons.delete),
                      title: Text(t.misskey.delete),
                      iconColor: theme.colorScheme.error,
                      textColor: theme.colorScheme.error,
                    ),
                  ),
                ],
                icon: const Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        if (draft.isRenote)
          NoteWidget(
            account: account,
            noteId: draft.renoteId!,
            withHardMute: false,
            showFooter: false,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8.0),
            ),
          )
        else
          NoteWidget(
            account: account,
            noteId: '',
            withHardMute: false,
            showFooter: false,
            note: draft.toNote(),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8.0),
            ),
          ),
      ],
    );
  }
}
