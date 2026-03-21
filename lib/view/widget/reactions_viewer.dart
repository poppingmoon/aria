import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_notifier_provider.dart';
import '../../util/decode_custom_emoji.dart';
import 'reaction_button.dart';

class ReactionsViewer extends HookConsumerWidget {
  const ReactionsViewer({
    super.key,
    required this.account,
    required this.noteId,
    this.showAllReactions = false,
    this.note,
  });

  final Account account;
  final String noteId;
  final bool showAllReactions;
  final Note? note;

  Map<String, int> _mergeReactions(WidgetRef ref, Map<String, int> reactions) {
    final groups = reactions.entries.groupListsBy(
      (reaction) => reaction.key.startsWith(':'),
    );
    final customEmojiReactions = groups[true]
        ?.map((reaction) {
          final (name, host) = decodeCustomEmoji(reaction.key);
          return (
            emoji: reaction.key,
            name: name,
            host: host,
            count: reaction.value,
          );
        })
        .groupFoldBy<
          String?,
          ({String emoji, String? host, int count, int totalCount})
        >(
          (reaction) => reaction.name,
          (acc, reaction) =>
              (acc == null ||
                  reaction.host == null ||
                  (acc.host != null && acc.count < reaction.count))
              ? (
                  emoji: reaction.emoji,
                  host: reaction.host,
                  count: reaction.count,
                  totalCount: (acc?.totalCount ?? 0) + reaction.count,
                )
              : (
                  emoji: acc.emoji,
                  host: acc.host,
                  count: acc.count,
                  totalCount: acc.totalCount + reaction.count,
                ),
        )
        .map((key, value) => MapEntry(value.emoji, value.totalCount));
    return Map.fromEntries(
      [
        ...?groups[false],
        ...?customEmojiReactions?.entries,
      ].sortedBy<num>((e) => -e.value),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteNotifierProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final (scale, shouldMergeReactions) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) =>
            (settings.reactionsDisplayScale, settings.mergeReactionsByName),
      ),
    );
    final initialReactions = useMemoized(() {
      if (shouldMergeReactions) {
        return _mergeReactions(ref, note.reactions);
      } else {
        return Map.fromEntries(
          note.reactions.entries.sortedBy<num>((e) => -e.value),
        );
      }
    }, [shouldMergeReactions]);
    final previousReactionEmojis = useRef<Iterable<String>?>(null);
    final reactions = useState(initialReactions);
    useEffect(() {
      if (previousReactionEmojis.value == null) {
        previousReactionEmojis.value = initialReactions.keys;
        return;
      }
      final newSource = shouldMergeReactions
          ? _mergeReactions(ref, note.reactions)
          : Map.of(note.reactions);
      final newReactions = <String, int>{};
      for (final emoji in reactions.value.keys) {
        if (newSource.remove(emoji) case final count? when count > 0) {
          newReactions[emoji] = count;
        }
      }
      newReactions.addAll(newSource);
      previousReactionEmojis.value = reactions.value.keys;
      reactions.value = newReactions;
      return;
    }, [note.reactions]);
    const maxReactions = 20;
    final showAllReactions = useState(this.showAllReactions);

    return Wrap(
      spacing: 4.0,
      runSpacing: 4.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...reactions.value.entries
            .take(
              showAllReactions.value ? reactions.value.length : maxReactions,
            )
            .map(
              (reaction) => ReactionButton(
                account: account,
                note: note,
                emoji: reaction.key,
                count: reaction.value,
                isNewReaction: switch (previousReactionEmojis.value) {
                  final emojis? => !emojis.contains(reaction.key),
                  _ => false,
                },
              ),
            ),
        if (!showAllReactions.value && reactions.value.length > maxReactions)
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(2.0 * scale),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => showAllReactions.value = true,
            child: Padding(
              padding: EdgeInsets.all(4.0 * scale),
              child: Text(
                t.misskey.more,
                style: TextStyle(
                  fontSize:
                      DefaultTextStyle.of(context).style.fontSize! * scale,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
