import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart' hide Clip;
import 'package:share_plus/share_plus.dart';

import '../../extension/note_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../provider/api/endpoints_provider.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/api/misskey_provider.dart';
import '../../provider/api/note_state_provider.dart';
import '../../provider/appear_note_provider.dart';
import '../../provider/note_provider.dart';
import '../../provider/notes_notifier_provider.dart';
import '../../util/copy_text.dart';
import '../../util/future_with_dialog.dart';
import '../../util/launch_url.dart';
import '../dialog/clip_dialog.dart';
import '../dialog/confirmation_dialog.dart';
import '../dialog/delete_and_edit_dialog.dart';
import '../dialog/text_field_dialog.dart';
import 'account_preview.dart';
import 'note_fallback_widget.dart';
import 'translated_note_sheet.dart';
import 'user_sheet.dart';

class NoteSheet extends ConsumerWidget {
  const NoteSheet({
    super.key,
    required this.account,
    required this.noteId,
    this.hideDetails = false,
    this.focusPostForm,
  });

  final Account account;
  final String noteId;
  final bool hideDetails;
  final void Function()? focusPostForm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(noteProvider(account, noteId));
    final appearNote = ref.watch(appearNoteProvider(account, noteId));
    if (note == null || appearNote == null) {
      return NoteFallbackWidget(account: account, noteId: noteId);
    }
    final url = Uri.https(account.host, '/notes/${appearNote.id}');
    final i = ref.watch(iNotifierProvider(account)).valueOrNull;
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final canUseTranslator = (i?.policies?.canUseTranslator ?? false) &&
        (meta?.translatorAvailable ?? false);
    final canEditNote = i != null &&
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
          if (!hideDetails)
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(t.misskey.details),
              onTap: () => context.push('/$account/notes/$noteId'),
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
                  await context.push('/$destination/notes/$noteId');
                  return;
                }
                if (destination.host == appearNote.user.host &&
                    remoteNoteId != null) {
                  await context.push('/$destination/notes/$remoteNoteId');
                  return;
                }
                final response = await futureWithDialog(
                  context,
                  ref.read(misskeyProvider(destination)).ap.show(
                        ApShowRequest(
                          uri: remoteUrl ??
                              Uri(
                                scheme: 'https',
                                host: account.host,
                                pathSegments: ['notes', appearNote.id],
                              ),
                        ),
                      ),
                );
                if (!context.mounted) return;
                if (response != null) {
                  try {
                    final note = Note.fromJson(response.object);
                    ref
                        .read(notesNotifierProvider(destination).notifier)
                        .add(note);
                  } catch (_) {}
                  await context
                      .push('/$destination/notes/${response.object['id']}');
                }
              },
            ),
          ListTile(
            leading: const Icon(Icons.share),
            title: Text(t.misskey.share),
            onTap: () {
              if (appearNote.text != null) {
                Share.share('${appearNote.text} $url');
              } else {
                Share.shareUri(url);
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(t.misskey.user),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => showModalBottomSheet<void>(
              context: context,
              builder: (context) => UserSheet(
                account: account,
                userId: appearNote.userId,
              ),
              clipBehavior: Clip.hardEdge,
              isScrollControlled: true,
            ),
          ),
          if (appearNote.text != null)
            ListTile(
              leading: const Icon(Icons.translate),
              title: Text(t.misskey.translate),
              trailing:
                  !canUseTranslator ? const Icon(Icons.open_in_browser) : null,
              onTap: () {
                if (canUseTranslator) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (context) => TranslatedNoteSheet(
                      account: account,
                      note: appearNote,
                    ),
                  );
                } else {
                  launchUrl(
                    ref,
                    Uri.https(
                      'translate.google.com',
                      '',
                      {
                        'text': [appearNote.cw, appearNote.text]
                            .nonNulls
                            .join('\n'),
                      },
                    ),
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
                          noteStateNotifierProvider(account, appearNote.id)
                              .notifier,
                        )
                        .unfavorite(),
                    message: t.aria.unfavorited,
                  );
                } else {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(account, appearNote.id)
                              .notifier,
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
                          noteStateNotifierProvider(account, appearNote.id)
                              .notifier,
                        )
                        .unmuteThread(),
                  );
                } else {
                  await futureWithDialog(
                    context,
                    ref
                        .read(
                          noteStateNotifierProvider(account, appearNote.id)
                              .notifier,
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
              ListTile(
                leading: const Icon(Icons.push_pin),
                title: Text(
                  i?.pinnedNoteIds?.contains(appearNote.id) ?? false
                      ? t.misskey.unpin
                      : t.misskey.pin,
                ),
                onTap: () async {
                  if (i?.pinnedNoteIds?.contains(appearNote.id) ?? false) {
                    await futureWithDialog(
                      context,
                      ref
                          .read(iNotifierProvider(account).notifier)
                          .unpin(noteId),
                    );
                  } else {
                    await futureWithDialog(
                      context,
                      ref.read(iNotifierProvider(account).notifier).pin(noteId),
                    );
                  }
                },
              ),
            ListTile(
              leading: const Icon(Icons.attach_file),
              title: Text(t.misskey.clip),
              onTap: () => showDialog<void>(
                context: context,
                builder: (context) =>
                    ClipDialog(account: account, noteId: appearNote.id),
              ),
            ),
            if (appearNote.user.host == null &&
                appearNote.user.username == account.username) ...[
              if (canEditNote)
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: Text(t.misskey.edit),
                  onTap: () => context.push('/$account/notes/$noteId/edit'),
                ),
              ListTile(
                leading: const Icon(Icons.edit_outlined),
                title: Text(t.misskey.deleteAndEdit),
                onTap: () {
                  context.pop();
                  showDialog<void>(
                    context: context,
                    builder: (context) => DeleteAndEditDialog(
                      account: account,
                      note: appearNote,
                    ),
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
                      if ((appearNote.url ?? appearNote.uri) != null)
                        'Note: ${appearNote.url ?? appearNote.uri}',
                      'Local Note: https://${account.host}/${appearNote.id}',
                      '-----',
                      '',
                    ].join('\n'),
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
                      ref.read(misskeyProvider(account)).users.reportAbuse(
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
