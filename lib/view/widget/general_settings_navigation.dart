import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../i18n/strings.g.dart';

enum GeneralSettingsDestination {
  tabs,
  accounts,
  language,
  noteDisplay,
  emojiPicker,
  appearance,
  behavior,
  theme,
  importExport,
  aboutAria,
}

class GeneralSettingsNavigation extends StatelessWidget {
  const GeneralSettingsNavigation({
    super.key,
    this.rail = false,
    this.selectedDestination,
  });

  final bool rail;
  final GeneralSettingsDestination? selectedDestination;

  Widget _buildIcon(GeneralSettingsDestination destination) {
    return switch (destination) {
      GeneralSettingsDestination.tabs => const Icon(Icons.bookmark),
      GeneralSettingsDestination.accounts => const Icon(Icons.person),
      GeneralSettingsDestination.language => const Icon(Icons.translate),
      GeneralSettingsDestination.noteDisplay => const Icon(Icons.article),
      GeneralSettingsDestination.emojiPicker => const Icon(Icons.emoji_symbols),
      GeneralSettingsDestination.appearance => const Icon(Icons.brush),
      GeneralSettingsDestination.behavior => const Icon(Icons.gesture),
      GeneralSettingsDestination.theme => const Icon(Icons.palette),
      GeneralSettingsDestination.importExport =>
        const Icon(Icons.import_export),
      GeneralSettingsDestination.aboutAria => const Icon(Icons.info_outline),
    };
  }

  String _buildLabel(GeneralSettingsDestination destination) {
    return switch (destination) {
      GeneralSettingsDestination.tabs => t.aria.tabs,
      GeneralSettingsDestination.accounts => t.misskey.accounts,
      GeneralSettingsDestination.language => t.misskey.uiLanguage,
      GeneralSettingsDestination.noteDisplay => t.misskey.displayOfNote,
      GeneralSettingsDestination.emojiPicker => t.misskey.emojiPicker,
      GeneralSettingsDestination.appearance => t.misskey.appearance,
      GeneralSettingsDestination.behavior => t.misskey.behavior,
      GeneralSettingsDestination.theme => t.misskey.theme,
      GeneralSettingsDestination.importExport => t.misskey.importAndExport,
      GeneralSettingsDestination.aboutAria => t.aria.aboutAria,
    };
  }

  void _onTap(BuildContext context, GeneralSettingsDestination destination) {
    final location = switch (destination) {
      GeneralSettingsDestination.tabs => '/settings/tab',
      GeneralSettingsDestination.accounts => '/settings/accounts',
      GeneralSettingsDestination.language => '/settings/language',
      GeneralSettingsDestination.noteDisplay => '/settings/note-display',
      GeneralSettingsDestination.emojiPicker => '/settings/emoji-picker',
      GeneralSettingsDestination.appearance => '/settings/appearance',
      GeneralSettingsDestination.behavior => '/settings/behavior',
      GeneralSettingsDestination.theme => '/settings/theme',
      GeneralSettingsDestination.importExport => '/settings/import-export',
      GeneralSettingsDestination.aboutAria => '/about-aria',
    };
    if (selectedDestination != null) {
      context.replace(location);
    } else {
      context.push(location);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: GeneralSettingsDestination.values
          .map(
            (destination) => rail
                ? IconButtonTheme(
                    data: IconButtonThemeData(
                      style: IconButton.styleFrom(
                        disabledForegroundColor:
                            Theme.of(context).colorScheme.primary,
                        minimumSize: const Size(48.0, 48.0),
                      ),
                    ),
                    child: IconButton(
                      tooltip: _buildLabel(destination),
                      onPressed: destination != selectedDestination
                          ? () => _onTap(context, destination)
                          : null,
                      icon: _buildIcon(destination),
                    ),
                  )
                : ListTile(
                    leading: _buildIcon(destination),
                    title: Text(_buildLabel(destination)),
                    onTap: destination != selectedDestination
                        ? () => _onTap(context, destination)
                        : null,
                    selected: destination == selectedDestination,
                  ),
          )
          .toList(),
    );
    // }
  }
}
