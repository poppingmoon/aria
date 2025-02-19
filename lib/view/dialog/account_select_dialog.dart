import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/accounts_notifier_provider.dart';
import '../../util/punycode.dart';
import '../widget/misskey_server_autocomplete.dart';
import 'misskey_server_list_dialog.dart';

class AccountSelectDialog extends HookConsumerWidget {
  const AccountSelectDialog({super.key, this.initialAccount});

  final Account? initialAccount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);
    final account = useState(initialAccount);
    final controller = useTextEditingController(text: initialAccount?.host);
    final focusNode = useFocusNode();
    useEffect(() {
      controller.addListener(
        () =>
            account.value = Account(
              host:
                  toAscii(
                    controller.text
                        .trim()
                        .replaceFirst('https://', '')
                        .split('/')
                        .first,
                  ).toLowerCase(),
            ),
      );
      return;
    }, []);

    return AlertDialog(
      title: Text(t.misskey.selectAccount),
      scrollable: true,
      content: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.add),
            title: Text(t.misskey.addAccount),
            trailing: const Icon(Icons.navigate_next),
            onTap: () => context.push('/login'),
          ),
          ...accounts.map(
            (acct) => RadioListTile(
              title: Text(acct.toString()),
              value: acct,
              groupValue: account.value,
              onChanged: (value) => account.value = value,
            ),
          ),
          RadioListTile(
            title: Text(t.aria.guest),
            value: true,
            groupValue: account.value?.isGuest ?? false,
            onChanged:
                (value) => account.value = Account(host: controller.text),
          ),
          if (account.value?.isGuest ?? false) ...[
            MisskeyServerAutocomplete(
              controller: controller,
              focusNode: focusNode,
            ),
            TextButton(
              onPressed: () async {
                final host = await showDialog<String>(
                  context: context,
                  builder: (context) => const MisskeyServerListDialog(),
                );
                if (host != null) {
                  controller.text = host;
                }
              },
              child: Text(t.aria.findServer),
            ),
          ],
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(account.value),
          child: Text(t.misskey.ok),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
    );
  }
}
