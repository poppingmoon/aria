// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountSettingsImpl _$$AccountSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountSettingsImpl(
      keepCw: json['keepCw'] as bool? ?? true,
      rememberNoteVisibility: json['rememberNoteVisibility'] as bool? ?? false,
      defaultNoteVisibility: $enumDecodeNullable(
              _$NoteVisibilityEnumMap, json['defaultNoteVisibility']) ??
          NoteVisibility.public,
      defaultNoteLocalOnly: json['defaultNoteLocalOnly'] as bool? ?? false,
      reactionAcceptance: $enumDecodeNullable(
          _$ReactionAcceptanceEnumMap, json['reactionAcceptance']),
      visibility:
          $enumDecodeNullable(_$NoteVisibilityEnumMap, json['visibility']) ??
              NoteVisibility.public,
      localOnly: json['localOnly'] as bool? ?? false,
      pinnedEmojisForReaction:
          (json['pinnedEmojisForReaction'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              defaultPinnedEmojis,
      pinnedEmojis: (json['pinnedEmojis'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          defaultPinnedEmojis,
      recentlyUsedEmojis: (json['recentlyUsedEmojis'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      defaultReaction: json['defaultReaction'] as String?,
      uploadFolder: json['uploadFolder'] as String?,
      keepOriginalUploading: json['keepOriginalUploading'] as bool? ?? false,
      keepOriginalFilename: json['keepOriginalFilename'] as bool? ?? true,
      mutedWords: (json['mutedWords'] as List<dynamic>?)
              ?.map((e) => MuteWord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hardMutedWords: (json['hardMutedWords'] as List<dynamic>?)
              ?.map((e) => MuteWord.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recentlyUsedUsers: (json['recentlyUsedUsers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      hashtags: (json['hashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AccountSettingsImplToJson(
    _$AccountSettingsImpl instance) {
  final val = <String, dynamic>{
    'keepCw': instance.keepCw,
    'rememberNoteVisibility': instance.rememberNoteVisibility,
    'defaultNoteVisibility':
        _$NoteVisibilityEnumMap[instance.defaultNoteVisibility]!,
    'defaultNoteLocalOnly': instance.defaultNoteLocalOnly,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reactionAcceptance',
      _$ReactionAcceptanceEnumMap[instance.reactionAcceptance]);
  val['visibility'] = _$NoteVisibilityEnumMap[instance.visibility]!;
  val['localOnly'] = instance.localOnly;
  val['pinnedEmojisForReaction'] = instance.pinnedEmojisForReaction;
  val['pinnedEmojis'] = instance.pinnedEmojis;
  val['recentlyUsedEmojis'] = instance.recentlyUsedEmojis;
  writeNotNull('defaultReaction', instance.defaultReaction);
  writeNotNull('uploadFolder', instance.uploadFolder);
  val['keepOriginalUploading'] = instance.keepOriginalUploading;
  val['keepOriginalFilename'] = instance.keepOriginalFilename;
  val['mutedWords'] = instance.mutedWords.map((e) => e.toJson()).toList();
  val['hardMutedWords'] =
      instance.hardMutedWords.map((e) => e.toJson()).toList();
  val['recentlyUsedUsers'] = instance.recentlyUsedUsers;
  val['hashtags'] = instance.hashtags;
  return val;
}

const _$NoteVisibilityEnumMap = {
  NoteVisibility.public: 'public',
  NoteVisibility.home: 'home',
  NoteVisibility.followers: 'followers',
  NoteVisibility.specified: 'specified',
};

const _$ReactionAcceptanceEnumMap = {
  ReactionAcceptance.likeOnlyForRemote: 'likeOnlyForRemote',
  ReactionAcceptance.nonSensitiveOnly: 'nonSensitiveOnly',
  ReactionAcceptance.nonSensitiveOnlyForLocalLikeOnlyForRemote:
      'nonSensitiveOnlyForLocalLikeOnlyForRemote',
  ReactionAcceptance.likeOnly: 'likeOnly',
};
