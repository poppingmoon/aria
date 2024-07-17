import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../provider/accounts_notifier_provider.dart';
import '../../../provider/api/i_notifier_provider.dart';
import '../../widget/general_settings_navigation.dart';
import '../../widget/user_avatar.dart';
import '../../widget/username_widget.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(accountsNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.settings)),
      body: Center(
        child: Container(
          width: 800.0,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: ListTileTheme(
              tileColor: Theme.of(context).colorScheme.surface,
              child: Column(
                children: [
                  if (accounts.isNotEmpty) ...[
                    Container(
                      height: 8.0,
                      margin: const EdgeInsets.only(top: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                    ...ListTile.divideTiles(
                      context: context,
                      tiles: accounts.map((account) {
                        final i =
                            ref.watch(iNotifierProvider(account)).valueOrNull;
                        return ListTile(
                          leading: i != null
                              ? UserAvatar(
                                  account: account,
                                  user: i,
                                  size: 32.0,
                                )
                              : null,
                          title: Consumer(
                            builder: (context, ref, _) => Text.rich(
                              t.aria.settingsForUser(
                                user: i != null
                                    ? TextSpan(
                                        children: buildUsername(
                                          ref,
                                          account: account,
                                          user: i,
                                        ),
                                      )
                                    : TextSpan(text: account.username),
                              ),
                            ),
                          ),
                          subtitle: Text(account.toString()),
                          onTap: () =>
                              context.push('/settings/accounts/$account'),
                        );
                      }),
                    ),
                    Container(
                      height: 8.0,
                      margin: const EdgeInsets.only(bottom: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                  Container(
                    height: 8.0,
                    margin: const EdgeInsets.only(top: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                  // Adding "const" to this prevents update of translations.
                  // ignore: prefer_const_constructors
                  GeneralSettingsNavigation(
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  Container(
                    height: 8.0,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
