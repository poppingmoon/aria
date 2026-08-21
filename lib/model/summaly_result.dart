import 'package:freezed_annotation/freezed_annotation.dart';

part 'summaly_result.freezed.dart';
part 'summaly_result.g.dart';

// https://github.com/misskey-dev/summaly
@Freezed(toJson: false)
abstract class SummalyResult with _$SummalyResult {
  const factory({
    String? title,
    String? icon,
    String? description,
    String? thumbnail,
    String? thumbnailStyle,
    String? sitename,
    required Player player,
    bool? sensitive,
    String? activityPub,
    String? fediverseCreater,
    String? url,
  }) = _SummalyResult;

  factory fromJson(Map<String, dynamic> json) => _$SummalyResultFromJson(json);
}

@Freezed(toJson: false)
abstract class Player with _$Player {
  const factory({
    String? url,
    double? width,
    double? height,
    List<String>? allow,
  }) = _Player;

  factory fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
