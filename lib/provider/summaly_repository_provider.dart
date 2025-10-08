import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/summaly_repository.dart';
import 'dio_provider.dart';

part 'summaly_repository_provider.g.dart';

@Riverpod(keepAlive: true)
SummalyRepository summalyRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  return SummalyRepository(dio);
}
