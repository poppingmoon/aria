import 'dart:async';
import 'dart:collection';
import 'dart:convert';

import 'package:collection/collection.dart';
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
import '../model/tab_settings.dart';
import '../util/extract_mentions.dart';
import '../util/punycode.dart';
import 'account_settings_notifier_provider.dart';
import 'api/channel_notifier_provider.dart';
import 'api/endpoints_notifier_provider.dart';
import 'api/i_notifier_provider.dart';
import 'api/misskey_provider.dart';
import 'note_draft_repository_provider.dart';
import 'note_notifier_provider.dart';
import 'notes_notifier_provider.dart';
import 'parsed_mfm_provider.dart';
import 'shared_preferences_provider.dart';
import 'timeline_tab_settings_provider.dart';

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
        state = state.copyWith(
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
      return note?.toNoteDraft() ?? _getDefaultDraft(null);
    }
    final tabSettings = _tabSettings;
    final defaultDraft = _getDefaultDraft(tabSettings);
    if (tabSettings?.account == account) {
      Future(() async {
        final draft = await _loadDraft(tabSettings);
        if (draft != null && state == defaultDraft) {
          state = draft;
        }
      });
    }
    return defaultDraft;
  }

  String get _key => '$account/draft';

  Misskey get _misskey => ref.read(misskeyProvider(account));

  // ignore: only_use_keep_alive_inside_keep_alive
  MeDetailed? get _i => ref.read(iNotifierProvider(account)).value;

  TabSettings? get _tabSettings => ref.read(timelineTabSettingsProvider);

  Timer? _timer;

  bool _saveScheduled = false;

  NoteDraft _getDefaultDraft(TabSettings? tabSettings) {
    final i = _i;
    final settings = ref.read(accountSettingsNotifierProvider(account));
    final channelId = tabSettings?.account.host == account.host
        ? tabSettings?.channelId
        : null;
    final isSilenced = i?.isSilenced ?? false;
    final visibility = channelId != null
        ? NoteVisibility.public
        : NoteVisibility.min(
            settings.rememberNoteVisibility
                ? settings.visibility
                : settings.defaultNoteVisibility,
            isSilenced ? NoteVisibility.home : NoteVisibility.public,
          );
    final localOnly =
        channelId != null ||
        (visibility != NoteVisibility.specified &&
            (settings.rememberNoteVisibility
                ? settings.localOnly
                : settings.defaultNoteLocalOnly));
    final reactionAcceptance = settings.reactionAcceptance;
    return NoteDraft(
      id: '',
      createdAt: DateTime.now(),
      userId: i?.id ?? '',
      user: i?.toUserLite() ?? const UserLite(id: '', username: ''),
      visibility: visibility,
      channelId: channelId,
      localOnly: localOnly,
      reactionAcceptance: reactionAcceptance,
    );
  }

  NoteDraft _merge(NoteDraft draft) {
    final visibility = draft.channelId != null
        ? NoteVisibility.public
        : NoteVisibility.min(
            state.visibility ?? NoteVisibility.public,
            draft.visibility ?? NoteVisibility.public,
          );
    final localOnly =
        draft.channelId != null ||
        (visibility != NoteVisibility.specified &&
            ((state.localOnly ?? false) || (draft.localOnly ?? false)));
    final reply = switch (state.reply) {
      final reply?
          when (reply.visibility ?? NoteVisibility.public).priority <=
                  visibility.priority &&
              (reply.user.host == null || !localOnly) =>
        reply,
      _ => null,
    };
    final renote = switch (state.renote) {
      final renote?
          when (renote.visibility ?? NoteVisibility.public).priority <=
                  visibility.priority &&
              (renote.user.host == null || !localOnly) &&
              ((renote.channel?.allowRenoteToExternal ?? true) ||
                  draft.channelId == renote.channelId) =>
        renote,
      _ => null,
    };
    return state.copyWith(
      text: state.text ?? draft.text,
      cw: state.cw ?? draft.cw,
      replyId: reply?.id,
      reply: reply,
      renoteId: renote?.id,
      renote: renote,
      fileIds: state.fileIds?.isNotEmpty ?? false
          ? state.fileIds
          : draft.fileIds,
      files: state.fileIds?.isNotEmpty ?? false
          ? const ListEquality<String>().equals(
                  state.files?.map((file) => file.id).toList(),
                  state.fileIds,
                )
                ? state.files
                : null
          : const ListEquality<String>().equals(
              draft.files?.map((file) => file.id).toList(),
              draft.fileIds,
            )
          ? draft.files
          : null,
      hashtag: state.hashtag ?? draft.hashtag,
      poll: state.poll ?? draft.poll,
      channelId: draft.channelId,
      channel: draft.channel?.id == draft.channelId ? draft.channel : null,
      localOnly: localOnly,
    );
  }

  Future<NoteDraft?> _loadDraft(TabSettings? tabSettings) async {
    final repo = await ref.read(noteDraftRepositoryProvider.future);
    final draft = await repo.loadDraft(
      account: account,
      tabId: tabSettings?.id,
    );
    if (draft != null) {
      return draft;
    }

    // Fallback for older format.
    final oldDraft = ref.read(sharedPreferencesProvider).getString(_key);
    if (oldDraft != null) {
      try {
        final request = NotesCreateRequest.fromJson(
          jsonDecode(oldDraft) as Map<String, dynamic>,
        );
        return request.toNoteDraft(i: _i);
      } catch (_) {}
    }
    return null;
  }

  Future<void> _saveDraft(TabSettings? tabSettings) async {
    _saveScheduled = false;
    _timer?.cancel();
    if (account.isGuest || noteId != null) {
      return;
    }
    final repo = await ref.read(noteDraftRepositoryProvider.future);
    if (state.replyId != null || state.renoteId != null) {
      await repo.saveDraft(
        account: account,
        replyId: state.replyId,
        renoteId: state.renoteId,
        draft: state.copyWith(createdAt: DateTime.now()),
      );
    } else if (state.channelId != tabSettings?.channelId) {
      await repo.saveDraft(
        account: account,
        channelId: state.channelId,
        draft: state.copyWith(createdAt: DateTime.now()),
      );
    } else if (tabSettings != null && tabSettings.account == account) {
      await repo.saveDraft(
        account: account,
        tabId: tabSettings.id,
        draft: state.copyWith(createdAt: DateTime.now()),
      );
    } else {
      await repo.saveDraft(
        account: account,
        draft: state.copyWith(createdAt: DateTime.now()),
      );
    }
  }

  Future<void> save() async {
    await _saveDraft(_tabSettings);
  }

  void _scheduleSave() {
    if (!_saveScheduled) {
      _saveScheduled = true;
      _timer?.cancel();
      _timer = Timer(const Duration(seconds: 3), save);
    }
  }

  Future<Note> _getNoteFromRemoteNote(Account origin, Note remoteNote) async {
    final remoteUrl = remoteNote.url ?? remoteNote.uri;
    if (account.host == remoteNote.user.host && remoteUrl != null) {
      final remoteNoteId = remoteUrl.pathSegments.last;
      return ref.read(noteNotifierProvider(account, remoteNoteId)) ??
          await ref
              .read(notesNotifierProvider(account).notifier)
              .show(remoteNoteId);
    }
    final response = await _misskey.ap.show(
      ApShowRequest(
        uri: (remoteUrl ?? Uri.https(origin.host, 'notes/${remoteNote.id}'))
            .toString(),
      ),
    );
    final note = Note.fromJson(response.object);
    ref.read(notesNotifierProvider(account).notifier).add(note);
    return note;
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
      final originReply = switch (draft.replyId) {
        final replyId? => ref.read(noteNotifierProvider(origin, replyId)),
        _ => null,
      };
      Note? reply;
      if (originReply != null && !originReply.localOnly) {
        try {
          reply = await _getNoteFromRemoteNote(origin, originReply);
        } catch (_) {}
      }
      final originRenote = switch (draft.renoteId) {
        final renoteId? => ref.read(noteNotifierProvider(origin, renoteId)),
        _ => null,
      };
      Note? renote;
      if (originRenote != null && !originRenote.localOnly) {
        try {
          renote = await _getNoteFromRemoteNote(origin, originRenote);
        } catch (_) {}
      }
      final poll = draft.poll;
      state = draft.copyWith(
        userId: i?.id ?? draft.id,
        user: i?.toUserLite() ?? draft.user,
        visibleUserIds: null,
        replyId: reply?.id,
        reply: reply,
        renoteId: renote?.id,
        renote: renote,
        channelId: null,
        channel: null,
        fileIds: null,
        files: null,
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

  Future<void> switchTab(TabSettings prev, TabSettings next) async {
    if (prev.account == account && _saveScheduled) {
      await _saveDraft(prev);
    }
    if (next.account == account) {
      final draft = await _loadDraft(next);
      if (!(draft?.canPost ?? false) && state.canPost) {
        state = _merge(draft ?? _getDefaultDraft(next));
      } else {
        state = draft ?? _getDefaultDraft(next);
      }
    }
  }

  Future<void> reset({bool keepHashtag = false}) async {
    _saveScheduled = false;
    _timer?.cancel();
    final draft = state;
    final tabSettings = _tabSettings;
    final defaultDraft = _getDefaultDraft(tabSettings);
    state = defaultDraft.copyWith(
      hashtag: keepHashtag ? draft.hashtag : null,
      channel: defaultDraft.channelId == draft.channel?.id
          ? draft.channel
          : null,
    );

    final repo = await ref.read(noteDraftRepositoryProvider.future);
    if (draft.replyId != null || draft.renoteId != null) {
      await repo.deleteDraft(
        account: account,
        replyId: draft.replyId,
        renoteId: draft.renoteId,
      );
    } else if (draft.channelId != tabSettings?.channelId) {
      await repo.deleteDraft(account: account, channelId: draft.channelId);
    } else if (tabSettings != null && tabSettings.account == account) {
      await repo.deleteDraft(account: account, tabId: tabSettings.id);
    } else {
      await repo.deleteDraft(account: account);
    }

    await ref.read(sharedPreferencesProvider).remove(_key);
  }

  Future<Note> post() async {
    if (noteId case final noteId?) {
      List<String>? endpoints;
      try {
        // ignore: only_use_keep_alive_inside_keep_alive
        endpoints = await ref.read(
          endpointsNotifierProvider(account.host).future,
        );
      } catch (_) {}
      if (endpoints?.contains('notes/update') ?? true) {
        await _misskey.notes.update(state.toNotesUpdateRequest(noteId));
        final note = state.toNote().copyWith(id: noteId);
        ref.read(notesNotifierProvider(account).notifier).add(note);
        return note;
      } else {
        final response = await _misskey.notes.edit(
          state.toNotesEditRequest(noteId),
        );
        ref.read(notesNotifierProvider(account).notifier).add(response);
        return response;
      }
    } else {
      if (state.scheduledAt != null) {
        MeDetailed? i = _i;
        try {
          // ignore: only_use_keep_alive_inside_keep_alive
          i ??= await ref.read(iNotifierProvider(account).future);
        } catch (_) {}
        if (i?.policies?.canScheduleNote ?? false) {
          await _misskey.notes.create(state.toNotesCreateRequest());
          unawaited(reset(keepHashtag: true));
          return state.toNote();
        } else if (i?.policies?.scheduleNoteMax case final scheduleNoteMax?
            when scheduleNoteMax > 0) {
          await _misskey.notes.schedule.create(
            state.toNotesScheduleCreateRequest(),
          );
          unawaited(reset(keepHashtag: true));
          return state.toNote();
        } else {
          final response = await _misskey.notes.drafts.create(
            state.toNotesDraftsCreateRequest(),
          );
          unawaited(reset(keepHashtag: true));
          return response.createdDraft.toNote();
        }
      }
      final response = await _misskey.notes.create(
        state.toNotesCreateRequest(),
      );
      if (response != null) {
        ref.read(notesNotifierProvider(account).notifier).add(response);
      }
      unawaited(reset(keepHashtag: true));
      return response ?? state.toNote();
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

  Future<void> setReply(Note reply) async {
    if (state.replyId == reply.id) {
      state = state.copyWith(reply: reply);
      _scheduleSave();
      return;
    }

    final repo = await ref.read(noteDraftRepositoryProvider.future);
    final draft = await repo.loadDraft(account: account, replyId: reply.id);
    if (draft != null) {
      await save();
      state = draft;
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
    final channelId =
        reply.channelId ??
        (visibility != NoteVisibility.specified && reply.user.host == null
            ? state.channelId
            : null);
    state = state.copyWith(
      visibility: visibility,
      visibleUserIds: visibleUserIds,
      localOnly:
          channelId != null ||
          (visibility != NoteVisibility.specified &&
              reply.user.host == null &&
              ((state.localOnly ?? false) || reply.localOnly)),
      cw: keepCw ? (reply.cw ?? state.cw) : state.cw,
      replyId: reply.id,
      reply: reply,
      channelId: channelId,
      channel: reply.channel?.id == channelId
          ? reply.channel
          : state.channel?.id == channelId
          ? state.channel
          : null,
      text: text,
    );
    _scheduleSave();
  }

  void clearReply() {
    if (state.channelId != null) {
      state = state.copyWith(
        visibility: NoteVisibility.public,
        localOnly: true,
        replyId: null,
        reply: null,
      );
    } else {
      final defaultRequest = _getDefaultDraft(null);
      final visibility = switch (state.renote) {
        final renote? => NoteVisibility.min(
          defaultRequest.visibility ?? NoteVisibility.public,
          renote.visibility ?? NoteVisibility.public,
        ),
        _ => defaultRequest.visibility,
      };
      final localOnly =
          visibility != NoteVisibility.specified &&
          ((defaultRequest.localOnly ?? false) ||
              (state.renote?.localOnly ?? false));
      state = state.copyWith(
        visibility: visibility,
        localOnly: localOnly,
        replyId: null,
        reply: null,
      );
    }
    _scheduleSave();
  }

  Future<void> setRenote(Note renote) async {
    if (state.renoteId == renote.id) {
      state = state.copyWith(renote: renote);
      _scheduleSave();
      return;
    }

    final repo = await ref.read(noteDraftRepositoryProvider.future);
    final draft = await repo.loadDraft(account: account, renoteId: renote.id);
    if (draft != null) {
      await save();
      state = draft;
    }

    final visibility = NoteVisibility.min(
      state.visibility ?? NoteVisibility.public,
      renote.visibility ?? NoteVisibility.public,
    );
    final channelId =
        renote.channelId ??
        (visibility != NoteVisibility.specified && renote.user.host == null
            ? state.channelId
            : null);
    state = state.copyWith(
      visibility: visibility,
      localOnly:
          channelId != null ||
          (visibility != NoteVisibility.specified &&
              renote.user.host == null &&
              ((state.localOnly ?? false) || renote.localOnly)),
      renoteId: renote.id,
      renote: renote,
      channelId: channelId,
      channel: renote.channel?.id == channelId
          ? renote.channel
          : state.channel?.id == channelId
          ? state.channel
          : null,
    );
    _scheduleSave();
  }

  void clearRenote() {
    if (state.channelId != null) {
      state = state.copyWith(
        visibility: NoteVisibility.public,
        localOnly: true,
        renoteId: null,
        renote: null,
      );
    } else {
      final defaultRequest = _getDefaultDraft(null);
      final visibility = switch (state.renote) {
        final renote? => NoteVisibility.min(
          defaultRequest.visibility ?? NoteVisibility.public,
          renote.visibility ?? NoteVisibility.public,
        ),
        _ => defaultRequest.visibility,
      };
      final localOnly =
          visibility != NoteVisibility.specified &&
          ((state.renote?.localOnly ?? false) ||
              (defaultRequest.localOnly ?? false));
      state = state.copyWith(
        visibility: visibility,
        localOnly: localOnly,
        renoteId: null,
        renote: null,
      );
    }
    _scheduleSave();
  }

  Future<void> setChannel(NoteChannelInfo channel) async {
    if (state.channelId == channel.id) {
      state = state.copyWith(channel: channel);
      _scheduleSave();
      return;
    }

    final repo = await ref.read(noteDraftRepositoryProvider.future);
    final draft = await repo.loadDraft(account: account, channelId: channel.id);
    if (draft != null) {
      await save();
      state = draft;
    }

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
    final defaultRequest = _getDefaultDraft(null);
    final visibility = NoteVisibility.min(
      defaultRequest.visibility ?? NoteVisibility.public,
      NoteVisibility.min(
        state.reply?.visibility ?? NoteVisibility.public,
        state.renote?.visibility ?? NoteVisibility.public,
      ),
    );
    final localOnly =
        visibility != NoteVisibility.specified &&
        ((defaultRequest.localOnly ?? false) ||
            (state.reply?.localOnly ?? false) ||
            (state.renote?.localOnly ?? false));
    state = state.copyWith(
      channelId: null,
      channel: null,
      visibility: visibility,
      localOnly: localOnly,
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

  void setFiles(Iterable<DriveFile>? files) {
    if (files == null || files.isEmpty) {
      if (state.fileIds == null) return;
      state = state.copyWith(fileIds: null, files: null);
    } else {
      state = state.copyWith(
        fileIds: files.map((file) => file.id).toList(),
        files: files.toList(),
      );
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

  void setScheduledAt(DateTime scheduledAt) {
    state = state.copyWith(scheduledAt: scheduledAt, isActuallyScheduled: true);
    _scheduleSave();
  }

  void clearScheduledAt() {
    state = state.copyWith(scheduledAt: null, isActuallyScheduled: false);
    _scheduleSave();
  }
}
