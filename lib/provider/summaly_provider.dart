import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/summaly_result.dart';
import 'server_url_notifier_provider.dart';
import 'summaly_repository_provider.dart';

part 'summaly_provider.g.dart';

@Riverpod(keepAlive: true)
FutureOr<SummalyResult?> summaly(
  Ref ref,
  String host,
  String link, {
  String? lang,
}) {
  final summalyRepository = ref.watch(summalyRepositoryProvider);
  final serverUrl = ref.watch(serverUrlNotifierProvider(host));

  return summalyRepository.getSummary(
    serverUrl: serverUrl,
    link: link,
    lang: lang,
  );
}
