import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../i18n/strings.g.dart';

class FieldDialog extends HookWidget {
  const FieldDialog({super.key, this.field});

  final UserField? field;

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController(text: field?.name);
    final valueController = useTextEditingController(text: field?.value);

    return AlertDialog(
      title: Text(t.misskey.profile_.metadata),
      content: Shortcuts(
        shortcuts: disablingTextShortcuts,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: t.misskey.profile_.metadataLabel,
              ),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: t.misskey.profile_.metadataContent,
              ),
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(
            UserField(name: nameController.text, value: valueController.text),
          ),
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
