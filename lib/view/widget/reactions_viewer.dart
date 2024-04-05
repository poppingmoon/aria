import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/note_provider.dart';
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = this.note ?? ref.watch(noteProvider(account, noteId));
    if (note == null) {
      return const SizedBox.shrink();
    }
    final scale = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.reactionsDisplayScale),
    );
    final reactions = note.reactions.entries.sortedBy<num>((e) => -e.value);
    const maxReactions = 20;
    final showAllReactions = useState(this.showAllReactions);

    return Wrap(
      spacing: 4.0,
      runSpacing: 4.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ...reactions
            .take(showAllReactions.value ? reactions.length : maxReactions)
            .map(
              (reaction) => ReactionButton(
                account: account,
                note: note,
                emoji: reaction.key,
                count: reaction.value,
              ),
            ),
        if (!showAllReactions.value && reactions.length > maxReactions)
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
