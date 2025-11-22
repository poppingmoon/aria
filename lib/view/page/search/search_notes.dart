import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/max_content_width.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/id.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../provider/api/search_notes_notifier_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/id_gen_method_provider.dart';
import '../../../util/format_datetime.dart';
import '../../../util/pick_date_time.dart';
import '../../../util/punycode.dart';
import '../../dialog/user_select_dialog.dart';
import '../../widget/note_widget.dart';
import '../../widget/paginated_list_view.dart';
import '../../widget/user_avatar.dart';
import '../../widget/username_widget.dart';
import '../channel/channels_page.dart';

class SearchNotes extends HookConsumerWidget {
  const SearchNotes({
    super.key,
    required this.account,
    required this.query,
    this.userId,
    this.channelId,
  });

  final Account account;
  final String query;
  final String? userId;
  final String? channelId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = useState(this.userId);
    final user = userId.value != null
        ? ref.watch(userNotifierProvider(account, userId: userId.value)).value
        : null;
    final channelId = useState(this.channelId);
    final channel = channelId.value != null
        ? ref.watch(channelNotifierProvider(account, channelId.value!)).value
        : null;
    final localOnly = useState(this.channelId != null);
    final sinceDate = useState<DateTime?>(null);
    final untilDate = useState<DateTime?>(null);
    final method = ref.watch(idGenMethodProvider(account)).value;
    final sinceId = method != null && sinceDate.value != null
        ? Id(method: method, date: sinceDate.value!).toString()
        : null;
    final untilId = method != null && untilDate.value != null
        ? Id(method: method, date: untilDate.value!).toString()
        : null;
    final notes = query.isNotEmpty
        ? ref.watch(
            searchNotesNotifierProvider(
              account,
              query,
              userId: userId.value,
              channelId: channelId.value,
              localOnly: localOnly.value,
              sinceId: sinceId,
              untilId: untilId,
            ),
          )
        : null;
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(context).style;

    return PaginatedListView(
      header: SliverList.list(
        children: [
          const SizedBox(height: 8.0),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              width: maxContentWidth,
              child: ExpansionTile(
                leading: Stack(
                  children: [
                    const Icon(Icons.tune),
                    if (userId.value != null ||
                        channelId.value != null ||
                        localOnly.value ||
                        sinceDate.value != null ||
                        untilDate.value != null)
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: theme.colorScheme.primary,
                        ),
                        child: const SizedBox(height: 12.0, width: 12.0),
                      ),
                  ],
                ),
                title: Text(t.misskey.options),
                initiallyExpanded:
                    this.userId != null || this.channelId != null,
                backgroundColor: theme.colorScheme.surface,
                collapsedBackgroundColor: theme.colorScheme.surface,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                children: [
                  const Divider(height: 1.0),
                  SwitchListTile(
                    title: Text(t.misskey.localOnly),
                    value: localOnly.value,
                    onChanged: channelId.value == null
                        ? (value) => localOnly.value = value
                        : null,
                  ),
                  ListTile(
                    title: Text(t.misskey.user),
                    subtitle: user != null
                        ? UsernameWidget(
                            account: account,
                            leadingSpans: [
                              WidgetSpan(
                                child: UserAvatar(account: account, user: user),
                              ),
                              const TextSpan(text: ' '),
                            ],
                            user: user,
                            trailingSpans: [
                              const TextSpan(text: ' '),
                              TextSpan(text: '@${user.username}'),
                              if (user.host != null)
                                TextSpan(
                                  text: '@${toUnicode(user.host!)}',
                                  style: TextStyle(
                                    color: style.color?.withValues(alpha: 0.5),
                                  ),
                                ),
                            ],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                        : Text(t.misskey.notSet),
                    trailing: userId.value != null
                        ? IconButton(
                            onPressed: () => userId.value = null,
                            icon: const Icon(Icons.close),
                          )
                        : const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await selectUser(
                        context,
                        account,
                        includeSelf: true,
                        localOnly: localOnly.value,
                      );
                      if (result != null) {
                        userId.value = result.id;
                      }
                    },
                  ),
                  ListTile(
                    title: Text(t.misskey.channel),
                    subtitle: Text(channel?.name ?? t.misskey.notSet),
                    trailing: channelId.value != null
                        ? IconButton(
                            onPressed: () => channelId.value = null,
                            icon: const Icon(Icons.close),
                          )
                        : const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await showDialog<CommunityChannel>(
                        context: context,
                        builder: (context) => ChannelsPage(
                          account: account,
                          onChannelTap: (channel) => context.pop(channel),
                          initialIndex: account.isGuest ? 1 : 2,
                        ),
                      );
                      if (result != null) {
                        channelId.value = result.id;
                        localOnly.value = true;
                      }
                    },
                  ),
                  ListTile(
                    title: Text(t.aria.sinceDate),
                    subtitle: Text(
                      sinceDate.value != null
                          ? absoluteTime(sinceDate.value!)
                          : t.misskey.notSet,
                    ),
                    trailing: sinceDate.value != null
                        ? IconButton(
                            onPressed: () => sinceDate.value = null,
                            icon: const Icon(Icons.close),
                          )
                        : const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await pickDateTime(
                        context,
                        initialDate: sinceDate.value,
                      );
                      if (result != null) {
                        sinceDate.value = result;
                      }
                    },
                  ),
                  ListTile(
                    title: Text(t.aria.untilDate),
                    subtitle: Text(
                      untilDate.value != null
                          ? absoluteTime(untilDate.value!)
                          : t.misskey.notSet,
                    ),
                    trailing: untilDate.value != null
                        ? IconButton(
                            onPressed: () => untilDate.value = null,
                            icon: const Icon(Icons.close),
                          )
                        : const Icon(Icons.navigate_next),
                    onTap: () async {
                      final result = await pickDateTime(
                        context,
                        initialDate: untilDate.value,
                      );
                      if (result != null) {
                        untilDate.value = result;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      paginationState: notes,
      itemBuilder: (context, note) =>
          NoteWidget(account: account, noteId: note.id),
      onRefresh: () => ref.refresh(
        searchNotesNotifierProvider(
          account,
          query,
          userId: userId.value,
          channelId: channelId.value,
          localOnly: localOnly.value,
          sinceId: sinceId,
          untilId: untilId,
        ).future,
      ),
      loadMore: (skipError) => ref
          .read(
            searchNotesNotifierProvider(
              account,
              query,
              userId: userId.value,
              channelId: channelId.value,
              localOnly: localOnly.value,
              sinceId: sinceId,
              untilId: untilId,
            ).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
