import 'package:freezed_annotation/freezed_annotation.dart';

part 'miauth_state.freezed.dart';

@freezed
abstract class MiAuthState with _$MiAuthState {
  const factory MiAuthState({
    required Uri serverUrl,
    required String sessionId,
    required Uri url,
  }) = _MiAuthState;
}
