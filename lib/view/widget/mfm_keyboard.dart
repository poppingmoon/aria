import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_editing_controller_extension.dart';
import '../../extension/user_extension.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/account_settings_notifier_provider.dart';
import '../../provider/api/search_hashtags_provider.dart';
import '../../provider/api/search_users_by_username_provider.dart';
import '../../provider/recently_used_emojis_notifier_provider.dart';
import '../../provider/recently_used_users_notifier_provider.dart';
import '../../provider/search_custom_emojis_provider.dart';
import '../../provider/search_unicode_emojis_provider.dart';
import '../../util/pick_date_time.dart';
import '../../util/punycode.dart';
import '../dialog/user_select_dialog.dart';
import 'emoji_picker.dart';
import 'emoji_widget.dart';
import 'mention_widget.dart';

@visibleForTesting
enum TagType {
  emoji(':'),
  mfmFn(r'$['),
  mention('@'),
  hashtag('#');

  const TagType(this.tag);

  final String tag;
}

class MfmKeyboard extends HookConsumerWidget {
  const MfmKeyboard({
    super.key,
    required this.account,
    required this.controller,
  });

  final Account account;
  final TextEditingController controller;

  @visibleForTesting
  (TagType?, int) getLastTag() {
    final start = controller.selection.start;
    if (start < 1) {
      return (null, -1);
    }
    final textBeforeSelection = controller.text.substring(0, start);
    final tagIndexes = TagType.values
        .map(
          (type) => textBeforeSelection.lastIndexOf(
            RegExp(RegExp.escape(type.tag) + r'\S*$'),
          ),
        )
        .toList();
    final lastIndex = tagIndexes.max;
    if (lastIndex >= 0) {
      return (TagType.values[tagIndexes.indexOf(lastIndex)], lastIndex);
    } else {
      return (null, lastIndex);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagType = useState<TagType?>(null);
    useEffect(() {
      void callback() {
        final (type, _) = getLastTag();
        tagType.value = type;
      }

      callback();
      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [account, controller]);

    return switch (tagType.value) {
      TagType.emoji => MfmEmojiKeyboard(
        account: account,
        controller: controller,
        fallbackBuilder: (context) =>
            MfmBasicKeyboard(account: account, controller: controller),
      ),
      TagType.mfmFn => MfmFnKeyboard(
        controller: controller,
        fallbackBuilder: (context) =>
            MfmBasicKeyboard(account: account, controller: controller),
      ),
      TagType.mention => MfmMentionKeyboard(
        account: account,
        controller: controller,
        fallbackBuilder: (context) =>
            MfmBasicKeyboard(account: account, controller: controller),
      ),
      TagType.hashtag => MfmHashtagKeyboard(
        account: account,
        controller: controller,
        fallbackBuilder: (context) =>
            MfmBasicKeyboard(account: account, controller: controller),
      ),
      null => MfmBasicKeyboard(account: account, controller: controller),
    };
  }
}

class _MfmKeyboardContainer extends StatelessWidget {
  const _MfmKeyboardContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40.0,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: TextButtonTheme(
        data: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            minimumSize: Size.zero,
            foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        child: ListView(scrollDirection: Axis.horizontal, children: children),
      ),
    );
  }
}

class MfmBasicKeyboard extends ConsumerWidget {
  const MfmBasicKeyboard({
    super.key,
    required this.account,
    required this.controller,
  });

