import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'list_settings.freezed.dart';
part 'list_settings.g.dart';

@freezed
class ListSettings with _$ListSettings {
  const factory ListSettings({
    String? name,
    bool? isPublic,
  }) = _ListSettings;

  factory ListSettings.fromJson(Map<String, dynamic> json) =>
      _$ListSettingsFromJson(json);

  factory ListSettings.fromUsersList(UsersList list) {
    return ListSettings(name: list.name, isPublic: list.isPublic);
  }
}
