import 'package:aria/model/account.dart';
import 'package:aria/provider/api/i_notifier_provider.dart';
import 'package:aria/provider/api/meta_notifier_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import 'create_overrides.dart';

Future<ProviderContainer> createContainer(
  Account account, {
  MeDetailed? i,
  MetaResponse? meta,
  Note? note,
  List<Emoji>? emojis,
}) async {
  final container = ProviderContainer(
    overrides: createOverrides(
      account,
      i: i,
      meta: meta,
      note: note,
      emojis: emojis,
    ),
  );
  if (i != null) {
    await container.read(iNotifierProvider(account).future);
  }
  if (meta != null) {
    await container.read(metaNotifierProvider(account.host).future);
  }
  addTearDown(container.dispose);
  return container;
}