  final Account account;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _MfmKeyboardContainer(
      children: [
        TextButton(
          onPressed: () => controller.insert(':'),
          child: const Text(':'),
        ),
        TextButton(
          onPressed: () => controller.insert(r'$[', ']'),
          child: const Text(r'$['),
        ),
        TextButton(
          onPressed: () async {
            final user = await selectUser(ref.context, account);
            if (user != null) {
              controller.insert('${user.acct} ');
            } else {
              controller.insert('@');
            }
          },
          child: const Text('@'),
        ),
        TextButton(
          onPressed: () => controller.insert('#'),
          child: const Text('#'),
        ),
        TextButton(
          onPressed: () => controller.insert('<center>', '</center>'),
          child: const Text('<center>'),
        ),
        TextButton(
          onPressed: () => controller.insert('<small>', '</small>'),
          child: const Text('<small>'),
        ),
        TextButton(
          onPressed: () => controller.insert('<i>', '</i>'),
          child: const Text('<i>'),
        ),
        TextButton(
          onPressed: () => controller.insert('<plain>', '</plain>'),
          child: const Text('<plain>'),
        ),
        TextButton(
          onPressed: () => controller.insert('> '),
          child: const Text('>'),
        ),
        TextButton(
          onPressed: () => controller.insert('`', '`'),
          child: const Text('`'),
        ),
        TextButton(
          onPressed: () => controller.insert('```\n', '\n```'),
          child: const Text('```'),
        ),
        TextButton(
          onPressed: () => controller.insert('**', '**'),
          child: const Text('**'),
        ),
        TextButton(
          onPressed: () => controller.insert('~~', '~~'),
          child: const Text('~~'),
        ),
        TextButton(
          onPressed: () => controller.insert('[', ']()'),
          child: const Text('[]()'),
        ),
        TextButton(
          onPressed: () => controller.insert('?[', ']()'),
          child: const Text('?[]()'),
        ),
      ],
    );
  }
}

class MfmEmojiKeyboard extends HookConsumerWidget {
  const MfmEmojiKeyboard({
    super.key,
    required this.account,
    required this.controller,
    this.fallbackBuilder,
  });

  final Account account;
  final TextEditingController controller;
  final Widget Function(BuildContext context)? fallbackBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final isAfterCloseTag = useState(false);
    useEffect(() {
      void callback() {
        final selectionIndex = max(0, controller.selection.start);
        final textBeforeSelection = controller.text.substring(
          0,
          selectionIndex,
        );
        final match = RegExp(r':([^:\s]*)$').firstMatch(textBeforeSelection);
        if (match == null) {
          query.value = '';
          return;
        }
        query.value = match[1] ?? '';
        final tagIndex = min(
          selectionIndex - (match[0]?.length ?? 0),
          controller.text.length,
        );
        isAfterCloseTag.value = RegExp(
          r':\w+$',
        ).hasMatch(controller.text.substring(0, tagIndex));
      }

      callback();
      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [account, controller]);

    if (!isAfterCloseTag.value) {
      final emojis = [
        if (query.value.isEmpty)
          ...ref
              .watch(recentlyUsedEmojisNotifierProvider(account))
              .map((emoji) => emoji.replaceAll('@.', ''))
        else ...[
          ...ref
              .watch(searchCustomEmojisProvider(account.host, query.value))
              .map((emoji) => ':${emoji.name}:'),
          ...ref.watch(searchUnicodeEmojisProvider(query.value)),
        ],
      ];
      if (emojis.isNotEmpty) {
        return _MfmKeyboardContainer(
          children: [
            ...emojis.map(
              (emoji) => TextButton(
                key: ValueKey(emoji),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
                onPressed: () =>
                    controller.replace(query.value.length + 1, emoji),
                child: EmojiWidget(account: account, emoji: emoji),
              ),
            ),
            TextButton(
              onPressed: () async {
                final emoji = await pickEmoji(ref, account);
                if (emoji != null) {
                  controller.replace(
                    query.value.length + 1,
                    emoji.replaceAll('@.', ''),
                  );
                }
              },
              child: Text(t.misskey.more),
            ),
          ],
        );
      }
    }

    return fallbackBuilder?.call(context) ?? const SizedBox.shrink();
  }
}

class MfmFnKeyboard extends HookConsumerWidget {
  const MfmFnKeyboard({
    super.key,
    required this.controller,
    this.fallbackBuilder,
  });

  final TextEditingController controller;
  final Widget Function(BuildContext context)? fallbackBuilder;

