import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'share_notifier_provider.dart';

part 'receive_sharing_intent_provider.g.dart';

@riverpod
Stream<List<SharedMediaFile>> receiveSharingIntent(
  ReceiveSharingIntentRef ref,
) async* {
  final files = await ReceiveSharingIntent.instance.getInitialMedia();
  if (files.isNotEmpty) {
    ref.read(shareNotifierProvider.notifier).markNeedRedirect();
    yield files;
  }
  await for (final files in ReceiveSharingIntent.instance.getMediaStream()) {
    if (files.isNotEmpty) {
      ref.read(shareNotifierProvider.notifier).markNeedRedirect();
      yield files;
    }
  }
}
