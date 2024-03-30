import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/token_repository.dart';

part 'token_repository_provider.g.dart';

@riverpod
TokenRepository tokenRepository(TokenRepositoryRef ref) {
  return const TokenRepository();
}
