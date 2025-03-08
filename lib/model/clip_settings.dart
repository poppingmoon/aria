import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'clip_settings.freezed.dart';

@freezed
abstract class ClipSettings with _$ClipSettings {
  const factory ClipSettings({
    String? name,
    String? description,
    bool? isPublic,
  }) = _ClipSettings;

  factory ClipSettings.fromClip(Clip clip) {
    return ClipSettings(
      name: clip.name,
      description: clip.description,
      isPublic: clip.isPublic,
    );
  }
}
