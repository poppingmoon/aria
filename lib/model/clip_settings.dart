import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'clip_settings.freezed.dart';

@freezed
class const ClipSettings({
  @override final String? name,
  @override final String? description,
  @override final bool? isPublic,
}) with _$ClipSettings {
  factory fromClip(Clip clip) {
    return ClipSettings(
      name: clip.name,
      description: clip.description,
      isPublic: clip.isPublic,
    );
  }
}
