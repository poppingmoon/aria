import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'favorite_channels_provider.g.dart';

@riverpod
FutureOr<List<CommunityChannel>> favoriteChannels(
  Ref ref,
  Account account,
) async {
  final response = await ref
      .read(misskeyProvider(account))
      .channels
      .myFavorite(const ChannelsMyFavoriteRequest(limit: 100));
  return response.toList();
}
