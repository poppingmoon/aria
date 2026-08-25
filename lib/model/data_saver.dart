import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_saver.freezed.dart';

@freezed
class const DataSaver({
  @override required final bool media,
  @override required final bool avatar,
  @override required final bool urlPreview,
}) with _$DataSaver;
