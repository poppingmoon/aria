import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'featured_channels_provider.g.dart';

@riverpod
FutureOr<List<CommunityChannel>> featuredChannels(
  Ref ref,
  Account account,
) async {
  final response = await ref.read(misskeyProvider(account)).channels.featured();
  return response.toList();
}
