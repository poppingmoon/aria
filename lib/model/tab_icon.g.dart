// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaterialIcon _$MaterialIconFromJson(Map<String, dynamic> json) =>
    MaterialIcon(codePoint: (json['codePoint'] as num).toInt());

Map<String, dynamic> _$MaterialIconToJson(MaterialIcon instance) =>
    <String, dynamic>{'codePoint': instance.codePoint};

ImageIcon _$ImageIconFromJson(Map<String, dynamic> json) =>
    ImageIcon(url: json['url'] as String);

Map<String, dynamic> _$ImageIconToJson(ImageIcon instance) => <String, dynamic>{
  'url': instance.url,
};

EmojiIcon _$EmojiIconFromJson(Map<String, dynamic> json) =>
    EmojiIcon(emoji: json['emoji'] as String);

Map<String, dynamic> _$EmojiIconToJson(EmojiIcon instance) => <String, dynamic>{
  'emoji': instance.emoji,
};
