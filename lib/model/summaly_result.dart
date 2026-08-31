import 'package:freezed_annotation/freezed_annotation.dart';

part 'summaly_result.freezed.dart';
part 'summaly_result.g.dart';

// https://github.com/misskey-dev/summaly
@Freezed(toJson: false)
class const SummalyResult({
  final String? title,
  final String? icon,
  final String? description,
  final String? thumbnail,
  final String? thumbnailStyle,
  final String? sitename,
  required final Player player,
  final bool? sensitive,
  final String? activityPub,
  final String? fediverseCreater,
  final String? url,
}) with _$SummalyResult {
  factory fromJson(Map<String, Object?> json) => _$SummalyResultFromJson(json);
}

@Freezed(toJson: false)
class const Player({
  final String? url,
  final double? width,
  final double? height,
  final List<String>? allow,
}) with _$Player {
  factory fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}
