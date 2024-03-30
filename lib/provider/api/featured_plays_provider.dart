import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'featured_plays_provider.g.dart';

@riverpod
FutureOr<List<Flash>> featuredPlays(
  FeaturedPlaysRef ref,
  Account account,
) async {
  final response = await ref.watch(misskeyProvider(account)).flash.featured();
  return response.toList();
}
