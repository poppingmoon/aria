import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';

extension NotesCreateRequestExtension on NotesCreateRequest {
  bool get isRenote =>
      renoteId != null &&
      (text?.isEmpty ?? true) &&
      replyId == null &&
      (cw?.isEmpty ?? true) &&
      (fileIds?.isEmpty ?? true) &&
      poll == null;

  bool get canPost =>
      ((text?.isNotEmpty ?? false) || poll != null || renoteId != null) &&
      (poll == null ||
          (poll!.choices.length >= 2 &&
              poll!.choices.every((choice) => choice.isNotEmpty)));

  Note toNote({User? i, CommunityChannel? channel}) => Note(
    id: '',
    createdAt: scheduledAt ?? DateTime.now(),
    text: text,
    cw: cw,
    user: i != null
        ? UserLite.fromJson(i.toJson())
        : UserLite(id: '', username: '', avatarUrl: Uri()),
    userId: i?.id ?? '',
    visibility: visibility,
    visibleUserIds: visibleUserIds ?? [],
    localOnly: localOnly ?? false,
    reactions: {},
    reactionEmojis: {},
    fileIds: fileIds ?? [],
    files: [],
    replyId: replyId,
    renoteId: renoteId,
    channelId: channelId,
    channel: channel != null
        ? NoteChannelInfo(
            id: channel.id,
            name: channel.name,
            color: channel.color,
            isSensitive: channel.isSensitive,
            allowRenoteToExternal: channel.allowRenoteToExternal,
          )
        : null,
    reactionAcceptance: reactionAcceptance,
    poll: poll != null
        ? NotePoll(
            multiple: poll?.multiple ?? false,
            choices:
                poll?.choices
                    .map((text) => NotePollChoice(text: text, votes: 0))
                    .toList() ??
                [],
          )
        : null,
  );

  NotesCreateRequest addHashtags(List<String>? hashtags) {
    if (hashtags case final hashtags? when hashtags.isNotEmpty) {
      if (text case final text? when text.isNotEmpty) {
        if (LineSplitter.split(text).last.trim().isEmpty) {
          return copyWith(
            text: '$text${hashtags.map((tag) => '#$tag').join(' ')}',
          );
        } else {
          return copyWith(
            text: '$text ${hashtags.map((tag) => '#$tag').join(' ')}',
          );
        }
      } else {
        return copyWith(text: hashtags.map((tag) => '#$tag').join(' '));
      }
    }
    return this;
  }
}
