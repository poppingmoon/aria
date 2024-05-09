import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_saver.freezed.dart';

@freezed
class DataSaver with _$DataSaver {
  const factory DataSaver({
    required bool media,
    required bool avatar,
    required bool urlPreview,
  }) = _DataSaver;
}
