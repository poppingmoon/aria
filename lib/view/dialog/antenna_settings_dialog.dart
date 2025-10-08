import 'dart:convert';

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
import '../../provider/api/endpoint_parameters_provider.dart';
import '../../provider/api/lists_notifier_provider.dart';
import '../../util/future_with_dialog.dart';
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
    final lists = ref.watch(listsNotifierProvider(account)).value;
    final list = lists?.firstWhereOrNull(
      (list) => list.id == settings.value.userListId,
    );
    final params = ref
        .watch(endpointParametersProvider(account, 'antennas/create'))
        .value;
    final theme = Theme.of(context);

    return AlertDialog(
      title: Text(
        this.settings?.name == null ? t.misskey.createAntenna : t.misskey.edit,
      ),
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
                onChanged: (value) =>
                    settings.value = settings.value.copyWith(name: value),
                textInputAction: TextInputAction.next,
                onTapOutside: (_) => primaryFocus?.unfocus(),
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
                titleBuilder: (context, antennaSource) =>
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
              subtitle: Text(
                settings.value.userListId != null
                    ? list?.name ?? ''
                    : t.misskey.notSet,
              ),
              trailing: settings.value.userListId != null
                  ? IconButton(
                      onPressed: () => settings.value = settings.value.copyWith(
                        userListId: null,
                      ),
                      icon: const Icon(Icons.close),
                    )
                  : const Icon(Icons.navigate_next),
              onTap: () async {
                final lists = await futureWithDialog(
                  ref.context,
                  ref.read(listsNotifierProvider(account).future),
                );
                if (!ref.context.mounted) return;
                if (lists == null) return;
                final result = await showRadioDialog(
                  context,
                  title: Text(t.misskey.selectList),
                  values: lists,
                  initialValue: list,
                  titleBuilder: (context, list) => Text(list.name ?? ''),
                );
                if (result != null) {
                  settings.value = settings.value.copyWith(
                    userListId: result.id,
                  );
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
                  ...?settings.value.users?.mapIndexed((index, user) {
                    final acct =
                        (user.startsWith('@') ? user.substring(1) : user).split(
                          '@',
                        );
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
                  }),
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
            title: Text(t.misskey.antennaExcludeBots),
            value: settings.value.excludeBots ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(excludeBots: value),
          ),
          SwitchListTile(
            title: Text(t.misskey.withReplies),
            value: settings.value.withReplies ?? false,
            onChanged: (value) =>
                settings.value = settings.value.copyWith(withReplies: value),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: keywordsController,
                decoration: InputDecoration(
                  labelText: t.misskey.antennaKeywords,
                  helperText: t.misskey.antennaKeywordsDescription,
                  enabledBorder: theme.inputDecorationTheme.border,
                  alignLabelWithHint: true,
                ),
                maxLines: 5,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Shortcuts(
              shortcuts: disablingTextShortcuts,
              child: TextField(
                controller: excludeKeywordsController,
                decoration: InputDecoration(
                  labelText: t.misskey.antennaExcludeKeywords,
                  helperText: t.misskey.antennaKeywordsDescription,
                  enabledBorder: theme.inputDecorationTheme.border,
                  alignLabelWithHint: true,
                ),
                minLines: 3,
                maxLines: 10,
                onTapOutside: (_) => primaryFocus?.unfocus(),
              ),
            ),
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
          if (this.settings?.excludeNotesInSensitiveChannel != null ||
              (params?.any(
                    (param) => param.name == 'excludeNotesInSensitiveChannel',
                  ) ??
                  false))
            SwitchListTile(
              title: Text(t.misskey.excludeNotesInSensitiveChannel),
              value: settings.value.excludeNotesInSensitiveChannel ?? false,
              onChanged: (value) => settings.value = settings.value.copyWith(
                excludeNotesInSensitiveChannel: value,
              ),
            ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => context.pop(
            settings.value.copyWith(
              keywords: LineSplitter.split(keywordsController.text.trim())
                  .map(
                    (line) => line
                        .split(' ')
                        .map((keyword) => keyword.trim())
                        .toList(),
                  )
                  .toList(),
              excludeKeywords:
                  LineSplitter.split(excludeKeywordsController.text.trim())
                      .map(
                        (line) => line
                            .split(' ')
                            .map((keyword) => keyword.trim())
                            .toList(),
                      )
                      .toList(),
            ),
          ),
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
