import 'package:misskey_dart/misskey_dart.dart';

extension on NoteDraftPoll {
  NotePoll toNotePoll() => NotePoll(
    multiple: multiple,
    expiresAt:
        expiresAt ??
        switch (expiredAfter) {
          final expiresAfter? => DateTime.now().add(expiresAfter),
          _ => null,
        },
    choices: choices
        .map((text) => NotePollChoice(text: text, votes: 0))
        .toList(),
  );

  NotesCreatePollRequest toNotesCreatePollRequest() => NotesCreatePollRequest(
    choices: choices,
    multiple: multiple,
    expiresAt: expiresAt,
    expiredAfter: expiredAfter,
  );
}

extension NoteDraftExtension on NoteDraft {
  bool get isRenote =>
      renoteId != null &&
      (text?.isEmpty ?? true) &&
      replyId == null &&
      (cw?.isEmpty ?? true) &&
      (fileIds?.isEmpty ?? true) &&
      poll == null;

  bool get canPost =>
      ((text?.isNotEmpty ?? false) || poll != null || renoteId != null) &&
      switch (poll) {
        final poll? =>
          poll.choices.length >= 2 &&
              poll.choices.every((choice) => choice.isNotEmpty),
        _ => true,
      };

  Note toNote() => Note(
    id: '',
    createdAt: createdAt,
    text: text,
    cw: cw,
    user: user,
    userId: userId,
    visibility: visibility,
    visibleUserIds: visibleUserIds ?? [],
    localOnly: localOnly ?? false,
    reactions: {},
    reactionEmojis: {},
    fileIds: fileIds ?? [],
    files: files ?? [],
    replyId: replyId,
    renoteId: renoteId,
    channelId: channelId,
    channel: channel,
    reactionAcceptance: reactionAcceptance,
    poll: poll?.toNotePoll(),
  );

  NotesCreateRequest toNotesCreateRequest() => NotesCreateRequest(
    visibility: visibility,
    visibleUserIds: visibleUserIds,
    text: text,
    cw: cw,
    localOnly: localOnly,
    reactionAcceptance: reactionAcceptance,
    fileIds: fileIds,
    replyId: replyId,
    renoteId: renoteId,
    channelId: channelId,
    poll: poll?.toNotesCreatePollRequest(),
    scheduledAt: scheduledAt,
  );

  NotesScheduleCreateRequest toNotesScheduleCreateRequest() =>
      NotesScheduleCreateRequest(
        visibility: visibility,
        visibleUserIds: visibleUserIds,
        cw: cw,
        reactionAcceptance: reactionAcceptance,
        replyId: replyId,
        renoteId: renoteId,
        text: text,
        fileIds: fileIds,
        channelId: channelId,
        localOnly: localOnly,
        poll: poll?.toNotesCreatePollRequest(),
        scheduleNote: ScheduleNote(scheduledAt: scheduledAt!),
      );

  NotesUpdateRequest toNotesUpdateRequest(String noteId) => NotesUpdateRequest(
    noteId: noteId,
    text: text,
    cw: cw,
    fileIds: fileIds,
    poll: poll?.toNotesCreatePollRequest(),
  );

  NotesEditRequest toNotesEditRequest(String noteId) => NotesEditRequest(
    editId: noteId,
    visibility: visibility,
    visibleUserIds: visibleUserIds,
    text: text,
    cw: cw,
    localOnly: localOnly,
    fileIds: fileIds,
    replyId: replyId,
    renoteId: renoteId,
    channelId: channelId,
    poll: poll?.toNotesCreatePollRequest(),
  );
}
