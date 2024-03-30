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
class LocalPostFile with _$LocalPostFile implements PostFile {
  const factory LocalPostFile({
    required File file,
    required String name,
    @Default(false) bool isSensitive,
    String? comment,
    String? type,
    @Default(false) bool uploading,
  }) = _LocalPostFile;

  factory LocalPostFile.fromFile(
    File file, {
    String? name,
    bool? isSensitive,
    String? comment,
    String? type,
  }) {
    return LocalPostFile(
      file: file,
      name: name ?? file.basename,
      isSensitive: isSensitive ?? false,
      comment: comment,
      type: type ?? lookupMimeType(file.path) ?? 'application/octet-stream',
    );
  }
}

@freezed
class DrivePostFile with _$DrivePostFile implements PostFile {
  const factory DrivePostFile({
    required DriveFile file,
    required String name,
    @Default(false) bool isSensitive,
    String? comment,
    String? type,
  }) = _DrivePostFile;

  factory DrivePostFile.fromDriveFile(
    DriveFile file, {
    String? name,
    bool? isSensitive,
    String? comment,
    String? type,
  }) {
    return DrivePostFile(
      file: file,
      name: name ?? file.name,
      isSensitive: isSensitive ?? file.isSensitive,
      comment: comment ?? file.comment,
      type: type ?? file.type,
    );
  }
}
