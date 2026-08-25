import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_icon.freezed.dart';
part 'tab_icon.g.dart';

sealed class TabIcon {
  factory fromJson(Map<String, Object?> json) {
    if (json.containsKey('codePoint')) {
      return MaterialIcon.fromJson(json);
    }
    if (json.containsKey('url')) {
      return ImageIcon.fromJson(json);
    }
    if (json.containsKey('emoji')) {
      return EmojiIcon.fromJson(json);
    }
    throw const FormatException();
  }

  Map<String, Object?> toJson();
}

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const MaterialIcon({@override required final int codePoint})
    with _$MaterialIcon
    implements TabIcon {
  factory fromJson(Map<String, Object?> json) => _$MaterialIconFromJson(json);

  @override
  Map<String, Object?> toJson() => _$MaterialIconToJson(this);
}

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const ImageIcon({@override required final String url})
    with _$ImageIcon
    implements TabIcon {
  factory fromJson(Map<String, Object?> json) => _$ImageIconFromJson(json);

  @override
  Map<String, Object?> toJson() => _$ImageIconToJson(this);
}

@Freezed(fromJson: false, toJson: false)
@JsonSerializable()
class const EmojiIcon({@override required final String emoji})
    with _$EmojiIcon
    implements TabIcon {
  factory fromJson(Map<String, Object?> json) => _$EmojiIconFromJson(json);

  @override
  Map<String, Object?> toJson() => _$EmojiIconToJson(this);
}
