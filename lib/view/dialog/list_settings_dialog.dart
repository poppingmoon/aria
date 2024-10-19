import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';
import '../../model/list_settings.dart';

class ListSettingsDialog extends HookWidget {
  const ListSettingsDialog({super.key, this.settings});

  final ListSettings? settings;

  @override
  Widget build(BuildContext context) {
    final settings = useState(this.settings ?? const ListSettings());
    final controller = useTextEditingController(text: this.settings?.name);

    return AlertDialog(
      title: Text(t.misskey.editList),
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: t.misskey.name,
                  enabledBorder: Theme.of(context).inputDecorationTheme.border,
                ),
                onChanged: (value) =>
                    settings.value = settings.value.copyWith(name: value),
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          SwitchListTile(
            title: Text(t.misskey.public),
            value: settings.value.isPublic ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(isPublic: value),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(settings.value),
          child: Text(t.misskey.save),
        ),
        OutlinedButton(
          onPressed: () => context.pop(),
          child: Text(t.misskey.cancel),
        ),
      ],
      scrollable: true,
    );
  }
}
