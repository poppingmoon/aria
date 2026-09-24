// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summaly_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SummalyResult {


/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SummalyResultCopyWith<SummalyResult> get copyWith => _$SummalyResultCopyWithImpl<SummalyResult>(this as SummalyResult, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SummalyResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SummalyResult&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.thumbnail, _this.thumbnail) || other.thumbnail == _this.thumbnail)&&(identical(other.thumbnailStyle, _this.thumbnailStyle) || other.thumbnailStyle == _this.thumbnailStyle)&&(identical(other.sitename, _this.sitename) || other.sitename == _this.sitename)&&(identical(other.player, _this.player) || other.player == _this.player)&&(identical(other.sensitive, _this.sensitive) || other.sensitive == _this.sensitive)&&(identical(other.activityPub, _this.activityPub) || other.activityPub == _this.activityPub)&&(identical(other.fediverseCreater, _this.fediverseCreater) || other.fediverseCreater == _this.fediverseCreater)&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SummalyResult;
  return Object.hash(runtimeType,_this.title,_this.icon,_this.description,_this.thumbnail,_this.thumbnailStyle,_this.sitename,_this.player,_this.sensitive,_this.activityPub,_this.fediverseCreater,_this.url);
}

@override
String toString() {
  final _this = this as SummalyResult;
  return 'SummalyResult(title: ${_this.title}, icon: ${_this.icon}, description: ${_this.description}, thumbnail: ${_this.thumbnail}, thumbnailStyle: ${_this.thumbnailStyle}, sitename: ${_this.sitename}, player: ${_this.player}, sensitive: ${_this.sensitive}, activityPub: ${_this.activityPub}, fediverseCreater: ${_this.fediverseCreater}, url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $SummalyResultCopyWith<$Res>  {
  factory $SummalyResultCopyWith(SummalyResult value, $Res Function(SummalyResult) _then) = _$SummalyResultCopyWithImpl;
@useResult
$Res call({
 String? title, String? icon, String? description, String? thumbnail, String? thumbnailStyle, String? sitename, Player player, bool? sensitive, String? activityPub, String? fediverseCreater, String? url
});


$PlayerCopyWith<$Res> get player;

}
/// @nodoc
class _$SummalyResultCopyWithImpl<$Res>
    implements $SummalyResultCopyWith<$Res> {
  _$SummalyResultCopyWithImpl(this._self, this._then);

  final SummalyResult _self;
  final $Res Function(SummalyResult) _then;

/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? icon = freezed,Object? description = freezed,Object? thumbnail = freezed,Object? thumbnailStyle = freezed,Object? sitename = freezed,Object? player = null,Object? sensitive = freezed,Object? activityPub = freezed,Object? fediverseCreater = freezed,Object? url = freezed,}) {
  return _then(SummalyResult(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,thumbnail: freezed == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String?,thumbnailStyle: freezed == thumbnailStyle ? _self.thumbnailStyle : thumbnailStyle // ignore: cast_nullable_to_non_nullable
as String?,sitename: freezed == sitename ? _self.sitename : sitename // ignore: cast_nullable_to_non_nullable
as String?,player: null == player ? _self.player : player // ignore: cast_nullable_to_non_nullable
as Player,sensitive: freezed == sensitive ? _self.sensitive : sensitive // ignore: cast_nullable_to_non_nullable
as bool?,activityPub: freezed == activityPub ? _self.activityPub : activityPub // ignore: cast_nullable_to_non_nullable
as String?,fediverseCreater: freezed == fediverseCreater ? _self.fediverseCreater : fediverseCreater // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SummalyResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerCopyWith<$Res> get player {
  
  return $PlayerCopyWith<$Res>(_self.player, (value) {
    return _then(_self.copyWith(player: value));
  });
}
}




/// @nodoc
mixin _$Player {


/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerCopyWith<Player> get copyWith => _$PlayerCopyWithImpl<Player>(this as Player, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Player;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Player&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.width, _this.width) || other.width == _this.width)&&(identical(other.height, _this.height) || other.height == _this.height)&&const DeepCollectionEquality().equals(other.allow, _this.allow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Player;
  return Object.hash(runtimeType,_this.url,_this.width,_this.height,const DeepCollectionEquality().hash(_this.allow));
}

@override
String toString() {
  final _this = this as Player;
  return 'Player(url: ${_this.url}, width: ${_this.width}, height: ${_this.height}, allow: ${_this.allow})';
}


}

/// @nodoc
abstract mixin class $PlayerCopyWith<$Res>  {
  factory $PlayerCopyWith(Player value, $Res Function(Player) _then) = _$PlayerCopyWithImpl;
@useResult
$Res call({
 String? url, double? width, double? height, List<String>? allow
});




}
/// @nodoc
class _$PlayerCopyWithImpl<$Res>
    implements $PlayerCopyWith<$Res> {
  _$PlayerCopyWithImpl(this._self, this._then);

  final Player _self;
  final $Res Function(Player) _then;

/// Create a copy of Player
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = freezed,Object? width = freezed,Object? height = freezed,Object? allow = freezed,}) {
  return _then(Player(
url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double?,allow: freezed == allow ? _self.allow : allow // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}



// dart format on
