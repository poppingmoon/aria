import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_off_icons/material_off_icons.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
import '../dialog/post_confirmation_dialog.dart';
import '../dialog/user_select_dialog.dart';
import '../page/channel/channels_page.dart';
import 'mention_widget.dart';
import 'note_visibility_icon.dart';
import 'note_visibility_sheet.dart';
import 'note_visibility_widget.dart';

class RenoteSheet extends HookConsumerWidget {
  const RenoteSheet({super.key, required this.account, required this.note});

  final Account account;
  final Note note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final renoteToChannel = useState(note.channel != null);
    final channel = useState(note.channel);
    final isSilenced =
        ref.watch(iNotifierProvider(account)).valueOrNull?.isSilenced ?? false;
    final (renoteVisibility, renoteLocalOnly) = ref.watch(
      accountSettingsNotifierProvider(account).select(
        (settings) => settings.rememberRenoteVisibility
            ? (settings.renoteVisibility, settings.renoteLocalOnly)
            : (
                settings.defaultRenoteVisibility,
                settings.defaultRenoteLocalOnly,
              ),
      ),
    );
    final visibility = useState(
      NoteVisibility.min(
        renoteVisibility,
        isSilenced
            ? NoteVisibility.home
            : note.visibility ?? NoteVisibility.public,
      ),
    );
    final localOnly = useState(note.localOnly || renoteLocalOnly);
    final visibleUsers = useState<List<User>>([]);

    return ListView(
      shrinkWrap: true,
      children: [
        SwitchListTile(
          title: Text(t.aria.renoteToChannel),
          value: renoteToChannel.value,
          onChanged: note.channel?.allowRenoteToExternal ?? true
              ? (value) => renoteToChannel.value = value
              : null,
        ),
        const Divider(height: 0.0),
        if (renoteToChannel.value)
          ListTile(
            leading: const Icon(Icons.tv),
            title: Text(t.misskey.channel),
            subtitle: Text(channel.value?.name ?? t.misskey.notSet),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showDialog<CommunityChannel>(
                context: context,
                builder: (context) => ChannelsPage(
                  account: account,
                  onChannelTap: (channel) => context.pop(channel),
                  initialIndex: 2,
                ),
              );
              if (!context.mounted) return;
              if (result != null) {
                channel.value = NoteChannelInfo(
                  id: result.id,
                  name: result.name,
                );
              }
            },
            enabled: note.channel?.allowRenoteToExternal ?? true,
          )
        else ...[
          ListTile(
            leading: NoteVisibilityIcon(visibility: visibility.value),
            title: Text(t.misskey.visibility),
            subtitle: NoteVisibilityWidget(visibility: visibility.value),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final candidates = NoteVisibility.values.where(
                (visibility) =>
                    (visibility != NoteVisibility.public ||
                        i == null ||
                        !i.isSilenced) &&
                    (visibility.priority >=
                        (note.visibility ?? NoteVisibility.public).priority),
              );
              final result = await showModalBottomSheet<NoteVisibility>(
                context: context,
                builder: (context) =>
                    NoteVisibilitySheet(visibilities: candidates),
              );
              if (!context.mounted) return;
              if (result != null) {
                visibility.value = result;
                if (ref
                    .read(accountSettingsNotifierProvider(account))
                    .rememberRenoteVisibility) {
                  await ref
                      .read(accountSettingsNotifierProvider(account).notifier)
                      .setRenoteVisibility(result);
                }
              }
            },
          ),
          if (visibility.value == NoteVisibility.specified)
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(t.misskey.recipient),
              subtitle: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Wrap(
                  spacing: 4.0,
                  runSpacing: 4.0,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    ...visibleUsers.value.map(
                      (user) => MentionWidget(
                        account: account,
                        username: user.username,
                        host: user.host ?? account.host,
                        onDeleted: () {
                          visibleUsers.value = visibleUsers.value
                              .where((e) => e.id != user.id)
                              .toList();
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        final user = await selectUser(context, account);
                        if (user != null &&
                            visibleUsers.value.every((u) => u.id != user.id)) {
                          visibleUsers.value = [...visibleUsers.value, user];
                        }
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
            ),
          SwitchListTile(
            secondary: Icon(localOnly.value ? OffIcons.rocket : Icons.rocket),
            title: Text(t.misskey.localOnly),
            value: localOnly.value,
            onChanged: !note.localOnly
                ? (value) {
                    localOnly.value = value;
                    if (ref
                        .read(accountSettingsNotifierProvider(account))
                        .rememberRenoteVisibility) {
                      ref
                          .read(
                            accountSettingsNotifierProvider(account).notifier,
                          )
                          .setRenoteLocalOnly(value);
                    }
                  }
                : null,
          ),
        ],
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton.icon(
            onPressed: !renoteToChannel.value || channel.value != null
                ? () async {
                    final request = NotesCreateRequest(renoteId: note.id);
                    if (ref
                        .read(generalSettingsNotifierProvider)
                        .confirmBeforeRenote) {
                      final confirmed = await confirmPost(
                        ref,
                        account,
                        request,
                      );
                      if (!confirmed) return;
                    }
                    if (!context.mounted) return;
                    if (renoteToChannel.value) {
                      if (channel.value case final channel?) {
                        final result = await futureWithDialog(
                          context,
                          ref
                              .read(misskeyProvider(account))
                              .notes
                              .create(request.copyWith(channelId: channel.id)),
                          message: t.misskey.renotedToX(name: channel.name),
                        );
                        if (result != null) {
                          ref
                              .read(notesNotifierProvider(account).notifier)
                              .add(result);
                          if (!context.mounted) return;
                          context.pop(result);
                        }
                      }
                    } else {
                      final result = await futureWithDialog(
                        context,
                        ref
                            .read(misskeyProvider(account))
                            .notes
                            .create(
                              request.copyWith(
                                visibility: visibility.value,
                                localOnly: localOnly.value,
                              ),
                            ),
                        message: t.misskey.renoted,
                      );
                      if (!context.mounted) return;
                      if (result != null) {
                        ref
                            .read(notesNotifierProvider(account).notifier)
                            .add(result);
                        context.pop(result);
                      }
                    }
                  }
                : null,
            icon: const Icon(Icons.repeat_rounded),
            label: Text(t.misskey.renote),
          ),
        ),
      ],
    );
  }
}
