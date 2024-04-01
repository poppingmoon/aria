import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../../constant/shortcuts.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../provider/api/channel_notifier_provider.dart';
import '../../../provider/api/search_notes_notifier_provider.dart';
import '../../../provider/api/user_notifier_provider.dart';
import '../../../provider/misskey_colors_provider.dart';
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
    this.userId,
    this.channelId,
    this.focusNode,
  });

  final Account account;
  final String? userId;
  final String? channelId;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final query = useState('');
    final userId = useState(this.userId);
    final user = userId.value != null
        ? ref
            .watch(userNotifierProvider(account, userId: userId.value))
            .valueOrNull
        : null;
    final channelId = useState(this.channelId);
    final channel = channelId.value != null
        ? ref
            .watch(channelNotifierProvider(account, channelId.value!))
            .valueOrNull
        : null;
    final localOnly = useState(this.channelId != null);
    final notes = query.value.isNotEmpty
        ? ref.watch(
            searchNotesNotifierProvider(
              account,
              query.value,
              userId: userId.value,
              channelId: channelId.value,
            ),
          )
        : null;
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final style = DefaultTextStyle.of(context).style;

    return PaginatedListView(
      header: SliverList.list(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration:
                    const InputDecoration(prefixIcon: Icon(Icons.search)),
                autofocus: true,
                onSubmitted: (value) => query.value = value.trim(),
                textInputAction: TextInputAction.search,
              ),
            ),
          ),
          ExpansionTile(
            title: Text(t.misskey.options),
            initiallyExpanded: this.userId != null || this.channelId != null,
            children: [
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
                    ? Text.rich(
                        TextSpan(
                          children: [
                            WidgetSpan(child: UserAvatar(user: user)),
                            const TextSpan(text: ' '),
                            ...useMemoized(
                              () => buildUsername(
                                ref,
                                account: account,
                                user: user,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              [user, colors],
                            ),
                            const TextSpan(text: ' '),
                            TextSpan(text: '@${user.username}'),
                            if (user.host != null)
                              TextSpan(
                                text: '@${toUnicode(user.host!)}',
                                style: TextStyle(
                                  color: style.color?.withOpacity(0.5),
                                ),
                              ),
                          ],
                        ),
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () => query.value = controller.text.trim(),
              child: Text(t.misskey.search),
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
          query.value,
          userId: userId.value,
          channelId: channelId.value,
        ).future,
      ),
      loadMore: (skipError) => ref
          .read(
            searchNotesNotifierProvider(
              account,
              query.value,
              userId: userId.value,
              channelId: channelId.value,
            ).notifier,
          )
          .loadMore(skipError: skipError),
      noItemsLabel: t.misskey.noNotes,
    );
  }
}
