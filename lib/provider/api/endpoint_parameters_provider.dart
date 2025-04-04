import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'endpoint_parameters_provider.g.dart';

@riverpod
FutureOr<List<EndpointParameter>> endpointParameters(
  Ref ref,
  Account account,
  String endpoint,
) async {
  final response = await ref
      .watch(misskeyProvider(account))
      .endpoint(EndpointRequest(endpoint: endpoint));
  return response.params;
}
