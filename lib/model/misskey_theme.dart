import 'package:freezed_annotation/freezed_annotation.dart';

part 'misskey_theme.freezed.dart';
part 'misskey_theme.g.dart';

@Freezed(toJson: false)
class const MisskeyTheme({
  @override required final String id,
  @override required final String name,
  @override final String? author,
  @override final String? desc,
  @override final String? base,
  @override required final Map<String, String> props,
  @override final Map<String, dynamic>? codeHighlighter,
}) with _$MisskeyTheme {
  factory fromJson(Map<String, Object?> json) => _$MisskeyThemeFromJson(json);
}
