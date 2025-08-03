import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:share_plus/share_plus.dart';

import '../../extension/note_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/clip_notes_notifier_provider.dart';
import '../../provider/api/endpoints_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/note_state_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/clip_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/delete_and_edit_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'account_preview.dart';
import 'note_fallback_widget.dart';
import 'note_summary.dart';
import 'time_widget.dart';
import 'translated_note_sheet.dart';
import 'user_avatar.dart';
import 'user_sheet.dart';

Future<void> showNoteSheet({
  required BuildContext context,
  required Account account,
  required String noteId,
  bool renote = false,
  String? clipId,
  bool disableHeader = false,
}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => NoteSheet(
      account: account,
      noteId: noteId,
      renote: renote,
      clipId: clipId,
      disableHeader: disableHeader,
    ),
    clipBehavior: Clip.antiAlias,
    isScrollControlled: true,
  );
}

class NoteSheet extends ConsumerWidget {
  const NoteSheet({
    super.key,
    required this.account,
    required this.noteId,
    this.renote = false,
    this.clipId,
    this.disableHeader = false,
  });

  final Account account;
  final String noteId;
  final bool renote;
  final String? clipId;
  final bool disableHeader;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    final appearNote = ref.watch(appearNoteProvider(account, noteId));
    if (note == null) {
      return NoteFallbackWidget(account: account, noteId: noteId);
    }
    if (renote) {
      return _RenoteSheet(
        account: account,
        note: note,
        disableHeader: disableHeader,
      );
    }
    if (appearNote == null) {
      if (note.isRenote) {
        return _RenoteSheet(
          account: account,
          note: note,
          disableHeader: disableHeader,
        );
      } else {
        return NoteFallbackWidget(account: account, noteId: noteId);
      }
    }
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['notes', appearNote.id]);
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final canUseTranslator =
        (i?.policies?.canUseTranslator ?? false) &&
        (meta?.translatorAvailable ?? false);
    final canEditNote =
        i != null &&
        (i.policies?.canEditNote ??
            ref.watch(
              endpointsProvider(account.host).select(
                (value) => value.maybeWhen(
                  data: (endpoints) => endpoints.contains('notes/edit'),
                  orElse: () => false,
                ),
              ),
            ));
    final noteState = i != null
        ? ref
              .watch(noteStateNotifierProvider(account, appearNote.id))
              .valueOrNull
        : null;
    final remoteUrl = appearNote.url ?? appearNote.uri;
    final remoteNoteId = remoteUrl?.pathSegments.lastOrNull;
    final switchCandidateAccounts = ref
        .watch(accountsNotifierProvider)
        .where(
          (acct) =>
              acct != account &&
              (!appearNote.localOnly || acct.host == account.host),
        )
        .toList();

    return DraggableScrollableSheet(
      minChildSize: 0.5,
      maxChildSize: 0.8,
      expand: false,
      builder: (context, scrollController) => ListView(
        controller: scrollController,
        children: [
          ListTile(
            leading: UserAvatar(
              account: account,
              user: appearNote.user,
              size: 32.0,
              onTap: () => context.push('/$account/users/${appearNote.userId}'),
            ),
            title: NoteSummary(account: account, noteId: appearNote.id),
            subtitle: TimeWidget(time: appearNote.createdAt, detailed: true),
            onTap: !disableHeader || noteId != appearNote.id
                ? () => context.push('/$account/notes/${appearNote.id}')
                : null,
          ),
          const Divider(height: 0.0),
          if (clipId case final clipId?)
            ListTile(
              leading: const Icon(Icons.close),
              title: Text(t.misskey.unclip),
              onTap: () async {
                final removed = await futureWithDialog(
                  context,
                  ref
                      .read(clipNotesNotifierProvider(account, clipId).notifier)
                      .removeNote(appearNote.id)
                      .then((_) => true),
                );
                if (!context.mounted) return;
                if (removed ?? false) {
                  context.pop();
                }
              },
              iconColor: Theme.of(context).colorScheme.error,
              textColor: Theme.of(context).colorScheme.error,
            ),
          ListTile(
            leading: const Icon(Icons.copy),
            title: Text(t.misskey.copyContent),
            onTap: () {
              copyToClipboard(context, appearNote.text ?? '');
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.link),
            title: Text(t.misskey.copyLink),
            onTap: () {
              copyToClipboard(context, url.toString());
              context.pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.open_in_browser),
            title: Text(t.aria.openInBrowser),
            onTap: () {
              launchUrl(ref, url);
              context.pop();
            },
          ),
          if (remoteUrl != null) ...[
            ListTile(
              leading: const Icon(Icons.rocket_launch),
              title: Text(t.misskey.showOnRemote),
              onTap: () {
                launchUrl(ref, remoteUrl);
                context.pop();
              },
            ),
            if (remoteNoteId != null)
              ListTile(
                leading: const Icon(Icons.open_in_new),
                title: Text(t.aria.openAsGuest),
                onTap: () {
                  context.pop();
                  context.push('/${remoteUrl.host}/notes/$remoteNoteId');
                },
              ),
          ],
          if (switchCandidateAccounts.isNotEmpty)
            ListTile(
              leading: const Icon(Icons.switch_account),
              title: Text(t.aria.openInAnotherAccount),
              onTap: () async {
                final destination = await showDialog<Account>(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: Text(t.aria.openInAnotherAccount),
                    children: switchCandidateAccounts
                        .map(
                          (account) => AccountPreview(
                            account: account,
                            trailing: const Icon(Icons.navigate_next),
                            avatarSize: 40.0,
                            onTap: () => context.pop(account),
                          ),
                        )
                        .toList(),
                  ),
                );
                if (destination == null) {
                  return;
                }
                if (!context.mounted) return;
                if (destination.host == account.host) {
                  await context.push('/$destination/notes/${appearNote.id}');
                  return;
                }
                if (destination.host == appearNote.user.host &&
                    remoteNoteId != null) {
                  await context.push('/$destination/notes/$remoteNoteId');
                  return;
                }
                final response = await futureWithDialog(
                  context,
                  ref
                      .read(misskeyProvider(destination))
                      .ap
                      .show(ApShowRequest(uri: remoteUrl ?? url)),
                );
                if (!context.mounted) return;
                if (response != null) {
                  try {
                    final note = Note.fromJson(response.object);
                    ref
                        .read(notesNotifierProvider(destination).notifier)
                        .add(note);
                  } catch (_) {}
                  await context.push(
                    '/$destination/notes/${response.object['id']}',
                  );
                }
              },
            ),
          ListTile(
            leading: const Icon(Icons.share),
            title: Text(t.misskey.share),
            onTap: () {
              if (appearNote.text != null) {
                SharePlus.instance.share(
                  ShareParams(text: '${appearNote.text} $url'),
                );
              } else {
                SharePlus.instance.share(ShareParams(uri: url));
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(t.misskey.user),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => showUserSheet(
              context: context,
              account: account,
              userId: appearNote.userId,
            ),
          ),
          if (appearNote.text != null)
            ListTile(
              leading: const Icon(Icons.translate),
              title: Text(t.misskey.translate),
              trailing: !canUseTranslator
                  ? const Icon(Icons.open_in_browser)
                  : null,
              onTap: () {
                if (canUseTranslator) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) =>
                        TranslatedNoteSheet(account: account, note: appearNote),
                    clipBehavior: Clip.antiAlias,
                    scrollControlDisabledMaxHeightRatio: 0.8,
                  );
                } else {
                  launchUrl(
                    ref,
                    Uri.https('translate.google.com', '', {
                      'text': [
                        appearNote.cw,
                        appearNote.text,
                      ].nonNulls.join('\n'),
                    }),
                  );
                }
              },
            ),
          if (noteState != null) ...[
            ListTile(
              leading: Icon(
                noteState.isFavorited
                    ? Icons.star_outline_rounded
                    : Icons.star_rounded,
              ),
              title: Text(
                noteState.isFavorited
                    ? t.misskey.unfavorite
                    : t.misskey.favorite,
              ),
              onTap: () async {
                if (noteState.isFavorited) {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(
                            account,
                            appearNote.id,
                          ).notifier,
                        )
                        .unfavorite(),
                    message: t.aria.unfavorited,
                  );
                } else {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(
                            account,
                            appearNote.id,
                          ).notifier,
                        )
                        .favorite(),
                    message: t.misskey.favorited,
                  );
                }
                if (!context.mounted) return;
                context.pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.comments_disabled),
              title: Text(
                noteState.isMutedThread
                    ? t.misskey.unmuteThread
                    : t.misskey.muteThread,
              ),
              onTap: () async {
                if (noteState.isMutedThread) {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(
                            account,
                            appearNote.id,
                          ).notifier,
                        )
                        .unmuteThread(),
                  );
                } else {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(
                            account,
                            appearNote.id,
                          ).notifier,
                        )
                        .muteThread(),
                  );
                }
                if (!context.mounted) return;
                context.pop();
              },
            ),
          ],
          ListTile(
            leading: const Icon(Icons.repeat_rounded),
            title: Text(t.aria.notesAfterRenotes),
            onTap: () =>
                context.push('/$account/notes/${appearNote.id}/after-renotes'),
          ),
          if (!account.isGuest) ...[
            if (appearNote.user.host == null &&
                appearNote.user.username == account.username)
              if (i?.pinnedNoteIds?.contains(appearNote.id) ?? false)
                ListTile(
                  leading: const Icon(Symbols.keep_off, fill: 1.0),
                  title: Text(t.misskey.unpin),
                  onTap: () => futureWithDialog(
                    context,
                    ref
                        .read(iNotifierProvider(account).notifier)
                        .unpin(appearNote.id),
                  ),
                )
              else
                ListTile(
                  leading: const Icon(Symbols.keep, fill: 1.0),
                  title: Text(t.misskey.pin),
                  onTap: () => futureWithDialog(
                    context,
                    ref
                        .read(iNotifierProvider(account).notifier)
                        .pin(appearNote.id),
                  ),
                ),
            ListTile(
              leading: const Icon(Icons.attach_file),
              title: Text(t.misskey.clip),
              onTap: () => showDialog<void>(
                context: context,
                builder: (context) => ClipDialog(
                  account: account,
                  noteId: appearNote.id,
                  clipId: clipId,
                ),
              ),
            ),
            if (appearNote.user.host == null &&
                appearNote.user.username == account.username) ...[
              if (canEditNote)
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: Text(t.misskey.edit),
                  onTap: () =>
                      context.push('/$account/notes/${appearNote.id}/edit'),
                ),
              ListTile(
                leading: const Icon(Icons.edit_outlined),
                title: Text(t.misskey.deleteAndEdit),
                onTap: () {
                  context.pop();
                  showDialog<void>(
                    context: context,
                    builder: (context) =>
                        DeleteAndEditDialog(account: account, note: appearNote),
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Theme.of(context).colorScheme.error,
                ),
                title: Text(
                  t.misskey.delete,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
                onTap: () async {
                  final confirmed = await confirm(
                    context,
                    message: t.misskey.noteDeleteConfirm,
                  );
                  if (!context.mounted) return;
                  if (confirmed) {
                    context.pop();
                    await futureWithDialog(
                      context,
                      ref
                          .read(misskeyProvider(account))
                          .notes
                          .delete(NotesDeleteRequest(noteId: appearNote.id))
                          .then(
                            (_) => ref
                                .read(notesNotifierProvider(account).notifier)
                                .remove(appearNote.id),
                          ),
                    );
                    if (!context.mounted) return;
                  }
                },
              ),
            ],
            if (note.isRenote &&
                note.user.host == null &&
                note.user.username == account.username)
              ListTile(
                leading: const Icon(Icons.delete),
                title: Text(t.misskey.unrenote),
                onTap: () async {
                  await futureWithDialog(
                    context,
                    ref
                        .read(misskeyProvider(account))
                        .notes
                        .delete(NotesDeleteRequest(noteId: noteId))
                        .then(
                          (_) => ref
                              .read(notesNotifierProvider(account).notifier)
                              .remove(noteId),
                        ),
                  );
                  if (!context.mounted) return;
                  context.pop();
                },
                iconColor: Theme.of(context).colorScheme.error,
                textColor: Theme.of(context).colorScheme.error,
              ),
            if (appearNote.user.host != null ||
                appearNote.user.username != account.username)
              ListTile(
                leading: const Icon(Icons.report),
                title: Text(t.misskey.reportAbuse),
                onTap: () async {
                  final comment = await showTextFieldDialog(
                    context,
                    title: Text(
                      t.misskey.reportAbuseOf(name: appearNote.user.acct),
                    ),
                    initialText: [
                      if (appearNote.url ?? appearNote.uri case final url?)
                        'Note: $url',
                      'Local Note: $url',
                      '-----',
                      '',
                    ].join('\n'),
                    decoration: InputDecoration(
                      helperText: t.misskey.fillAbuseReportDescription,
                    ),
                    maxLines: null,
                  );
                  if (!context.mounted) return;
                  if (comment == null) return;
                  final confirmed = await confirm(
                    context,
                    title: Text(
                      t.misskey.reportAbuseOf(name: appearNote.user.acct),
                    ),
                    message: comment,
                    okText: t.misskey.reportAbuse,
                  );
                  if (!context.mounted) return;
                  if (confirmed) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(misskeyProvider(account))
                          .users
                          .reportAbuse(
                            UsersReportAbuseRequest(
                              userId: appearNote.userId,
                              comment: comment,
                            ),
                          ),
                    );
                  }
                },
              ),
            if (note.isRenote &&
                (note.user.host != null ||
                    note.user.username != account.username))
              ListTile(
                leading: const Icon(Icons.report_outlined),
                title: Text(t.misskey.reportAbuseRenote),
                onTap: () async {
                  final comment = await showTextFieldDialog(
                    context,
                    title: Text(
                      t.misskey.reportAbuseOf(name: appearNote.user.acct),
                    ),
                    initialText: [
                      if (remoteUrl != null) 'Note: $remoteUrl',
                      'Local Note: $url',
                      '-----',
                      '',
                    ].join('\n'),
                    decoration: InputDecoration(
                      helperText: t.misskey.fillAbuseReportDescription,
                    ),
                    maxLines: null,
                  );
                  if (!context.mounted) return;
                  if (comment == null) return;
                  final confirmed = await confirm(
                    context,
                    title: Text(
                      t.misskey.reportAbuseOf(name: appearNote.user.acct),
                    ),
                    message: comment,
                    okText: t.misskey.reportAbuse,
                  );
                  if (!context.mounted) return;
                  if (confirmed) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(misskeyProvider(account))
                          .users
                          .reportAbuse(
                            UsersReportAbuseRequest(
                              userId: appearNote.userId,
                              comment: comment,
                            ),
                          ),
                    );
                  }
                },
              ),
          ],
        ],
      ),
    );
  }
}

