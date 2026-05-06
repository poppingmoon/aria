import 'package:misskey_dart/misskey_dart.dart';

extension NoteExtension on Note {
  bool get isRenote =>
      renoteId != null &&
      text == null &&
      replyId == null &&
      cw == null &&
      files.isEmpty &&
      poll == null;

  bool get containsSensitiveFile {
    return files.any((file) => file.isSensitive) ||
        (renote?.files.any((file) => file.isSensitive) ?? false) ||
        (reply?.files.any((file) => file.isSensitive) ?? false);
  }

  NoteDraft toNoteDraft() {
    return NoteDraft(
      id: id,
      createdAt: createdAt,
      text: text,
      cw: cw,
      userId: userId,
      user: user,
      replyId: replyId,
      renoteId: renoteId,
      reply: reply,
      renote: renote,
      visibility: visibility,
      visibleUserIds: visibleUserIds,
      fileIds: fileIds,
      files: files,
      poll: switch (poll) {
        NotePoll(:final multiple, :final expiresAt, :final choices) =>
          NoteDraftPoll(
            multiple: multiple,
            expiresAt: expiresAt,
            choices: choices.map((choice) => choice.text).toList(),
          ),
        null => null,
      },
      channelId: channelId,
      channel: channel,
      localOnly: localOnly,
      reactionAcceptance: reactionAcceptance,
    );
  }
}
