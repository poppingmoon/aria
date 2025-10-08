import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'roles_provider.g.dart';

@riverpod
FutureOr<List<RolesListResponse>> roles(Ref ref, Account account) async {
  final response = await ref.watch(misskeyProvider(account)).roles.list();
  return response.sorted((a, b) => a.displayOrder.compareTo(b.displayOrder));
}
