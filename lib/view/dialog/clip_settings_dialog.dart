import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/clip_settings.dart';

class ClipSettingsDialog extends HookWidget {
  const ClipSettingsDialog({super.key, this.settings});

  final ClipSettings? settings;

  @override
  Widget build(BuildContext context) {
    final settings = useState(this.settings ?? const ClipSettings());
    final nameController = useTextEditingController(text: this.settings?.name);
    final descriptionController = useTextEditingController(
      text: this.settings?.description,
    );
    final theme = Theme.of(context);

    return AlertDialog(
      title: Text(this.settings == null ? t.misskey.create : t.misskey.edit),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: t.misskey.name,
                  enabledBorder: theme.inputDecorationTheme.border,
                ),
                onChanged:
                    (value) =>
                        settings.value = settings.value.copyWith(name: value),
                textInputAction: TextInputAction.next,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: '${t.misskey.description} (${t.misskey.optional})',
                  enabledBorder: theme.inputDecorationTheme.border,
                  alignLabelWithHint: true,
                ),
                onChanged:
                    (value) =>
                        settings.value = settings.value.copyWith(
                          description: value.isNotEmpty ? value : null,
                        ),
                maxLines: 5,
                textInputAction: TextInputAction.done,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.public),
            value: settings.value.isPublic ?? false,
            onChanged:
                (value) =>
                    settings.value = settings.value.copyWith(isPublic: value),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(settings.value),
          child: Text(t.misskey.save),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.surfaceContainerLowest,
          ),
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
