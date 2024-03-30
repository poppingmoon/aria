import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import 'misskey_provider.dart';

part 'avatar_decorations_provider.g.dart';

@riverpod
FutureOr<List<GetAvatarDecorationsResponse>> avatarDecorations(
  AvatarDecorationsRef ref,
  Account account,
) async {
  final response =
      await ref.watch(misskeyProvider(account)).getAvatarDecorations();
  return response.toList();
}
