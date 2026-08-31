import 'package:freezed_annotation/freezed_annotation.dart';

part 'miauth_state.freezed.dart';

@freezed
class const MiAuthState({
  required final Uri serverUrl,
  required final String sessionId,
  required final Uri url,
}) with _$MiAuthState;
