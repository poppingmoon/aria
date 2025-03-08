import 'package:freezed_annotation/freezed_annotation.dart';

part 'summaly_result.freezed.dart';
part 'summaly_result.g.dart';

// https://github.com/misskey-dev/summaly
@Freezed(toJson: false)
abstract class SummalyResult with _$SummalyResult {
  const factory SummalyResult({
    String? title,
    String? icon,
    String? description,
    String? thumbnail,
    required Player player,
    String? sitename,
    bool? sensitive,
    String? url,
  }) = _SummalyResult;

  factory SummalyResult.fromJson(Map<String, dynamic> json) =>
      _$SummalyResultFromJson(json);
}

@Freezed(toJson: false)
abstract class Player with _$Player {
  const factory Player({
    String? url,
    double? width,
    double? height,
    List<String>? allow,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
