import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/summaly_result.dart';
import 'summaly_repository_provider.dart';

part 'summaly_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<SummalyResult?> summaly(
  SummalyRef ref,
  String host,
  String link, {
  String? lang,
}) async {
  final summalyRepository = ref.watch(summalyRepositoryProvider);
  return summalyRepository.getSummary(
    host: host,
    link: link,
    lang: lang,
  );
}
