import 'package:misskey_dart/misskey_dart.dart';

extension NoteExtension on Note {
  bool get isRenote =>
      renoteId != null &&
      text == null &&
      cw == null &&
      files.isEmpty &&
      poll == null;

  bool get containsSensitiveFile {
    return files.any((file) => file.isSensitive) ||
        (renote?.files.any((file) => file.isSensitive) ?? false) ||
        (reply?.files.any((file) => file.isSensitive) ?? false);
  }
}
