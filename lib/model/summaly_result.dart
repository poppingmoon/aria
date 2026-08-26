import 'package:freezed_annotation/freezed_annotation.dart';

part 'summaly_result.freezed.dart';
part 'summaly_result.g.dart';

// https://github.com/misskey-dev/summaly
@Freezed(toJson: false)
class const SummalyResult({
  @override final String? title,
  @override final String? icon,
  @override final String? description,
  @override final String? thumbnail,
  @override final String? thumbnailStyle,
  @override final String? sitename,
  @override required final Player player,
  @override final bool? sensitive,
  @override final String? activityPub,
  @override final String? fediverseCreater,
  @override final String? url,
}) with _$SummalyResult {
  factory fromJson(Map<String, Object?> json) => _$SummalyResultFromJson(json);
}

@Freezed(toJson: false)
class const Player({
  @override final String? url,
  @override final double? width,
  @override final double? height,
  @override final List<String>? allow,
}) with _$Player {
  factory fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}
