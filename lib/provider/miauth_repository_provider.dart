import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/miauth_repository.dart';
import 'dio_provider.dart';

part 'miauth_repository_provider.g.dart';

@riverpod
MiAuthRepository miAuthRepository(MiAuthRepositoryRef ref) {
  final dio = ref.watch(dioProvider);
  return MiAuthRepository(dio);
}
