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

  NotesCreateRequest toNotesCreateRequest() {
    final poll = this.poll;
    return NotesCreateRequest(
      visibility: visibility,
      visibleUserIds: visibleUserIds,
      cw: cw,
      localOnly: localOnly,
      reactionAcceptance: reactionAcceptance,
      replyId: replyId,
      renoteId: renoteId,
      channelId: channelId,
      text: text,
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
  }
}
