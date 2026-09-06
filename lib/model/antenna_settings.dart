import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'antenna_settings.freezed.dart';

@freezed
class const AntennaSettings({
  final String? name,
  final AntennaSource? src,
  final String? userListId,
  final List<String>? users,
  final bool? withReplies,
  final List<List<String>>? keywords,
  final List<List<String>>? excludeKeywords,
  final bool? localOnly,
  final bool? caseSensitive,
  final bool? withFile,
  final bool? excludeBots,
  final bool? excludeNotesInSensitiveChannel,
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
