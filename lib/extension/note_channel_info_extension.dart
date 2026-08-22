import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

extension NoteChannelInfoExtension on NoteChannelInfo {
  Color? toColor() {
    return color != null ? Color(0xFF000000 | color!) : null;
  }
}
