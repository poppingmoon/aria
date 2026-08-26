import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/server_url_notifier_provider.dart';

class const PermissionDeniedErrorWidget({
  super.key,
  required final Account account,
}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final query = serverUrl.toString().replaceFirst('https://', '');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8.0,
      children: [
        const Icon(Icons.error_outline, size: 40.0),
        Text(t.aria.permissionDeniedErrorDescription),
        ElevatedButton(
          onPressed: () => context.push('/login?query=$query'),
          child: Text(t.misskey.login),
        ),
      ],
    );
  }
}
