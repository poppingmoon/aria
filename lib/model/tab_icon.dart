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

@freezed
abstract class MaterialIcon with _$MaterialIcon implements TabIcon {
  const factory({required int codePoint}) = _MaterialIcon;

  factory fromJson(Map<String, Object?> json) => _$MaterialIconFromJson(json);
}

@freezed
abstract class ImageIcon with _$ImageIcon implements TabIcon {
  const factory({required String url}) = _ImageIcon;

  factory fromJson(Map<String, Object?> json) => _$ImageIconFromJson(json);
}

@freezed
abstract class EmojiIcon with _$EmojiIcon implements TabIcon {
  const factory({required String emoji}) = _EmojiIcon;

  factory fromJson(Map<String, Object?> json) => _$EmojiIconFromJson(json);
}
