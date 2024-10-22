import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/token_repository.dart';

part 'token_repository_provider.g.dart';

@riverpod
TokenRepository tokenRepository(Ref ref) {
  return const TokenRepository();
}
