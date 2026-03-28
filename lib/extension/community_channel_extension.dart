import 'package:flutter/material.dart';
import 'package:misskey_dart/misskey_dart.dart';

extension CommunityExtension on CommunityChannel {
  Color? toColor() {
    return color != null ? Color(0xFF000000 | color!) : null;
  }

  NoteChannelInfo toNoteChannelInfo() => NoteChannelInfo(
    id: id,
    name: name,
    color: color,
    isSensitive: isSensitive,
    allowRenoteToExternal: allowRenoteToExternal,
    userId: userId,
  );
}
