import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_provider.dart';
import '../../util/decode_custom_emoji.dart';
import 'reaction_button.dart';
import 'reaction_effect.dart';

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

  void _showReactionEffect(
    BuildContext context,
    GlobalKey key,
    String emoji,
    Map<String, String> emojis,
  ) {
    Future.delayed(const Duration(milliseconds: 50), () {
      if (!context.mounted) return;
      if (!(ModalRoute.of(context)?.isCurrent ?? false)) return;
      if (key.currentContext?.findRenderObject()
          case final RenderBox renderBox) {
        final offset = renderBox.localToGlobal(Offset.zero);
        final entry = OverlayEntry(
          builder: (context) => Positioned(
            left: offset.dx,
            top: offset.dy,
            child: Material(
              color: Colors.transparent,
              child: ReactionEffect(
                account: account,
                emoji: emoji,
                emojis: emojis,
              ),
            ),
          ),
        );
        Overlay.of(context).insert(entry);
        Future.delayed(const Duration(milliseconds: 1100), () {
          entry.remove();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final (scale, reduceAnimation, shouldMergeReactions) = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.reactionsDisplayScale,
          settings.reduceAnimation,
          settings.mergeReactionsByName,
        ),
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
    final reactions = useState(initialReactions);
    final keys = useState(
      initialReactions.map((key, value) => MapEntry(key, GlobalKey())),
    );
    useEffect(() {
      final newSource = shouldMergeReactions
          ? _mergeReactions(ref, note.reactions)
          : Map.of(note.reactions);
      final newReactions = <String, int>{};
      final emojis = {...note.emojis, ...note.reactionEmojis};
      for (final reaction in reactions.value.entries) {
        if (newSource.remove(reaction.key) case final count? when count > 0) {
          newReactions[reaction.key] = count;
          if (!reduceAnimation && reaction.value < count) {
            _showReactionEffect(
              context,
              keys.value[reaction.key]!,
              reaction.key,
              emojis,
            );
          }
        }
      }
      for (final newReaction in newSource.entries) {
        newReactions[newReaction.key] = newReaction.value;
        final key = GlobalKey();
        keys.value = {...keys.value, newReaction.key: key};
        if (!reduceAnimation) {
          _showReactionEffect(context, key, newReaction.key, emojis);
        }
      }
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
                emojiKey: keys.value[reaction.key],
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