class _RenoteSheet extends ConsumerWidget {
  const _RenoteSheet({
    required this.account,
    required this.note,
    required this.disableHeader,
  });

  final Account account;
  final Note note;
  final bool disableHeader;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(pathSegments: ['notes', note.id]);
    final theme = Theme.of(context);

    return ListView(
      shrinkWrap: true,
      children: [
        if (!disableHeader)
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(t.misskey.renoteDetails),
            onTap: () => context.push('/$account/notes/${note.id}'),
          ),
        ListTile(
          leading: const Icon(Icons.link),
          title: Text(t.misskey.copyLinkRenote),
          onTap: () => copyToClipboard(context, url.toString()),
        ),
        if (account.username == note.user.username && note.user.host == null)
          ListTile(
            leading: const Icon(Icons.delete),
            title: Text(t.misskey.unrenote),
            onTap: () async {
              await futureWithDialog(
                context,
                ref
                    .read(misskeyProvider(account))
                    .notes
                    .delete(NotesDeleteRequest(noteId: note.id))
                    .then(
                      (_) => ref
                          .read(notesNotifierProvider(account).notifier)
                          .remove(note.id),
                    ),
              );
              if (!context.mounted) return;
              context.pop();
            },
            iconColor: theme.colorScheme.error,
            textColor: theme.colorScheme.error,
          ),
      ],
    );
  }
}
