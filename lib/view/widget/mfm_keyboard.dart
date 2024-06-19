import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

const Map<String, Map<String, String?>> _mfmFn = {
  'tada': {
    'delay': '0s',
    'speed': '1s',
  },
  'jelly': {
    'speed': '1s',
    'delay': '0s',
  },
  'twitch': {
    'speed': '0.5s',
    'delay': '0s',
  },
  'shake': {
    'speed': '0.5s',
    'delay': '0s',
  },
  'spin': {
    'speed': '1.5s',
    'delay': '0s',
    'x': null,
    'y': null,
    'left': null,
    'alternate': null,
  },
  'jump': {
    'speed': '0.75s',
    'delay': '0s',
  },
  'bounce': {
    'speed': '0.75s',
    'delay': '0s',
  },
  'flip': {
    'v': null,
    'h': null,
  },
  'x2': {},
  'x3': {},
  'x4': {},
  'scale': {
    'x': '1',
    'y': '1',
  },
  'position': {
    'x': '0',
    'y': '0',
  },
  'fg': {
    'color': null,
  },
  'bg': {
    'color': null,
  },
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
  'rainbow': {
    'speed': '1s',
  },
  'sparkle': {
    'speed': '1.5s',
  },
  'rotate': {
    'deg': '90',
  },
  'ruby': {},
  'unixtime': {},
};

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
          (type) => textBeforeSelection
              .lastIndexOf(RegExp(RegExp.escape(type.tag) + r'\S*$')),
        )
        .toList();
    final lastIndex = tagIndexes.max;
    if (lastIndex >= 0) {
      return (TagType.values[tagIndexes.indexOf(lastIndex)], lastIndex);
    } else {
      return (null, lastIndex);
    }
  }

  List<Widget> _buildButtons(
    WidgetRef ref,
    TextEditingController controller,
    TagType? tagType,
    int tagIndex,
  ) {
    if (tagType != null) {
      final selectionIndex = max(0, controller.selection.start);
      final query = controller.text
          .substring(tagIndex + tagType.tag.length, selectionIndex);
      switch (tagType) {
        case TagType.emoji:
          if (!RegExp(r':\w+$')
              .hasMatch(controller.text.substring(0, tagIndex))) {
            final emojis = [
              if (query.isEmpty)
                ...ref
                    .watch(recentlyUsedEmojisNotifierProvider(account))
                    .map((emoji) => emoji.replaceAll('@.', ''))
              else ...[
                ...?ref
                    .watch(searchCustomEmojisProvider(account.host, query))
                    .valueOrNull
                    ?.map((emoji) => ':${emoji.name}:'),
                ...?ref.watch(searchUnicodeEmojisProvider(query)).valueOrNull,
              ],
            ];
            if (emojis.isNotEmpty) {
              return [
                ...emojis.map(
                  (emoji) => TextButton(
                    key: ValueKey(emoji),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 8.0,
                      ),
                    ),
                    onPressed: () =>
                        controller.replace(query.length + 1, emoji),
                    child: EmojiWidget(account: account, emoji: emoji),
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final emoji = await pickEmoji(ref, account);
                    if (emoji != null) {
                      controller.replace(
                        query.length + 1,
                        emoji.replaceAll('@.', ''),
                      );
                    }
                  },
                  child: Text(t.misskey.more),
                ),
              ];
            }
          }
        case TagType.mfmFn:
          final periodIndex = query.indexOf('.');
          if (periodIndex < 0 && !_mfmFn.containsKey(query)) {
            final fnNames = _mfmFn.keys.where((name) => name.startsWith(query));
            if (fnNames.isNotEmpty) {
              return fnNames
                  .map(
                    (name) => TextButton(
                      onPressed: () async {
                        controller.insert(name.substring(query.length));
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
                              final unixtime =
                                  date.millisecondsSinceEpoch ~/ 1000;
                              controller.insert(' $unixtime');
                            }
                          default:
                            controller.insert(' ');
                        }
                      },
                      child: Text(name),
                    ),
                  )
                  .toList();
            }
          } else {
            final requiresPeriod = periodIndex < 0;
            final fnName =
                requiresPeriod ? query : query.substring(0, periodIndex);
            final fnArgs = Map<String, String?>.of(_mfmFn[fnName] ?? {});
            if (fnArgs.isNotEmpty) {
              final queryArgNames = requiresPeriod
                  ? ['']
                  : query
                      .substring(periodIndex + 1)
                      .split(',')
                      .map((s) => s.split('=').first)
                      .toList();
              final requiresComma = fnArgs.containsKey(queryArgNames.last);
              final argQuery = requiresComma ? '' : queryArgNames.removeLast();
              fnArgs.removeWhere(
                (name, _) =>
                    queryArgNames.contains(name) || !name.startsWith(argQuery),
              );
              return fnArgs.entries
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
                                children: [
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
                  .toList();
            }
          }
        case TagType.mention:
          final acct = query.split('@');
          final users = query.isEmpty
              ? ref
                  .watch(recentlyUsedUsersNotifierProvider(account))
                  .valueOrNull
              : ref
                  .watch(
                    searchUsersByUsernameProvider(
                      account,
                      acct[0],
                      acct.elementAtOrNull(1),
                    ),
                  )
                  .valueOrNull;
          if (users != null && users.isNotEmpty) {
            return users
                .map(
                  (user) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MentionWidget(
                      account: account,
                      username: user.username,
                      host: user.host ?? account.host,
                      onTap: () => controller
                          .insert('${user.acct.substring(query.length + 1)} '),
                    ),
                  ),
                )
                .toList();
          }
        case TagType.hashtag:
          final hashtags = query.isEmpty
              ? ref.watch(
                  accountSettingsNotifierProvider(account)
                      .select((settings) => settings.hashtags),
                )
              : ref.watch(searchHashtagsProvider(account, query)).valueOrNull;
          if (hashtags != null && hashtags.isNotEmpty) {
            return hashtags
                .map(
                  (hashtag) => TextButton(
                    onPressed: () => controller
                        .insert('${hashtag.substring(query.length)} '),
                    child: Text(hashtag),
                  ),
                )
                .toList();
          }
      }
    }
    return [
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
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagType = useState<TagType?>(null);
    final tagIndex = useState(-1);
    useEffect(
      () {
        final (type, index) = getLastTag();
        tagType.value = type;
        tagIndex.value = index;
        controller.addListener(() {
          final (type, index) = getLastTag();
          tagType.value = type;
          tagIndex.value = index;
        });
        return;
      },
      [],
    );

    return Container(
      width: double.maxFinite,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: TextButtonTheme(
        data: TextButtonThemeData(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(16.0),
            minimumSize: Size.zero,
            foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: _buildButtons(
              ref,
              controller,
              tagType.value,
              tagIndex.value,
            ),
          ),
        ),
      ),
    );
  }
}
