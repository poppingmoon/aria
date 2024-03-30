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
    final descriptionController =
        useTextEditingController(text: this.settings?.description);

    return AlertDialog(
      title: Text(this.settings == null ? t.misskey.create : t.misskey.edit),
      content: Column(
        children: [
          ListTile(
            title: Text(t.misskey.name),
            subtitle: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: nameController,
                onChanged: (value) =>
                    settings.value = settings.value.copyWith(name: value),
                textInputAction: TextInputAction.next,
              ),
            ),
          ),
          ListTile(
            title: Text('${t.misskey.description} (${t.misskey.optional})'),
            subtitle: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: descriptionController,
                onChanged: (value) => settings.value = settings.value
                    .copyWith(description: value.isNotEmpty ? value : null),
                maxLines: 5,
                textInputAction: TextInputAction.done,
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
