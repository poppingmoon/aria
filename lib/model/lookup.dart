import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dart/misskey_dart.dart';

part 'lookup.freezed.dart';

@freezed
sealed class Lookup with _$Lookup {
  const factory Lookup.user(UserDetailed user) = LookupUser;
  const factory Lookup.note(Note note) = LookupNote;
}
