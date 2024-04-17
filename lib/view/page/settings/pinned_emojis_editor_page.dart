import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../widget/pinned_emojis_editor.dart';

class PinnedEmojisEditorPage extends ConsumerWidget {
  const PinnedEmojisEditorPage({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.emojiPicker)),
      body: ListView(
        children: [
          PinnedEmojisEditor(account: account, reaction: true),
          PinnedEmojisEditor(account: account),
        ],
      ),
    );
  }
}
