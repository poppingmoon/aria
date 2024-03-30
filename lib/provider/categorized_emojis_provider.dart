import 'package:collection/collection.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'emojis_notifier_provider.dart';

part 'categorized_emojis_provider.g.dart';

@Riverpod(keepAlive: true)
Map<String?, List<Emoji>> categorizedEmojis(
  CategorizedEmojisRef ref,
  String host,
) {
  final emojis = ref.watch(emojisNotifierProvider(host));
  return emojis.values.groupListsBy((emoji) => emoji.category);
}
