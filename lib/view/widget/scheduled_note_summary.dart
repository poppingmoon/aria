import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import 'mfm.dart';

class const ScheduledNoteSummary({
  super.key,
  required final Account account,
  required final ScheduledNote note,
  final void Function()? onTap,
}) extends ConsumerWidget {
  String _getNoteSummary(BuildContext context, ScheduledNote note) {
    return [
      if (note.data.cw case final cw?)
        cw
      else if (note.data.text case final text?)
        text.replaceAll('\n', ' '),
      if (note.data.files.isNotEmpty)
        '(${t.misskey.withNFiles(n: note.data.files.length)})',
      if (note.data.poll != null) '(${t.misskey.poll})',
      if (note.reply case final reply?) 'RE: ${reply.text ?? '...'}',
      if (note.renote case final renote?) 'RN: ${renote.text ?? '...'}',
    ].join(' ');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;

    return InkWell(
      onTap: onTap,
      child: Mfm(
        account: account,
        text: _getNoteSummary(context, note),
        simple: true,
        author: i,
        nyaize: true,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
