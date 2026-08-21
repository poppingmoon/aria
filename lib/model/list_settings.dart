import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'list_settings.freezed.dart';
part 'list_settings.g.dart';

@freezed
abstract class ListSettings with _$ListSettings {
  const factory({String? name, bool? isPublic}) = _ListSettings;

  factory fromJson(Map<String, dynamic> json) => _$ListSettingsFromJson(json);

  factory fromUsersList(UsersList list) {
    return ListSettings(name: list.name, isPublic: list.isPublic);
  }
}
