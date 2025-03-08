// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialIcon _$MaterialIconFromJson(Map<String, dynamic> json) =>
    _MaterialIcon(codePoint: (json['codePoint'] as num).toInt());

Map<String, dynamic> _$MaterialIconToJson(_MaterialIcon instance) =>
    <String, dynamic>{'codePoint': instance.codePoint};

_ImageIcon _$ImageIconFromJson(Map<String, dynamic> json) =>
    _ImageIcon(url: json['url'] as String);

Map<String, dynamic> _$ImageIconToJson(_ImageIcon instance) =>
    <String, dynamic>{'url': instance.url};

_EmojiIcon _$EmojiIconFromJson(Map<String, dynamic> json) =>
    _EmojiIcon(emoji: json['emoji'] as String);

Map<String, dynamic> _$EmojiIconToJson(_EmojiIcon instance) =>
    <String, dynamic>{'emoji': instance.emoji};
