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
      rememberRenoteVisibility:
          json['rememberRenoteVisibility'] as bool? ?? false,
      defaultRenoteVisibility: $enumDecodeNullable(
              _$NoteVisibilityEnumMap, json['defaultRenoteVisibility']) ??
          NoteVisibility.public,
      defaultRenoteLocalOnly: json['defaultRenoteLocalOnly'] as bool? ?? false,
      reactionAcceptance: $enumDecodeNullable(
          _$ReactionAcceptanceEnumMap, json['reactionAcceptance']),
      visibility:
          $enumDecodeNullable(_$NoteVisibilityEnumMap, json['visibility']) ??
              NoteVisibility.public,
      localOnly: json['localOnly'] as bool? ?? false,
      renoteVisibility: $enumDecodeNullable(
              _$NoteVisibilityEnumMap, json['renoteVisibility']) ??
          NoteVisibility.public,
      renoteLocalOnly: json['renoteLocalOnly'] as bool? ?? false,
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
      mutedEmojis: (json['mutedEmojis'] as List<dynamic>?)
              ?.map((e) => e as String)
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
      postFormUseHashtags: json['postFormUseHashtags'] as bool? ?? false,
      postFormHashtags: (json['postFormHashtags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AccountSettingsImplToJson(
        _$AccountSettingsImpl instance) =>
    <String, dynamic>{
      'keepCw': instance.keepCw,
      'rememberNoteVisibility': instance.rememberNoteVisibility,
      'defaultNoteVisibility':
          _$NoteVisibilityEnumMap[instance.defaultNoteVisibility]!,
      'defaultNoteLocalOnly': instance.defaultNoteLocalOnly,
      'rememberRenoteVisibility': instance.rememberRenoteVisibility,
      'defaultRenoteVisibility':
          _$NoteVisibilityEnumMap[instance.defaultRenoteVisibility]!,
      'defaultRenoteLocalOnly': instance.defaultRenoteLocalOnly,
      if (_$ReactionAcceptanceEnumMap[instance.reactionAcceptance]
          case final value?)
        'reactionAcceptance': value,
      'visibility': _$NoteVisibilityEnumMap[instance.visibility]!,
      'localOnly': instance.localOnly,
      'renoteVisibility': _$NoteVisibilityEnumMap[instance.renoteVisibility]!,
      'renoteLocalOnly': instance.renoteLocalOnly,
      'pinnedEmojisForReaction': instance.pinnedEmojisForReaction,
      'pinnedEmojis': instance.pinnedEmojis,
      'recentlyUsedEmojis': instance.recentlyUsedEmojis,
      if (instance.defaultReaction case final value?) 'defaultReaction': value,
      if (instance.uploadFolder case final value?) 'uploadFolder': value,
      'keepOriginalUploading': instance.keepOriginalUploading,
      'keepOriginalFilename': instance.keepOriginalFilename,
      'mutedWords': instance.mutedWords.map((e) => e.toJson()).toList(),
      'hardMutedWords': instance.hardMutedWords.map((e) => e.toJson()).toList(),
      'mutedEmojis': instance.mutedEmojis,
      'recentlyUsedUsers': instance.recentlyUsedUsers,
      'hashtags': instance.hashtags,
      'postFormUseHashtags': instance.postFormUseHashtags,
      'postFormHashtags': instance.postFormHashtags,
    };

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
