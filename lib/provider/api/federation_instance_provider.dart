import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'federation_instance_provider.g.dart';

@riverpod
FutureOr<FederationShowInstanceResponse> federationInstance(
  Ref ref,
  Account account,
  String host,
) {
  return ref
      .watch(misskeyProvider(account))
      .federation
      .showInstance(FederationShowInstanceRequest(host: host));
}
