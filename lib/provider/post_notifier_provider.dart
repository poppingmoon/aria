import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../extension/community_channel_extension.dart';
import '../extension/me_detailed_extension.dart';
import '../extension/mfm_mention_extension.dart';
import '../extension/note_draft_extension.dart';
import '../extension/note_extension.dart';
import '../extension/notes_create_request_extension.dart';
import '../extension/user_extension.dart';
import '../model/account.dart';
import '../util/extract_mentions.dart';
import '../util/punycode.dart';
import 'account_settings_notifier_provider.dart';
import 'api/channel_notifier_provider.dart';
import 'api/endpoints_notifier_provider.dart';
import 'api/i_notifier_provider.dart';
import 'api/misskey_provider.dart';
import 'note_notifier_provider.dart';
import 'notes_notifier_provider.dart';
import 'parsed_mfm_provider.dart';
import 'shared_preferences_provider.dart';

part 'post_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class PostNotifier extends _$PostNotifier {
  @override
  NoteDraft build(Account account, {String? noteId}) {
    ref.onDispose(() => _timer?.cancel());
    listenSelf((_, next) async {
      MeDetailed? i;
      if (next.user.username != account.username) {
        try {
          i = await ref.read(iNotifierProvider(account).future);
        } catch (_) {}
      }
      Note? reply = next.reply;
      if (next.replyId case final replyId?) {
        if (next.reply?.id != replyId) {
          try {
            reply =
                ref.read(noteNotifierProvider(account, replyId)) ??
                await ref
                    .read(notesNotifierProvider(account).notifier)
                    .show(replyId);
          } catch (_) {}
        }
      }
      Note? renote = next.renote;
      if (next.renoteId case final renoteId?) {
        if (next.renote?.id != renoteId) {
          try {
            renote =
                ref.read(noteNotifierProvider(account, renoteId)) ??
                await ref
                    .read(notesNotifierProvider(account).notifier)
                    .show(renoteId);
          } catch (_) {}
        }
      }
      NoteChannelInfo? channel = next.channel;
      if (next.channelId case final channelId?) {
        if (next.channel?.id != channelId) {
          try {
            channel = await ref
                .read(channelNotifierProvider(account, channelId).future)
                .then((channel) => channel.toNoteChannelInfo());
          } catch (_) {}
        }
      }
      if (i != null ||
          reply != next.reply ||
          renote != next.renote ||
          channel != next.channel) {
        state = next.copyWith(
          userId: i?.id ?? next.userId,
          user: i?.toUserLite() ?? next.user,
          reply: reply,
          renote: renote,
          channel: channel,
        );
      }
    });
    if (noteId != null) {
      final note = ref.read(noteNotifierProvider(account, noteId));
      return note?.toNoteDraft() ?? _defaultDraft;
    }
    if (noteId != null) {
      final note = ref.read(noteNotifierProvider(account, noteId));
      return note?.toNoteDraft() ?? _defaultDraft;
    }
    final draft = ref.watch(sharedPreferencesProvider).getString(_key);
    if (draft != null) {
      try {
        final request = NotesCreateRequest.fromJson(
          jsonDecode(draft) as Map<String, dynamic>,
        );
        return request.toNoteDraft(i: _i);
      } catch (_) {}
    }
    return _defaultDraft;
  }

  String get _key => '$account/draft';

  Misskey get _misskey => ref.read(misskeyProvider(account));

  // ignore: only_use_keep_alive_inside_keep_alive
  MeDetailed? get _i => ref.read(iNotifierProvider(account)).value;

  Timer? _timer;

  bool _saveScheduled = false;

  NoteDraft get _defaultDraft {
    final i = _i;
    final settings = ref.read(accountSettingsNotifierProvider(account));
    final localOnly = settings.rememberNoteVisibility
        ? settings.localOnly
        : settings.defaultNoteLocalOnly;
    final isSilenced = i?.isSilenced ?? false;
    final visibility = NoteVisibility.min(
      settings.rememberNoteVisibility
          ? settings.visibility
          : settings.defaultNoteVisibility,
      isSilenced ? NoteVisibility.home : NoteVisibility.public,
    );
    final reactionAcceptance = settings.reactionAcceptance;
    return NoteDraft(
      id: '',
      createdAt: DateTime.now(),
      userId: i?.id ?? '',
      user: i?.toUserLite() ?? const UserLite(id: '', username: ''),
      localOnly: visibility != NoteVisibility.specified && localOnly,
      visibility: visibility,
      reactionAcceptance: reactionAcceptance,
    );
  }

  void save() {
    _saveScheduled = false;
    _timer?.cancel();
    if (!account.isGuest && noteId == null) {
      ref
          .read(sharedPreferencesProvider)
          .setString(_key, jsonEncode(state.toJson()));
    }
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
      if (ref.read(noteNotifierProvider(account, remoteNoteId)) != null) {
        return remoteNoteId;
      }
      try {
        await ref
            .read(notesNotifierProvider(account).notifier)
            .show(remoteNoteId);
      } catch (_) {}
      return remoteNoteId;
    }
    final response = await _misskey.ap.show(
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

  Future<void> fromDraft(NoteDraft draft, Account origin) async {
    MeDetailed? i = _i;
    try {
      // ignore: only_use_keep_alive_inside_keep_alive
      i ??= await ref.read(iNotifierProvider(account).future);
    } catch (_) {}
    if (account.host == origin.host) {
      if (draft.replyId case final replyId?) {
        final reply = ref.read(noteNotifierProvider(origin, replyId));
        if (reply != null) {
          ref.read(notesNotifierProvider(account).notifier).add(reply);
        }
      }
      if (draft.renoteId case final renoteId?) {
        final renote = ref.read(noteNotifierProvider(origin, renoteId));
        if (renote != null) {
          ref.read(notesNotifierProvider(account).notifier).add(renote);
        }
      }
      state = draft.copyWith(
        userId: i?.id ?? draft.id,
        user: i?.toUserLite() ?? draft.user,
      );
    } else {
      final reply = switch (draft.replyId) {
        final replyId? => ref.read(noteNotifierProvider(origin, replyId)),
        _ => null,
      };
      String? replyId;
      if (reply != null && !reply.localOnly) {
        try {
          replyId = await _getNoteIdFromRemoteNote(origin, reply);
        } catch (_) {}
      }
      final renote = switch (draft.renoteId) {
        final renoteId? => ref.read(noteNotifierProvider(origin, renoteId)),
        _ => null,
      };
      String? renoteId;
      if (renote != null && !renote.localOnly) {
        try {
          renoteId = await _getNoteIdFromRemoteNote(origin, renote);
        } catch (_) {}
      }
      final poll = draft.poll;
      state = draft.copyWith(
        userId: i?.id ?? draft.id,
        user: i?.toUserLite() ?? draft.user,
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
    state = note.toNoteDraft();
    _scheduleSave();
  }

  void reset({bool keepHashtag = false}) {
    state = _defaultDraft.copyWith(hashtag: keepHashtag ? state.hashtag : null);
    ref.read(sharedPreferencesProvider).remove(_key);
  }

  Future<Note> post({List<String>? fileIds}) async {
    final draft = state.copyWith(fileIds: fileIds);
    if (noteId case final noteId?) {
      List<String>? endpoints;
      try {
        // ignore: only_use_keep_alive_inside_keep_alive
        endpoints = await ref.read(
          endpointsNotifierProvider(account.host).future,
        );
      } catch (_) {}
      if (endpoints?.contains('notes/update') ?? true) {
        await _misskey.notes.update(draft.toNotesUpdateRequest(noteId));
        final note = draft.toNote().copyWith(id: noteId);
        ref.read(notesNotifierProvider(account).notifier).add(note);
        return note;
      } else {
        final response = await _misskey.notes.edit(
          draft.toNotesEditRequest(noteId),
        );
        ref.read(notesNotifierProvider(account).notifier).add(response);
        return response;
      }
    } else {
      if (draft.scheduledAt != null) {
        MeDetailed? i = _i;
        try {
          // ignore: only_use_keep_alive_inside_keep_alive
          i ??= await ref.read(iNotifierProvider(account).future);
        } catch (_) {}
        if (i?.policies?.canScheduleNote ?? false) {
          await _misskey.notes.create(draft.toNotesCreateRequest());
          reset(keepHashtag: true);
          return draft.toNote();
        } else if (i?.policies?.scheduleNoteMax case final scheduleNoteMax?
            when scheduleNoteMax > 0) {
          await _misskey.notes.schedule.create(
            draft.toNotesScheduleCreateRequest(),
          );
          reset(keepHashtag: true);
          return draft.toNote();
        }
      }
      final response = await _misskey.notes.create(
        draft.copyWith(scheduledAt: null).toNotesCreateRequest(),
      );
      if (response != null) {
        ref.read(notesNotifierProvider(account).notifier).add(response);
      }
      reset(keepHashtag: true);
      return response ?? draft.toNote();
    }
  }

  void setUser(MeDetailed user) {
    state = state.copyWith(userId: user.id, user: user.toUserLite());
  }

  void setVisibility(NoteVisibility visibility) {
    if (state.channelId != null) {
      state = state.copyWith(
        visibility: NoteVisibility.public,
        visibleUserIds: [],
      );
    } else if (visibility == NoteVisibility.specified) {
      state = state.copyWith(
        visibility: NoteVisibility.specified,
        visibleUserIds: [],
        channelId: null,
        localOnly: false,
      );
    } else {
      state = state.copyWith(visibility: visibility, visibleUserIds: []);
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
      visibleUserIds: {
        ...?state.visibleUserIds,
        ...users.map((user) => user.id),
      }.toList(),
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
      visibleUserIds: state.visibleUserIds
          ?.where((id) => id != userId)
          .toList(),
    );
    _scheduleSave();
  }

  void setCw(String? cw) {
    if (cw == null || cw.isEmpty) {
      if (state.cw != null) {
        state = state.copyWith(cw: null);
      } else {
        return;
      }
    } else if (cw != state.cw) {
      state = state.copyWith(cw: cw);
    } else {
      return;
    }
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

  void setReply(Note reply) {
    if (state.replyId == reply.id) {
      state = state.copyWith(reply: reply);
      _scheduleSave();
      return;
    }

    final visibility = reply.channelId != null
        ? NoteVisibility.public
        : NoteVisibility.min(
            state.visibility ?? NoteVisibility.public,
            reply.visibility ?? NoteVisibility.public,
          );
    final i = _i;
    final visibleUserIds = {
      ...?state.visibleUserIds,
      ...reply.visibleUserIds.where(
        (userId) => userId != i?.id && userId != reply.userId,
      ),
      if (reply.userId != i?.id) reply.userId,
    }.toList();
    final keepCw = ref.read(accountSettingsNotifierProvider(account)).keepCw;
    final localHost = toUnicode(account.host.toLowerCase());
    final replyMentions = switch (reply.text) {
      final text? when text.isNotEmpty => extractMentions(
        ref.read(parsedMfmProvider(text)),
      ).map((mention) => mention.normalize(localHost)),
      _ => null,
    };
    final nodes = switch (state.text) {
      final text? when text.isNotEmpty => ref.read(parsedMfmProvider(text)),
      _ => null,
    };
    final isMentionOnly =
        nodes != null &&
        nodes.isNotEmpty &&
        nodes.every(
          (node) => switch (node) {
            MfmMention() => true,
            MfmText(:final text) => text.trim().isEmpty,
            _ => false,
          },
        );
    final textMentions = nodes != null
        ? extractMentions(nodes).map((mention) => mention.normalize(localHost))
        : null;
    final additionalMentions = HashSet<MfmMention>(
      equals: (p0, p1) => (p0.username, p0.host) == (p1.username, p1.host),
      hashCode: (p0) => (p0.username, p0.host).hashCode,
    );
    for (final mention in [
      ...?replyMentions,
      MfmMention(
        username: reply.user.username.toLowerCase(),
        host: reply.user.host?.toLowerCase(),
        acct: reply.user.acct,
      ),
    ]) {
      if ((textMentions?.every(
                (e) => (mention.username, mention.host) != (e.username, e.host),
              ) ??
              true) &&
          (mention.username != account.username?.toLowerCase() ||
              mention.host != null)) {
        additionalMentions.add(mention);
      }
    }
    final text = [
      ...additionalMentions.map((mention) => mention.acct),
      if (!isMentionOnly) state.text ?? '' else '',
    ].join(' ');
    state = state.copyWith(
      visibility: visibility,
      visibleUserIds: visibleUserIds,
      localOnly:
          visibility != NoteVisibility.specified &&
          ((state.localOnly ?? false) || reply.localOnly),
      cw: keepCw ? (reply.cw ?? state.cw) : state.cw,
      replyId: reply.id,
      reply: reply,
      channelId: visibility != NoteVisibility.specified
          ? reply.channelId ?? state.channelId
          : null,
      channel: visibility != NoteVisibility.specified
          ? reply.channel ?? state.channel
          : null,
      text: text,
    );
    _scheduleSave();
  }

  void clearReply() {
    final defaultRequest = _defaultDraft;
    state = state.copyWith(
      visibility: defaultRequest.visibility,
      localOnly: defaultRequest.localOnly,
      replyId: null,
      reply: null,
    );
    _scheduleSave();
  }

  void setRenote(Note renote) {
    final visibility = NoteVisibility.min(
      state.visibility ?? NoteVisibility.public,
      renote.visibility ?? NoteVisibility.public,
    );
    state = state.copyWith(
      visibility: visibility,
      localOnly:
          visibility != NoteVisibility.specified &&
          ((state.localOnly ?? false) || renote.localOnly),
      renoteId: renote.id,
      renote: renote,
      channelId: visibility != NoteVisibility.specified
          ? renote.channelId ?? state.channelId
          : null,
      channel: visibility != NoteVisibility.specified
          ? renote.channel ?? state.channel
          : null,
    );
    _scheduleSave();
  }

  void clearRenote() {
    final defaultRequest = _defaultDraft;
    state = state.copyWith(
      visibility: defaultRequest.visibility,
      localOnly: defaultRequest.localOnly,
      renoteId: null,
      renote: null,
    );
    _scheduleSave();
  }

  void setChannel(NoteChannelInfo channel) {
    state = state.copyWith(
      channelId: channel.id,
      channel: channel,
      localOnly: true,
      visibility: NoteVisibility.public,
      visibleUserIds: [],
    );
    _scheduleSave();
  }

  void clearChannel() {
    final defaultRequest = _defaultDraft;
    state = state.copyWith(
      channelId: null,
      channel: null,
      visibility: defaultRequest.visibility,
      localOnly: defaultRequest.localOnly,
    );
    _scheduleSave();
  }

  void setText(String? text) {
    if (text == null || text.isEmpty) {
      if (state.text != null) {
        state = state.copyWith(text: null);
      } else {
        return;
      }
    } else if (text != state.text) {
      state = state.copyWith(text: text);
    } else {
      return;
    }
    _scheduleSave();
  }

  void setHashtag(String? hashtag) {
    if (hashtag == null || hashtag.isEmpty) {
      if (state.hashtag != null) {
        state = state.copyWith(hashtag: hashtag);
      } else {
        return;
      }
    } else if (hashtag != state.hashtag) {
      state = state.copyWith(hashtag: hashtag);
    } else {
      return;
    }
    _scheduleSave();
  }

  void togglePoll() {
    if (state.poll != null) {
      state = state.copyWith(poll: null);
    } else {
      state = state.copyWith(
        poll: const NoteDraftPoll(multiple: false, choices: ['', '']),
      );
    }
    _scheduleSave();
  }

  void addChoice(String choice) {
    final poll = state.poll;
    state = state.copyWith(
      poll:
          poll?.copyWith(choices: [...poll.choices, choice]) ??
          NoteDraftPoll(multiple: false, choices: [choice]),
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
      poll: state.poll?.copyWith(expiresAt: null, expiredAfter: null),
    );
    _scheduleSave();
  }

  void setExpiresAt(DateTime expiresAt) {
    state = state.copyWith(
      poll: state.poll?.copyWith(expiresAt: expiresAt, expiredAfter: null),
    );
    _scheduleSave();
  }

  void setExpiredAfter(Duration expiredAfter) {
    state = state.copyWith(
      poll: state.poll?.copyWith(expiresAt: null, expiredAfter: expiredAfter),
    );
    _scheduleSave();
  }

  void setScheduledAt(DateTime? scheduledAt) {
    state = state.copyWith(scheduledAt: scheduledAt);
    _scheduleSave();
  }
}
