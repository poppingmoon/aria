import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'antenna_settings.freezed.dart';
part 'antenna_settings.g.dart';

@freezed
class AntennaSettings with _$AntennaSettings {
  const factory AntennaSettings({
    String? name,
    AntennaSource? src,
    String? userListId,
    List<String>? users,
    bool? withReplies,
    List<List<String>>? keywords,
    List<List<String>>? excludeKeywords,
    bool? localOnly,
    bool? caseSensitive,
    bool? withFile,
    bool? excludeBots,
  }) = _AntennaSettings;

  factory AntennaSettings.fromJson(Map<String, dynamic> json) =>
      _$AntennaSettingsFromJson(json);

  factory AntennaSettings.fromAntenna(Antenna antenna) {
    return AntennaSettings(
      name: antenna.name,
      src: antenna.src,
      userListId: antenna.userListId,
      users: antenna.users,
      withReplies: antenna.withReplies,
      keywords: antenna.keywords,
      excludeKeywords: antenna.excludeKeywords,
      localOnly: antenna.localOnly,
      caseSensitive: antenna.caseSensitive,
      withFile: antenna.withFile,
      excludeBots: antenna.excludeBots,
    );
  }
}
