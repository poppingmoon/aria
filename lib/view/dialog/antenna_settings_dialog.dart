import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/antenna_settings.dart';
import '../../provider/api/lists_notifier_provider.dart';
import '../widget/antenna_source_widget.dart';
import '../widget/mention_widget.dart';
import 'radio_dialog.dart';
import 'user_select_dialog.dart';

class AntennaSettingsDialog extends HookConsumerWidget {
  const AntennaSettingsDialog({
    super.key,
    required this.account,
    this.settings,
  });

  final Account account;
  final AntennaSettings? settings;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = useState(
      this.settings ?? const AntennaSettings(src: AntennaSource.all),
    );
    final nameController = useTextEditingController(text: this.settings?.name);
    final keywordsController = useTextEditingController(
      text: this.settings?.keywords?.map((e) => e.join(' ')).join('\n'),
    );
    final excludeKeywordsController = useTextEditingController(
      text: this.settings?.excludeKeywords?.map((e) => e.join(' ')).join('\n'),
    );
    final lists = ref.watch(listsNotifierProvider(account)).valueOrNull;
    final list =
        lists?.firstWhereOrNull((list) => list.id == settings.value.userListId);

    return AlertDialog(
      title: Text(this.settings == null ? t.misskey.create : t.misskey.edit),
      content: Column(
        children: [
          ListTile(
            title: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: t.misskey.name),
                onChanged: (value) =>
                    settings.value = settings.value.copyWith(name: value),
                textInputAction: TextInputAction.next,
              ),
            ),
          ),
          ListTile(
            title: Text(t.misskey.antennaSource),
            subtitle: AntennaSourceWidget(antennaSource: settings.value.src),
            trailing: const Icon(Icons.navigate_next),
            onTap: () async {
              final result = await showRadioDialog(
                context,
                title: Text(t.misskey.antennaSource),
                values: AntennaSource.values,
                initialValue: settings.value.src,
                itemBuilder: (context, antennaSource) =>
                    AntennaSourceWidget(antennaSource: antennaSource),
              );
              if (result != null) {
                settings.value = settings.value.copyWith(src: result);
              }
            },
          ),
          if (settings.value.src == AntennaSource.list)
            ListTile(
              title: Text(t.misskey.userList),
              subtitle: Text(list?.name ?? ''),
              trailing: const Icon(Icons.navigate_next),
              onTap: () async {
                final result = await showRadioDialog(
                  context,
                  title: Text(t.misskey.userList),
                  values: AntennaSource.values,
                  initialValue: settings.value.src,
                  itemBuilder: (context, antennaSource) =>
                      AntennaSourceWidget(antennaSource: antennaSource),
                );
                if (result != null) {
                  settings.value = settings.value.copyWith(src: result);
                }
              },
            ),
          if (settings.value.src
              case AntennaSource.users || AntennaSource.usersBlackList)
            ListTile(
              title: Text(t.misskey.users),
              subtitle: Wrap(
                spacing: 4.0,
                runSpacing: 4.0,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  ...?settings.value.users?.mapIndexed(
                    (index, user) {
                      final acct =
                          (user.startsWith('@') ? user.substring(1) : user)
                              .split('@');
                      final username = acct[0];
                      final host = acct.elementAtOrNull(1) ?? account.host;
                      return MentionWidget(
                        account: account,
                        username: username,
                        host: host,
                        onDeleted: () {
                          final users = settings.value.users;
                          if (users == null) return;
                          settings.value = settings.value.copyWith(
                            users: [
                              ...users.sublist(0, index),
                              ...users.sublist(index + 1),
                            ],
                          );
                        },
                      );
                    },
                  ),
                  TextButton.icon(
                    onPressed: () async {
                      final result = await selectUser(
                        context,
                        account,
                        includeSelf: true,
                        localOnly: settings.value.localOnly ?? false,
                      );
                      if (result != null) {
                        settings.value = settings.value.copyWith(
                          users: [...?settings.value.users, result.acct],
                        );
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: Text(t.misskey.addUser),
                  ),
                ],
              ),
            ),
          SwitchListTile(
            title: Text(t.misskey.withReplies),
            value: settings.value.withReplies ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(withReplies: value),
          ),
          ListTile(
            title: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: keywordsController,
                decoration: InputDecoration(
                  labelText: t.misskey.antennaKeywords,
                  alignLabelWithHint: true,
                ),
                maxLines: 5,
              ),
            ),
            subtitle: Text(t.misskey.antennaKeywordsDescription),
          ),
          ListTile(
            title: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: excludeKeywordsController,
                decoration: InputDecoration(
                  labelText: t.misskey.antennaExcludeKeywords,
                  alignLabelWithHint: true,
                ),
                minLines: 3,
                maxLines: 10,
              ),
            ),
            subtitle: Text(t.misskey.antennaKeywordsDescription),
          ),
          SwitchListTile(
            title: Text(t.misskey.localOnly),
            value: settings.value.localOnly ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(localOnly: value),
          ),
          SwitchListTile(
            title: Text(t.misskey.caseSensitive),
            value: settings.value.caseSensitive ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(caseSensitive: value),
          ),
          SwitchListTile(
            title: Text(t.misskey.withFileAntenna),
            value: settings.value.withFile ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(withFile: value),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(
            settings.value.copyWith(
              keywords: keywordsController.text
                  .trim()
                  .split('\n')
                  .map((e) => e.trim().split(' '))
                  .toList(),
              excludeKeywords: excludeKeywordsController.text
                  .trim()
                  .split('\n')
                  .map((e) => e.trim().split(' '))
                  .toList(),
            ),
          ),
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
