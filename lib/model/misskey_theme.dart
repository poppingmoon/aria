import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_theme.freezed.dart';
part 'misskey_theme.g.dart';

@Freezed(toJson: false)
class const MisskeyTheme({
  required final String id,
  required final String name,
  final String? author,
  final String? desc,
  final String? base,
  required final Map<String, String> props,
  final Map<String, dynamic>? codeHighlighter,
}) with _$MisskeyTheme {
  factory fromJson(Map<String, Object?> json) => _$MisskeyThemeFromJson(json);
}
