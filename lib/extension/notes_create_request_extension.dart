import 'package:misskey_dart/misskey_dart.dart';

import 'me_detailed_extension.dart';

extension NotesCreateRequestExtension on NotesCreateRequest {
  NoteDraft toNoteDraft({MeDetailed? i}) => NoteDraft(
    id: '',
    createdAt: scheduledAt ?? DateTime.now(),
    text: text,
    cw: cw,
    user: i?.toUserLite() ?? const UserLite(id: '', username: ''),
    userId: i?.id ?? '',
    visibility: visibility,
    visibleUserIds: visibleUserIds ?? [],
    localOnly: localOnly ?? false,
    fileIds: fileIds ?? [],
    files: [],
    replyId: replyId,
    renoteId: renoteId,
    channelId: channelId,
    reactionAcceptance: reactionAcceptance,
    poll: switch (poll) {
      NotesCreatePollRequest(
        :final expiresAt,
        :final expiredAfter,
        :final multiple,
        :final choices,
      ) =>
        NoteDraftPoll(
          expiresAt: expiresAt,
          expiredAfter: expiredAfter,
          multiple: multiple ?? false,
          choices: choices,
        ),
      _ => null,
    },
  );
}
