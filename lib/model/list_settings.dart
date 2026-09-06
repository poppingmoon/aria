import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'list_settings.freezed.dart';
part 'list_settings.g.dart';

@Freezed(toJson: false)
class const ListSettings({final String? name, final bool? isPublic})
    with _$ListSettings {
  factory fromJson(Map<String, Object?> json) => _$ListSettingsFromJson(json);

  factory fromUsersList(UsersList list) {
    return ListSettings(name: list.name, isPublic: list.isPublic);
  }
}
