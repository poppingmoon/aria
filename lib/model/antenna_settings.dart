import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'antenna_settings.freezed.dart';

@freezed
class const AntennaSettings({
  @override final String? name,
  @override final AntennaSource? src,
  @override final String? userListId,
  @override final List<String>? users,
  @override final bool? withReplies,
  @override final List<List<String>>? keywords,
  @override final List<List<String>>? excludeKeywords,
  @override final bool? localOnly,
  @override final bool? caseSensitive,
  @override final bool? withFile,
  @override final bool? excludeBots,
  @override final bool? excludeNotesInSensitiveChannel,
}) with _$AntennaSettings {
  factory fromAntenna(Antenna antenna) {
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
      excludeNotesInSensitiveChannel: antenna.excludeNotesInSensitiveChannel,
    );
  }
}
