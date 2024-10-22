import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'share_notifier_provider.dart';

part 'receive_sharing_intent_provider.g.dart';

@riverpod
Stream<List<SharedMediaFile>> receiveSharingIntent(Ref ref) async* {
  final files = await ReceiveSharingIntent.instance.getInitialMedia();
  if (files.isNotEmpty) {
    yield files;
    ref.read(shareNotifierProvider.notifier).markShouldRedirect();
    await ReceiveSharingIntent.instance.reset();
  }
  await for (final files in ReceiveSharingIntent.instance.getMediaStream()) {
    if (files.isNotEmpty) {
      yield files;
      ref.read(shareNotifierProvider.notifier).markShouldRedirect();
    }
  }
}
