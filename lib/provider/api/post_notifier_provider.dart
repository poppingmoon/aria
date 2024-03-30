import 'dart:async';
import 'dart:convert';

import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../extension/user_extension.dart';
import '../../model/account.dart';
import '../../util/extract_mentions.dart';
import '../account_settings_notifier_provider.dart';
import '../note_provider.dart';
import '../notes_notifier_provider.dart';
import '../shared_preferences_provider.dart';
import 'i_notifier_provider.dart';
import 'misskey_provider.dart';

part 'post_notifier_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [note])
class PostNotifier extends _$PostNotifier {
  @override
  NotesCreateRequest build(Account account) {
    ref.onDispose(() => _timer?.cancel());
    final draft = ref.watch(sharedPreferencesProvider).getString(_key);
    if (draft != null) {
      try {
        return NotesCreateRequest.fromJson(
          jsonDecode(draft) as Map<String, dynamic>,
        );
      } catch (_) {}
    }
    return _defaultRequest;
  }

  String get _key => '$account/draft';

  Timer? _timer;

  bool _saveScheduled = false;

  NotesCreateRequest get _defaultRequest {
    final localOnly = ref.read(
      accountSettingsNotifierProvider(account).select(
        (settings) => settings.rememberNoteVisibility
            ? settings.localOnly
            : settings.defaultNoteLocalOnly,
      ),
    );
    final isSilenced =
        ref.read(iNotifierProvider(account)).valueOrNull?.isSilenced ?? false;
    final visibility = NoteVisibility.min(
      ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.visibility
              : settings.defaultNoteVisibility,
        ),
      ),
      isSilenced ? NoteVisibility.home : NoteVisibility.public,
    );
    final reactionAcceptance = ref.read(
      accountSettingsNotifierProvider(account).select(
        (settings) => settings.reactionAcceptance,
      ),
    );
    return NotesCreateRequest(
      localOnly: localOnly,
      visibility: visibility,
      reactionAcceptance: reactionAcceptance,
    );
  }

  void save() {
    _saveScheduled = false;
    _timer?.cancel();
    ref
        .read(sharedPreferencesProvider)
        .setString(_key, jsonEncode(state.toJson()));
  }

  void _scheduleSave() {
    if (!_saveScheduled) {
      _saveScheduled = true;
      _timer?.cancel();
      _timer = Timer(const Duration(seconds: 3), save);
    }
  }

  Future<String> _getNoteIdFromRemoteNote(
    Account origin,
    Note remoteNote,
  ) async {
    final remoteUrl = remoteNote.url ?? remoteNote.uri;
    if (account.host == remoteNote.user.host && remoteUrl != null) {
      final remoteNoteId = remoteUrl.pathSegments.last;
      if (ref.read(noteProvider(account, remoteNoteId)) != null) {
        return remoteNoteId;
      }
      try {
        final note = await ref
            .read(misskeyProvider(account))
            .notes
            .show(NotesShowRequest(noteId: remoteNoteId));
        ref.read(notesNotifierProvider(account).notifier).add(note);
      } catch (_) {}
      return remoteNoteId;
    }
    final response = await ref.read(misskeyProvider(account)).ap.show(
          ApShowRequest(
            uri: remoteUrl ?? Uri.https(origin.host, 'notes/${remoteNote.id}'),
          ),
        );
    try {
      final note = Note.fromJson(response.object);
      ref.read(notesNotifierProvider(account).notifier).add(note);
    } catch (_) {}
    return response.object['id'] as String;
  }

  Future<void> fromRequest(NotesCreateRequest request, Account origin) async {
    if (account.host == origin.host) {
      state = request;
    } else {
      final reply = request.replyId != null
          ? ref.read(noteProvider(origin, request.replyId!))
          : null;
      String? replyId;
      if (reply != null && !reply.localOnly) {
        try {
          replyId = await _getNoteIdFromRemoteNote(origin, reply);
        } catch (_) {}
      }
      final renote = request.renoteId != null
          ? ref.read(noteProvider(origin, request.renoteId!))
          : null;
      String? renoteId;
      if (renote != null && !renote.localOnly) {
        try {
          renoteId = await _getNoteIdFromRemoteNote(origin, renote);
        } catch (_) {}
      }
      final poll = request.poll;
      state = request.copyWith(
        visibleUserIds: null,
        replyId: replyId,
        renoteId: renoteId,
        channelId: null,
        fileIds: null,
        poll: poll?.copyWith(
          expiresAt: poll.expiresAt?.isAfter(DateTime.now()) ?? false
              ? poll.expiresAt
              : null,
        ),
      );
    }
    _scheduleSave();
  }

  void fromNote(Note note) {
    final poll = note.poll;
    state = NotesCreateRequest(
      visibility: note.visibility,
      visibleUserIds: note.visibleUserIds,
      cw: note.cw,
      localOnly: note.localOnly,
      reactionAcceptance: note.reactionAcceptance,
      replyId: note.replyId,
      renoteId: note.renoteId,
      channelId: note.channelId,
      text: note.text,
      poll: poll != null
          ? NotesCreatePollRequest(
              choices: poll.choices.map((choice) => choice.text).toList(),
              multiple: poll.multiple,
              expiresAt: poll.expiresAt?.isAfter(DateTime.now()) ?? false
                  ? poll.expiresAt
                  : null,
            )
          : null,
    );
    _scheduleSave();
  }

  void reset() {
    state = _defaultRequest;
    ref.read(sharedPreferencesProvider).remove(_key);
  }

  Future<bool> post({List<String>? fileIds}) async {
    await ref
        .read(misskeyProvider(account))
        .notes
        .create(state.copyWith(fileIds: fileIds));
    reset();
    return true;
  }

  void setVisibility(NoteVisibility visibility) {
    if (state.channelId != null) {
      state = state.copyWith(visibility: NoteVisibility.public);
    } else if (visibility == NoteVisibility.specified) {
      state = state.copyWith(
        visibility: NoteVisibility.specified,
        localOnly: false,
      );
    } else {
      state = state.copyWith(visibility: visibility);
    }
    if (ref
        .read(accountSettingsNotifierProvider(account))
        .rememberNoteVisibility) {
      ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setVisibility(visibility);
    }
    _scheduleSave();
  }

  void addVisibleUser(User user) {
    state = state.copyWith(
      visibleUserIds: {...?state.visibleUserIds, user.id}.toList(),
      text: state.text?.contains(user.acct) ?? false
          ? state.text
          : '${user.acct} ${state.text ?? ''}',
    );
    _scheduleSave();
  }

  void addVisibleUsers(Iterable<User> users) {
    state = state.copyWith(
      visibleUserIds:
          {...?state.visibleUserIds, ...users.map((user) => user.id)}.toList(),
      text: [
        ...users
            .map((user) => user.acct)
            .where((acct) => !(state.text?.contains(acct) ?? false)),
        state.text ?? '',
      ].join(' '),
    );
    _scheduleSave();
  }

  void removeVisibleUser(String userId) {
    state = state.copyWith(
      visibleUserIds:
          state.visibleUserIds?.where((id) => id != userId).toList(),
    );
    _scheduleSave();
  }

  void setCw(String? cw) {
    state = state.copyWith(cw: cw?.isNotEmpty ?? false ? cw : null);
    _scheduleSave();
  }

  void setLocalOnly(bool localOnly) {
    state = state.copyWith(localOnly: localOnly);
    if (ref
        .read(accountSettingsNotifierProvider(account))
        .rememberNoteVisibility) {
      ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setLocalOnly(localOnly);
    }
    _scheduleSave();
  }

  void setReactionAcceptance(ReactionAcceptance? reactionAcceptance) {
    state = state.copyWith(reactionAcceptance: reactionAcceptance);
    if (ref
        .read(accountSettingsNotifierProvider(account))
        .rememberNoteVisibility) {
      ref
          .read(accountSettingsNotifierProvider(account).notifier)
          .setReactionAcceptance(reactionAcceptance);
    }
    _scheduleSave();
  }

  void setReply(Note? reply) {
    if (reply == null) {
      state = state.copyWith(replyId: null);
    } else {
      final visibility = NoteVisibility.min(
        state.visibility ?? NoteVisibility.public,
        reply.visibility ?? NoteVisibility.public,
      );
      final i = ref.read(iNotifierProvider(account)).valueOrNull;
      final visibleUserIds = {
        ...?state.visibleUserIds,
        ...reply.visibleUserIds
            .where((userId) => userId != i?.id && userId != reply.userId),
        if (reply.userId != i?.id) reply.userId,
      }.toList();
      final keepCw = ref.read(accountSettingsNotifierProvider(account)).keepCw;
      final mentions =
          extractMentions(const MfmParser().parse(reply.text ?? ''));
      final text = [
        ...{...mentions.map((mention) => mention.acct), reply.user.acct}
            .where((acct) => acct != '@${account.username}'),
        state.text ?? '',
      ].join(' ');
      state = state.copyWith(
        visibility: visibility,
        visibleUserIds: visibleUserIds,
        localOnly: (state.localOnly ?? false) || reply.localOnly,
        cw: keepCw ? (reply.cw ?? state.cw) : state.cw,
        replyId: reply.id,
        channelId: reply.channelId ?? state.channelId,
        text: text,
      );
    }
    _scheduleSave();
  }

  void clearReply() {
    state = state.copyWith(
      visibility: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.visibility
              : settings.defaultNoteVisibility,
        ),
      ),
      localOnly: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.localOnly
              : settings.defaultNoteLocalOnly,
        ),
      ),
      replyId: null,
    );
    _scheduleSave();
  }

  void setRenote(Note? renote) {
    if (renote == null) {
      state = state.copyWith(renoteId: null);
    } else {
      final visibility = NoteVisibility.min(
        state.visibility ?? NoteVisibility.public,
        renote.visibility ?? NoteVisibility.public,
      );
      state = state.copyWith(
        visibility: visibility,
        localOnly: (state.localOnly ?? false) || renote.localOnly,
        renoteId: renote.id,
        channelId: renote.channelId ?? state.channelId,
      );
    }
    _scheduleSave();
  }

  void clearRenote() {
    state = state.copyWith(
      visibility: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.visibility
              : settings.defaultNoteVisibility,
        ),
      ),
      localOnly: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.localOnly
              : settings.defaultNoteLocalOnly,
        ),
      ),
      renoteId: null,
    );
    _scheduleSave();
  }

  void setChannel(String? channelId) {
    state = state.copyWith(
      channelId: channelId,
      localOnly: true,
      visibility: channelId != null ? NoteVisibility.public : state.visibility,
    );
    _scheduleSave();
  }

  void clearChannel() {
    state = state.copyWith(
      channelId: null,
      localOnly: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.localOnly
              : settings.defaultNoteLocalOnly,
        ),
      ),
      visibility: ref.read(
        accountSettingsNotifierProvider(account).select(
          (settings) => settings.rememberNoteVisibility
              ? settings.visibility
              : settings.defaultNoteVisibility,
        ),
      ),
    );
    _scheduleSave();
  }

  void setText(String? text) {
    state = state.copyWith(text: text?.isNotEmpty ?? false ? text : null);
    _scheduleSave();
  }

  void togglePoll() {
    if (state.poll != null) {
      state = state.copyWith(poll: null);
    } else {
      state = state.copyWith(
        poll: const NotesCreatePollRequest(
          choices: ['', ''],
          multiple: false,
        ),
      );
    }
    _scheduleSave();
  }

  void addChoice(String choice) {
    final poll = state.poll;
    state = state.copyWith(
      poll: poll?.copyWith(choices: [...poll.choices, choice]) ??
          NotesCreatePollRequest(choices: [choice]),
    );
    _scheduleSave();
  }

  void setChoice(int index, String choice) {
    final poll = state.poll;
    state = state.copyWith(
      poll: poll?.copyWith(
        choices: [
          ...poll.choices.sublist(0, index),
          choice,
          ...poll.choices.sublist(index + 1, poll.choices.length),
        ],
      ),
    );
    _scheduleSave();
  }

  void removeChoice(int index) {
    final poll = state.poll;
    state = state.copyWith(
      poll: poll?.copyWith(
        choices: [
          ...poll.choices.sublist(0, index),
          ...poll.choices.sublist(index + 1, poll.choices.length),
        ],
      ),
    );
    _scheduleSave();
  }

  void setMultiple(bool multiple) {
    state = state.copyWith(poll: state.poll?.copyWith(multiple: multiple));
    _scheduleSave();
  }

  void clearExpiration() {
    state = state.copyWith(
      poll: state.poll?.copyWith(
        expiresAt: null,
        expiredAfter: null,
      ),
    );
    _scheduleSave();
  }

  void setExpiresAt(DateTime expiresAt) {
    state = state.copyWith(
      poll: state.poll?.copyWith(
        expiresAt: expiresAt,
        expiredAfter: null,
      ),
    );
    _scheduleSave();
  }

  void setExpiredAfter(Duration expiredAfter) {
    state = state.copyWith(
      poll: state.poll?.copyWith(
        expiresAt: null,
        expiredAfter: expiredAfter,
      ),
    );
    _scheduleSave();
  }
}
