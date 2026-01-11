import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../model/account.dart';
import '../provider/api/misskey_provider.dart';
import 'navigate.dart';

Future<void> lookup(WidgetRef ref, Account account, String query) async {
  if (query.startsWith('@') && !query.contains(' ')) {
    await ref.context.push('/$account/$query');
  } else if (query.startsWith('#')) {
    await ref.context.push('/$account/tags/${query.substring(1)}');
  } else if (query.startsWith(RegExp('https?://'))) {
    final url = Uri.tryParse(query);
    if (url == null) return;
    if (url.host == account.host) {
      await navigate(ref, account, query);
    } else {
      try {
        final response = await ref
            .read(misskeyProvider(account))
            .ap
            .show(ApShowRequest(uri: url));
        if (!ref.context.mounted) return;
        if (response.type == 'User') {
          await ref.context.push('/$account/users/${response.object['id']}');
        } else if (response.type == 'Note') {
          await ref.context.push('/$account/notes/${response.object['id']}');
        }
      } catch (_) {
        await navigate(ref, account, query);
      }
    }
  }
}
