import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'antenna_settings.freezed.dart';

@freezed
abstract class AntennaSettings with _$AntennaSettings {
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
    bool? hideNotesInSensitiveChannel,
  }) = _AntennaSettings;

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
      hideNotesInSensitiveChannel: antenna.hideNotesInSensitiveChannel,
    );
  }
}
