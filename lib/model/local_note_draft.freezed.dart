// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_note_draft.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalNoteDraft {


/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalNoteDraftCopyWith<LocalNoteDraft> get copyWith => _$LocalNoteDraftCopyWithImpl<LocalNoteDraft>(this as LocalNoteDraft, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LocalNoteDraft;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalNoteDraft&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.account, _this.account) || other.account == _this.account)&&(identical(other.tabId, _this.tabId) || other.tabId == _this.tabId)&&(identical(other.draft, _this.draft) || other.draft == _this.draft)&&(identical(other.isPinned, _this.isPinned) || other.isPinned == _this.isPinned));
}


@override
int get hashCode {
  final _this = this as LocalNoteDraft;
  return Object.hash(runtimeType,_this.id,_this.account,_this.tabId,_this.draft,_this.isPinned);
}

@override
String toString() {
  final _this = this as LocalNoteDraft;
  return 'LocalNoteDraft(id: ${_this.id}, account: ${_this.account}, tabId: ${_this.tabId}, draft: ${_this.draft}, isPinned: ${_this.isPinned})';
}


}

/// @nodoc
abstract mixin class $LocalNoteDraftCopyWith<$Res>  {
  factory $LocalNoteDraftCopyWith(LocalNoteDraft value, $Res Function(LocalNoteDraft) _then) = _$LocalNoteDraftCopyWithImpl;
@useResult
$Res call({
 int id, Account account, String? tabId, NoteDraft draft, bool isPinned
});


$AccountCopyWith<$Res> get account;$NoteDraftCopyWith<$Res> get draft;

}
/// @nodoc
class _$LocalNoteDraftCopyWithImpl<$Res>
    implements $LocalNoteDraftCopyWith<$Res> {
  _$LocalNoteDraftCopyWithImpl(this._self, this._then);

  final LocalNoteDraft _self;
  final $Res Function(LocalNoteDraft) _then;

/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? account = null,Object? tabId = freezed,Object? draft = null,Object? isPinned = null,}) {
  return _then(LocalNoteDraft(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Account,tabId: freezed == tabId ? _self.tabId : tabId // ignore: cast_nullable_to_non_nullable
as String?,draft: null == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as NoteDraft,isPinned: null == isPinned ? _self.isPinned : isPinned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountCopyWith<$Res> get account {
  
  return $AccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}/// Create a copy of LocalNoteDraft
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NoteDraftCopyWith<$Res> get draft {
  
  return $NoteDraftCopyWith<$Res>(_self.draft, (value) {
    return _then(_self.copyWith(draft: value));
  });
}
}



// dart format on
