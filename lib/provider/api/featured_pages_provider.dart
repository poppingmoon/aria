import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'featured_pages_provider.g.dart';

@riverpod
FutureOr<List<Page>> featuredPages(Ref ref, Account account) async {
  final response = await ref.watch(misskeyProvider(account)).pages.featured();
  return response.toList();
}
