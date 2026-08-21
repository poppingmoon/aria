import 'package:material_ui/material_ui.dart';

import 'general_settings_navigation.dart';

export 'general_settings_navigation.dart' show GeneralSettingsDestination;

class const GeneralSettingsScaffold({
  super.key,
  final PreferredSizeWidget? appBar,
  final Widget? body,
  final Widget? floatingActionButton,
  final GeneralSettingsDestination? selectedDestination,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMiddleScreen = width > 800.0;
    final isLargeScreen = width > 1200.0;

    return Scaffold(
      appBar: appBar,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isMiddleScreen)
            Material(
              color: Theme.of(context).colorScheme.surface,
              child: SizedBox(
                width: isLargeScreen ? 300.0 : 48.0,
                height: double.infinity,
                child: GeneralSettingsNavigation(
                  rail: !isLargeScreen,
                  selectedDestination: selectedDestination,
                ),
              ),
            ),
          if (body case final body?) Expanded(child: body),
        ],
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
