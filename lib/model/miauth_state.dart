import 'package:freezed_annotation/freezed_annotation.dart';

part 'miauth_state.freezed.dart';

@freezed
class const MiAuthState({
  @override required final Uri serverUrl,
  @override required final String sessionId,
  @override required final Uri url,
}) with _$MiAuthState;
