import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_theme.freezed.dart';
part 'misskey_theme.g.dart';

@Freezed(toJson: false)
abstract class MisskeyTheme with _$MisskeyTheme {
  const factory MisskeyTheme({
    required String id,
    required String name,
    String? author,
    String? desc,
    String? base,
    required Map<String, String> props,
  }) = _MisskeyTheme;

  factory MisskeyTheme.fromJson(Map<String, dynamic> json) =>
      _$MisskeyThemeFromJson(json);
}
