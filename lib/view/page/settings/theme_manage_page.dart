import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json5/json5.dart';
import 'package:uuid/uuid.dart';

import '../../../constant/builtin_misskey_colors.g.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/account.dart';
import '../../../model/misskey_theme.dart';
import '../../../provider/api/meta_provider.dart';
import '../../../provider/misskey_theme_codes_notifier_provider.dart';
import '../../../provider/misskey_themes_provider.dart';
import '../../../util/compile_theme.dart';
import '../../../util/copy_text.dart';
import '../../../util/future_with_dialog.dart';
import '../../dialog/account_select_dialog.dart';
import '../../dialog/confirmation_dialog.dart';
import '../../dialog/message_dialog.dart';
import '../../dialog/text_field_dialog.dart';
import '../../widget/error_message.dart';
import '../../widget/key_value_widget.dart';

class ThemeManagePage extends ConsumerWidget {
  const ThemeManagePage({super.key});

  Future<void> _install(
    WidgetRef ref,
    String code, {
    String? fallbackName,
  }) async {
    try {
      final json = json5Decode(code) as Map<String, dynamic>;
      bool amended = false;
      if (json['id'] == null) {
        json['id'] = const Uuid().v4();
        amended = true;
      }
      if (json['name'] == null) {
        json['name'] = fallbackName ?? json['id'];
        amended = true;
      }
      final theme = MisskeyTheme.fromJson(json);
      if (!ref.context.mounted) return;
      if (builtinMisskeyColors.any((e) => e.id == theme.id) ||
          ref.read(misskeyThemesProvider).any((e) => e?.id == theme.id)) {
        await showMessageDialog(
          ref.context,
          t.misskey.theme_.alreadyInstalled,
        );
        return;
      }
      compileTheme(theme);
      await ref
          .read(misskeyThemeCodesNotifierProvider.notifier)
          .install(amended ? json5Encode(json) : code);
      if (!ref.context.mounted) return;
      await showMessageDialog(
        ref.context,
        t.misskey.theme_.installed(name: theme.name),
      );
    } catch (e, st) {
      if (!ref.context.mounted) return;
      await showDialog<void>(
        context: ref.context,
        builder: (context) => AlertDialog(
          title: Text(t.misskey.theme_.invalid),
          content: ErrorMessage(error: e, stackTrace: st),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codes = ref.watch(misskeyThemeCodesNotifierProvider);
    final themes = ref.watch(misskeyThemesProvider);

    return Scaffold(
      appBar: AppBar(title: Text(t.misskey.theme_.installedThemes)),
      body: Center(
        child: SizedBox(
          width: 800.0,
          child: codes.isNotEmpty
              ? ListView(
                  children: List.generate(
                    codes.length,
                    (index) {
                      final theme = themes[index];
                      return ExpansionTile(
                        leading: Icon(
                          theme != null
                              ? theme.base == 'dark'
                                  ? Icons.dark_mode
                                  : Icons.light_mode
                              : Icons.question_mark,
                        ),
                        title: Text(themes[index]?.name ?? t.misskey.unknown),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (theme case MisskeyTheme(:final author?))
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              child: KeyValueWidget(
                                label: t.misskey.author,
                                text: author,
                              ),
                            ),
                          if (theme case MisskeyTheme(:final desc?))
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              child: KeyValueWidget(
                                label: t.misskey.theme_.description,
                                text: desc,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 16.0,
                            ),
                            child: KeyValueWidget(
                              label: t.misskey.theme_.code,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxHeight: 400.0),
                                    child: SingleChildScrollView(
                                      child: SizedBox(
                                        width: double.maxFinite,
                                        child: SelectableText(
                                          codes[index],
                                          style: const TextStyle(
                                            fontFamily: 'monospace',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        copyToClipboard(context, codes[index]),
                                    child: Text(t.misskey.copy),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 16.0,
                            ),
                            child: OutlinedButton.icon(
                              onPressed: () async {
                                final confirmed = await confirm(
                                  context,
                                  message: t.misskey.deleteAreYouSure(
                                    x: themes[index]?.name ?? t.misskey.unknown,
                                  ),
                                );
                                if (confirmed) {
                                  await ref
                                      .read(
                                        misskeyThemeCodesNotifierProvider
                                            .notifier,
                                      )
                                      .uninstall(index);
                                }
                              },
                              style: OutlinedButton.styleFrom(
                                foregroundColor:
                                    Theme.of(context).colorScheme.error,
                              ),
                              icon: const Icon(Icons.delete),
                              label: Text(t.misskey.uninstall),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                )
              : Center(child: Text(t.aria.noThemes)),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (context) => ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.paste),
                  title: Text(t.misskey.theme_.code),
                  onTap: () async {
                    final result = await showTextFieldDialog(
                      context,
                      title: Text(t.misskey.theme_.code),
                      maxLines: 10,
                    );
                    if (result != null) {
                      await _install(ref, result);
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.dns),
                  title: Text(t.misskey.instance),
                  onTap: () async {
                    final account = await showDialog<Account>(
                      context: context,
                      builder: (context) => const AccountSelectDialog(),
                    );
                    if (account == null) return;
                    if (!context.mounted) return;
                    final meta = await futureWithDialog(
                      context,
                      ref.read(metaProvider(account).future),
                    );
                    if (meta == null) return;
                    if (!context.mounted) return;
                    final lightTheme = meta.defaultLightTheme;
                    final darkTheme = meta.defaultDarkTheme;
                    if (lightTheme == null && darkTheme == null) {
                      await showMessageDialog(context, t.aria.noThemes);
                      return;
                    }
                    if (lightTheme != null) {
                      await _install(
                        ref,
                        lightTheme,
                        fallbackName: account.host,
                      );
                    }
                    if (darkTheme != null) {
                      await _install(
                        ref,
                        darkTheme,
                        fallbackName: account.host,
                      );
                    }
                  },
                ),
              ],
            ),
            clipBehavior: Clip.hardEdge,
          );
        },
        icon: const Icon(Icons.add),
        label: Text(t.misskey.theme_.install),
      ),
    );
  }
}
