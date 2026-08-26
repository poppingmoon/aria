import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../i18n/strings.g.dart';
import '../../provider/boot_state_provider.dart';
import '../widget/error_message.dart';

class const SplashPage({super.key}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bootState = ref.watch(bootStateProvider);

    if (bootState.hasError) {
      return Scaffold(
        appBar: AppBar(title: Text(t.misskey.error)),
        body: Center(
          child: SingleChildScrollView(
            child: ErrorMessage(
              error: bootState.error,
              stackTrace: bootState.stackTrace,
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        body: FutureBuilder(
          future: Future(ref.read(bootStateProvider.notifier).boot),
          builder: (context, snapshot) {
            return const Center(child: CircularProgressIndicator());
          },
        ),
      );
    }
  }
}
