import 'package:file/file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mime/mime.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'post_file.freezed.dart';

sealed class PostFile {
  String get name;
  bool get isSensitive;
  String? get comment;
  String? get type;
}

@freezed
class const LocalPostFile({
  @override required final File file,
  @override required final String name,
  @override final bool isSensitive = false,
  @override final String? comment,
  @override final String? type,
  @override final bool uploading = false,
}) with _$LocalPostFile implements PostFile {
  factory fromFile(
    File file, {
    String? name,
    bool? isSensitive,
    String? comment,
  }) {
    return LocalPostFile(
      file: file,
      name: name ?? file.basename,
      isSensitive: isSensitive ?? false,
      comment: comment,
      type: lookupMimeType(file.path) ?? 'application/octet-stream',
    );
  }
}

@freezed
class const DrivePostFile({
  @override required final DriveFile file,
  @override required final String name,
  @override final bool isSensitive = false,
  @override final String? comment,
  @override final String? type,
}) with _$DrivePostFile implements PostFile {
  factory fromDriveFile(DriveFile file) {
    return DrivePostFile(
      file: file,
      name: file.name,
      isSensitive: file.isSensitive,
      comment: file.comment,
      type: file.type,
    );
  }
}