  static const Map<String, Map<String, String?>> _mfmFn = {
    'tada': {'delay': '0s', 'speed': '1s'},
    'jelly': {'speed': '1s', 'delay': '0s'},
    'twitch': {'speed': '0.5s', 'delay': '0s'},
    'shake': {'speed': '0.5s', 'delay': '0s'},
    'spin': {
      'speed': '1.5s',
      'delay': '0s',
      'x': null,
      'y': null,
      'left': null,
      'alternate': null,
    },
    'jump': {'speed': '0.75s', 'delay': '0s'},
    'bounce': {'speed': '0.75s', 'delay': '0s'},
    'flip': {'v': null, 'h': null},
    'x2': {},
    'x3': {},
    'x4': {},
    'scale': {'x': '1', 'y': '1'},
    'position': {'x': '0', 'y': '0'},
    'fg': {'color': null},
    'bg': {'color': null},
    'border': {
      'color': null,
      'style': 'solid',
      'width': '1',
      'radius': '0',
      'noclip': null,
    },
    'font': {
      'serif': null,
      'monospace': null,
      'cursive': null,
      'fantasy': null,
    },
    'blur': {},
    'rainbow': {'speed': '1s'},
    'sparkle': {'speed': '1.5s'},
    'rotate': {'deg': '90'},
    'ruby': {},
    'unixtime': {},
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final periodIndex = useState(-1);
    useEffect(() {
      void callback() {
        final selectionIndex = max(0, controller.selection.start);
        final textBeforeSelection = controller.text.substring(
          0,
          selectionIndex,
        );
        final match = RegExp(r'\$\[(\S*)$').firstMatch(textBeforeSelection);
        query.value = match?[1] ?? '';
        periodIndex.value = query.value.indexOf('.');
      }

      callback();
      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [controller]);

    if (periodIndex.value < 0 && !_mfmFn.containsKey(query.value)) {
      final fnNames = _mfmFn.keys.where((name) => name.startsWith(query.value));
      if (fnNames.isNotEmpty) {
        return _MfmKeyboardContainer(
          children: fnNames
              .map(
                (name) => TextButton(
                  onPressed: () async {
                    controller.insert(name.substring(query.value.length));
                    switch (name) {
                      case 'scale' || 'position' || 'font':
                        controller.insert('.', ' ');
                      case 'fg' || 'bg':
                        final color = await showColorPickerDialog(
                          ref.context,
                          Colors.red,
                          pickersEnabled: {
                            ColorPickerType.primary: false,
                            ColorPickerType.accent: false,
                            ColorPickerType.wheel: true,
                          },
                        );
                        if (color != Colors.red) {
                          controller.insert('.color=${color.hex} ');
                        }

                      case 'unixtime':
                        final date = await pickDateTime(ref.context);
                        if (date != null) {
                          final unixtime = date.millisecondsSinceEpoch ~/ 1000;
                          controller.insert(' $unixtime');
                        }
                      default:
                        controller.insert(' ');
                    }
                  },
                  child: Text(name),
                ),
              )
              .toList(),
        );
      }
    } else {
      final requiresPeriod = periodIndex.value < 0;
      final fnName = requiresPeriod
          ? query.value
          : query.value.substring(0, periodIndex.value);
      final fnArgs = Map<String, String?>.of(_mfmFn[fnName] ?? {});
      if (fnArgs.isNotEmpty) {
        final queryArgNames = requiresPeriod
            ? ['']
            : query.value
                  .substring(periodIndex.value + 1)
                  .split(',')
                  .map((s) => s.split('=').first)
                  .toList();
        final requiresComma = fnArgs.containsKey(queryArgNames.last);
        final argQuery = requiresComma ? '' : queryArgNames.removeLast();
        fnArgs.removeWhere(
          (name, _) =>
              queryArgNames.contains(name) || !name.startsWith(argQuery),
        );
        if (fnArgs.isNotEmpty) {
          return _MfmKeyboardContainer(
            children: fnArgs.entries
                .map(
                  (e) => TextButton(
                    onPressed: () async {
                      if (requiresPeriod) {
                        controller.insert('.');
                      }
                      if (requiresComma) {
                        controller.insert(',');
                      }
                      controller.insert(e.key.substring(argQuery.length));
                      switch ((fnName, e.key)) {
                        case (_, 'color'):
                          final color = await showColorPickerDialog(
                            ref.context,
                            Colors.red,
                            pickersEnabled: {
                              ColorPickerType.primary: false,
                              ColorPickerType.accent: false,
                              ColorPickerType.wheel: true,
                            },
                          );
                          if (color != Colors.red) {
                            controller.insert('=${color.hex}');
                          }
                        case ('border', 'style'):
                          final style = await showDialog<String>(
                            context: ref.context,
                            builder: (context) => SimpleDialog(
                              children:
                                  [
                                        'hidden',
                                        'dotted',
                                        'dashed',
                                        'solid',
                                        'double',
                                        'groove',
                                        'ridge',
                                        'inset',
                                        'outset',
                                      ]
                                      .map(
                                        (style) => SimpleDialogOption(
                                          onPressed: () => context.pop(style),
                                          child: Text(style),
                                        ),
                                      )
                                      .toList(),
                            ),
                          );
                          if (style != null) {
                            controller.insert('=$style');
                          }
                        default:
                          if (e.value != null) {
                            controller.insert('=${e.value}');
                          }
                      }
                    },
                    child: Text(e.key),
                  ),
                )
                .toList(),
          );
        }
      }
    }

    return fallbackBuilder?.call(context) ?? const SizedBox.shrink();
  }
}

class MfmMentionKeyboard extends HookConsumerWidget {
  const MfmMentionKeyboard({
    super.key,
    required this.account,
    required this.controller,
    this.fallbackBuilder,
  });

