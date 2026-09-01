import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_saver.freezed.dart';

@freezed
class const DataSaver({
  required final bool media,
  required final bool avatar,
  required final bool urlPreview,
}) with _$DataSaver;