  final Account account;
  final TextEditingController controller;
  final Widget Function(BuildContext context)? fallbackBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final users = useState(<UserDetailed>[]);
    useEffect(() {
      Future<void> callback() async {
        final selectionIndex = max(0, controller.selection.start);
        final textBeforeSelection = controller.text.substring(
          0,
          selectionIndex,
        );
        final match = RegExp(
          r'(@([a-zA-Z0-9_.-]+))?@([^@\s]*)$',
        ).firstMatch(textBeforeSelection);
        query.value = match?[0]?.substring(1) ?? '';
        final first = match?[2];
        final second = match?[3];
        final username = first ?? second;
        final host = first != null && second != null ? toAscii(second) : null;
        if (username != null && username.isNotEmpty) {
          users.value = await ref.read(
            searchUsersByUsernameProvider(
              account,
              username,
              host != null && host.isNotEmpty ? host : null,
            ).future,
          );
        } else {
          users.value = [];
        }
      }

      callback();
      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [account, controller]);
    final recentlyUsedUsers = ref
        .watch(recentlyUsedUsersNotifierProvider(account))
        .valueOrNull;

    if (query.value.isEmpty ? recentlyUsedUsers : users.value case final users?
        when users.isNotEmpty) {
      return _MfmKeyboardContainer(
        children: users
            .map(
              (user) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: MentionWidget(
                  account: account,
                  username: user.username,
                  host: user.host ?? account.host,
                  onTap: () => controller.replace(
                    query.value.length + 1,
                    '${user.acct} ',
                  ),
                ),
              ),
            )
            .toList(),
      );
    }

    return fallbackBuilder?.call(context) ?? const SizedBox.shrink();
  }
}

class MfmHashtagKeyboard extends HookConsumerWidget {
  const MfmHashtagKeyboard({
    super.key,
    required this.account,
    required this.controller,
    this.fallbackBuilder,
  });

  final Account account;
  final TextEditingController controller;
  final Widget Function(BuildContext context)? fallbackBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useState('');
    final hashtags = useState(<String>[]);
    useEffect(() {
      Future<void> callback() async {
        final selectionIndex = max(0, controller.selection.start);
        final textBeforeSelection = controller.text.substring(
          0,
          selectionIndex,
        );
        final match =
            RegExp(r'#(\S*)$').firstMatch(textBeforeSelection) ??
            RegExp(r'(\S*)$').firstMatch(textBeforeSelection);
        query.value = match?[1] ?? '';
        if (query.value case final query when query.isNotEmpty) {
          hashtags.value = await ref.read(
            searchHashtagsProvider(account, query).future,
          );
        } else {
          hashtags.value = [];
        }
      }

      callback();
      controller.addListener(callback);
      return () => controller.removeListener(callback);
    }, [account, controller]);
    final history = ref.watch(
      accountSettingsNotifierProvider(
        account,
      ).select((settings) => settings.hashtags),
    );

    if (query.value.isEmpty ? history : hashtags.value case final hashtags
        when hashtags.isNotEmpty) {
      return _MfmKeyboardContainer(
        children: hashtags
            .map(
              (hashtag) => TextButton(
                onPressed: () => controller.insert(
                  '${hashtag.substring(query.value.length)} ',
                ),
                child: Text(hashtag),
              ),
            )
            .toList(),
      );
    }

    return fallbackBuilder?.call(context) ?? const SizedBox.shrink();
  }
}
