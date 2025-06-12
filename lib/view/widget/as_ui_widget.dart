import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/shortcuts.dart';
import '../../model/account.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../provider/post_notifier_provider.dart';
import '../../rust/api/aiscript/ui.dart';
import '../../util/safe_parse_color.dart';
import 'mfm.dart';
import 'post_form.dart';

class AsUiWidget extends HookConsumerWidget {
  const AsUiWidget({
    super.key,
    required this.account,
    required this.host,
    required this.componentId,
    required this.components,
  });

  final Account account;
  final String host;
  final String componentId;
  final Map<String, AsUiComponent> components;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (components[componentId]) {
      case AsUiComponent_Root(field0: AsUiRoot(:final children)):
        final theme = Theme.of(context);
        return Theme(
          data: theme.copyWith(
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colorScheme.outlineVariant),
                borderRadius: BorderRadius.circular(6.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.colorScheme.primary),
                borderRadius: BorderRadius.circular(6.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
              filled: true,
              fillColor: theme.colorScheme.surface,
              helperStyle: TextStyle(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
              ),
              helperMaxLines: 100,
              isDense: true,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 12.0,
            children: [
              ...children
                  .where(
                    (id) => switch (components[id]) {
                      AsUiComponent_Container(
                        field0: AsUiContainer(hidden: true),
                      ) =>
                        false,
                      _ => true,
                    },
                  )
                  .map(
                    (id) => AsUiWidget(
                      account: account,
                      host: host,
                      componentId: id,
                      components: components,
                    ),
                  ),
            ],
          ),
        );
      case AsUiComponent_Container(
        field0: AsUiContainer(
          :final children,
          :final align,
          :final bgColor,
          :final fgColor,
          :final font,
          :final borderWidth,
          :final borderColor,
          :final padding,
          :final rounded,
        ),
      ):
        return DefaultTextStyle.merge(
          style: TextStyle(color: safeParseColor(fgColor), fontFamily: font),
          textAlign: switch (align) {
            'left' => TextAlign.left,
            'center' => TextAlign.center,
            'right' => TextAlign.right,
            _ => null,
          },
          child: Container(
            padding: padding != null ? EdgeInsets.all(padding) : null,
            decoration: BoxDecoration(
              color: safeParseColor(bgColor),
              border: borderWidth != null && borderWidth > 0.0
                  ? Border.all(
                      color:
                          safeParseColor(borderColor) ??
                          Theme.of(context).colorScheme.outlineVariant,
                      width: borderWidth,
                    )
                  : null,
              borderRadius: rounded ?? false
                  ? BorderRadius.circular(8.0)
                  : null,
            ),
            child: Column(
              crossAxisAlignment: switch (align) {
                'left' => CrossAxisAlignment.start,
                'center' => CrossAxisAlignment.center,
                'right' => CrossAxisAlignment.end,
                _ => CrossAxisAlignment.start,
              },
              spacing: 12.0,
              children: [
                ...?children
                    ?.where(
                      (id) => switch (components[id]) {
                        AsUiComponent_Container(
                          field0: AsUiContainer(hidden: true),
                        ) =>
                          false,
                        _ => true,
                      },
                    )
                    .map(
                      (id) => AsUiWidget(
                        account: account,
                        host: host,
                        componentId: id,
                        components: components,
                      ),
                    ),
              ],
            ),
          ),
        );
      case AsUiComponent_Text(
        field0: AsUiText(
          :final text,
          :final size,
          :final bold,
          :final color,
          :final font,
        ),
      ):
        return Text(
          text ?? '',
          style: DefaultTextStyle.of(context).style
              .apply(fontSizeFactor: size ?? 1.0)
              .merge(
                TextStyle(
                  color: safeParseColor(color),
                  fontWeight: bold ?? false ? FontWeight.bold : null,
                  fontFamily: font,
                ),
              ),
        );
      case AsUiComponent_Mfm(
        field0: AsUiMfm(
          :final text,
          :final size,
          :final bold,
          :final color,
          :final font,
          :final onClickEv,
        ),
      ):
        return Mfm(
          account: account.host == host ? account : Account(host: host),
          text: text,
          style: DefaultTextStyle.of(context).style
              .apply(fontSizeFactor: size ?? 1.0)
              .merge(
                TextStyle(
                  color: safeParseColor(color),
                  fontWeight: bold ?? false ? FontWeight.bold : null,
                  fontFamily: font,
                ),
              ),
          onClickEv: onClickEv != null
              ? (clickEv) => onClickEv.call(value: clickEv)
              : null,
          enableEmojiFadeIn: false,
        );
      case AsUiComponent_Button(
        field0: AsUiButton(
          :final text,
          :final onClick,
          :final primary,
          :final rounded,
          :final disabled,
        ),
      ):
        return Align(
          alignment: switch (DefaultTextStyle.of(context).textAlign) {
            TextAlign.left => Alignment.centerLeft,
            TextAlign.center => Alignment.center,
            TextAlign.right => Alignment.centerRight,
            _ => Alignment.centerLeft,
          },
          child: _Button(
            text: text,
            onTap: onClick?.call,
            primary: primary,
            rounded: rounded,
            disabled: disabled,
          ),
        );
      case AsUiComponent_Buttons(field0: AsUiButtons(:final buttons)):
        return Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            ...?buttons?.map(
              (button) => _Button(
                text: button.text,
                onTap: button.onClick?.call,
                primary: button.primary,
                rounded: button.rounded,
                disabled: button.disabled,
              ),
            ),
          ],
        );
      case AsUiComponent_ToggleSwitch(
        field0: AsUiSwitch(
          :final onChange,
          :final defaultValue,
          :final label,
          :final caption,
        ),
      ):
        final value = useState(defaultValue);
        return SwitchListTile(
          value: value.value ?? false,
          title: label != null ? Text(label) : null,
          subtitle: caption != null
              ? Text(
                  caption,
                  style: TextStyle(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.75),
                  ),
                )
              : null,
          onChanged: onChange != null
              ? (v) {
                  value.value = v;
                  onChange.call(value: v);
                }
              : null,
          controlAffinity: ListTileControlAffinity.leading,
          dense: true,
        );
      case AsUiComponent_Textarea(
        field0: AsUiTextarea(
          :final onInput,
          :final defaultValue,
          :final label,
          :final caption,
        ),
      ):
        final controller = useTextEditingController(text: defaultValue);
        return Shortcuts(
          shortcuts: disablingTextShortcuts,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: label, helperText: caption),
            onChanged: onInput != null
                ? (value) => onInput.call(value: value)
                : null,
            minLines: 6,
            maxLines: 6,
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        );
      case AsUiComponent_TextInput(
        field0: AsUiTextInput(
          :final onInput,
          :final defaultValue,
          :final label,
          :final caption,
        ),
      ):
        final controller = useTextEditingController(text: defaultValue);
        return Shortcuts(
          shortcuts: disablingTextShortcuts,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(labelText: label, helperText: caption),
            onChanged: onInput != null
                ? (value) => onInput.call(value: value)
                : null,
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        );
      case AsUiComponent_NumberInput(
        field0: AsUiNumberInput(
          :final onInput,
          :final defaultValue,
          :final label,
          :final caption,
        ),
      ):
        final controller = useTextEditingController(
          text: defaultValue != null
              ? defaultValue == defaultValue.toInt()
                    ? defaultValue.toInt().toString()
                    : defaultValue.toString()
              : null,
        );
        return Shortcuts(
          shortcuts: disablingTextShortcuts,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
              helperText: caption,
              isDense: true,
              suffix: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(2.0),
                      iconSize: 16.0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      if (controller.text.isEmpty) {
                        controller.text = '-1';
                        if (onInput != null) {
                          onInput.call(value: -1);
                        }
                        return;
                      }
                      final i = int.tryParse(controller.text);
                      if (i != null) {
                        controller.text = (i - 1).toString();
                        if (onInput != null) {
                          onInput.call(value: i - 1);
                        }
                      }
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 4.0),
                  IconButton(
                    style: IconButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(2.0),
                      iconSize: 16.0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      if (controller.text.isEmpty) {
                        controller.text = '1';
                        if (onInput != null) {
                          onInput.call(value: 1);
                        }
                        return;
                      }
                      final i = int.tryParse(controller.text);
                      if (i != null) {
                        controller.text = (i + 1).toString();
                        if (onInput != null) {
                          onInput.call(value: i + 1);
                        }
                      }
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [
              TextInputFormatter.withFunction((oldValue, newValue) {
                if (newValue.text.isEmpty ||
                    double.tryParse(newValue.text) != null) {
                  return newValue;
                } else {
                  return oldValue;
                }
              }),
            ],
            onChanged: onInput != null
                ? (value) async {
                    final v = double.tryParse(value);
                    if (v != null) {
                      await onInput.call(value: v);
                    }
                  }
                : null,
            onTapOutside: (_) => primaryFocus?.unfocus(),
          ),
        );
      case AsUiComponent_Select(
        field0: AsUiSelect(
          :final items,
          :final onChange,
          :final defaultValue,
          :final label,
          :final caption,
        ),
      ):
        final value = useState(
          defaultValue != null &&
                  (items?.map((item) => item.$2).contains(defaultValue) ??
                      false)
              ? defaultValue
              : null,
        );
        return DropdownButtonFormField(
          decoration: InputDecoration(labelText: label, helperText: caption),
          items: items
              ?.map(
                (item) =>
                    DropdownMenuItem(value: item.$2, child: Text(item.$1)),
              )
              .toList(),
          value: value.value,
          onChanged: (v) async {
            value.value = v;
            if (v != null) {
              await onChange?.call(value: v);
            }
          },
          isExpanded: true,
        );
      case AsUiComponent_Folder(
        field0: AsUiFolder(:final children, :final title, :final opened),
      ):
        return _Folder(
          title: title,
          opened: opened,
          children: children
              ?.where(
                (id) => switch (components[id]) {
                  AsUiComponent_Container(
                    field0: AsUiContainer(hidden: true),
                  ) =>
                    false,
                  _ => true,
                },
              )
              .map(
                (id) => AsUiWidget(
                  account: account,
                  host: host,
                  componentId: id,
                  components: components,
                ),
              )
              .toList(),
        );
      case AsUiComponent_PostFormButton(
        field0: AsUiPostFormButton(
          :final text,
          :final primary,
          :final rounded,
          :final form,
        ),
      ):
        return Align(
          alignment: switch (DefaultTextStyle.of(context).textAlign) {
            TextAlign.left => Alignment.centerLeft,
            TextAlign.center => Alignment.center,
            TextAlign.right => Alignment.centerRight,
            _ => Alignment.centerLeft,
          },
          child: _Button(
            text: text,
            primary: primary,
            rounded: rounded,
            onTap: !account.isGuest
                ? () {
                    if (form?.text case final text?) {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .setText(text);
                    }
                    if (form?.cw case final cw?) {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .setCw(cw);
                    }
                    switch (form?.visibility) {
                      case 'public':
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setVisibility(NoteVisibility.public);
                      case 'home':
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setVisibility(NoteVisibility.home);
                      case 'followers':
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setVisibility(NoteVisibility.followers);
                      case 'specified':
                        ref
                            .read(postNotifierProvider(account).notifier)
                            .setVisibility(NoteVisibility.specified);
                    }
                    if (form?.localOnly case final localOnly?) {
                      ref
                          .read(postNotifierProvider(account).notifier)
                          .setLocalOnly(localOnly);
                    }
                    context.push('/$account/post');
                  }
                : null,
          ),
        );
      case AsUiComponent_PostForm(field0: AsUiPostForm(:final form)):
        useEffect(() {
          Future(() {
            if (form?.text case final text?) {
              ref.read(postNotifierProvider(account).notifier).setText(text);
            }
            if (form?.cw case final cw?) {
              ref.read(postNotifierProvider(account).notifier).setCw(cw);
            }
            switch (form?.visibility) {
              case 'public':
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setVisibility(NoteVisibility.public);
              case 'home':
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setVisibility(NoteVisibility.home);
              case 'followers':
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setVisibility(NoteVisibility.followers);
              case 'specified':
                ref
                    .read(postNotifierProvider(account).notifier)
                    .setVisibility(NoteVisibility.specified);
            }
            if (form?.localOnly case final localOnly?) {
              ref
                  .read(postNotifierProvider(account).notifier)
                  .setLocalOnly(localOnly);
            }
          });
          return;
        }, [form]);
        final colors = ref.watch(
          misskeyColorsProvider(Theme.of(context).brightness),
        );
        return Card(
          color: colors.bg,
          margin: EdgeInsets.zero,
          elevation: 0.0,
          child: PostForm(
            account: account,
            onExpand: (account) => context.push('/$account/post'),
            showPostButton: true,
            maxLines: 6,
          ),
        );
      case null:
        return const SizedBox.shrink();
    }
  }
}

class _Button extends ConsumerWidget {
  const _Button({
    this.text,
    this.onTap,
    this.primary,
    this.rounded,
    this.disabled,
  });

  final String? text;
  final void Function()? onTap;
  final bool? primary;
  final bool? rounded;
  final bool? disabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary ?? false ? colors.accent : colors.buttonBg,
        foregroundColor: primary ?? false
            ? colors.fgOnAccent
            : DefaultTextStyle.of(context).style.color,
        elevation: 0.0,
        shape: rounded ?? false
            ? const StadiumBorder()
            : RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 14.0),
        minimumSize: const Size(100.0, 40.0),
      ),
      onPressed: !(disabled ?? false) ? onTap : null,
      child: Text(text ?? ''),
    );
  }
}

class _Folder extends ConsumerWidget {
  const _Folder({this.title, this.opened, this.children});

  final String? title;
  final bool? opened;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(
      misskeyColorsProvider(Theme.of(context).brightness),
    );
    final style = DefaultTextStyle.of(context).style;

    return ExpansionTile(
      title: Text(title ?? ''),
      initiallyExpanded: opened ?? true,
      collapsedBackgroundColor: colors.buttonBg,
      backgroundColor: colors.buttonBg,
      textColor: style.color,
      collapsedTextColor: style.color,
      iconColor: colors.fg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      dense: true,
      children: [
        Material(
          color: colors.bg,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: DefaultTextStyle.merge(
              style: style,
              child: Column(
                crossAxisAlignment: switch (DefaultTextStyle.of(
                  context,
                ).textAlign) {
                  TextAlign.left => CrossAxisAlignment.start,
                  TextAlign.center => CrossAxisAlignment.center,
                  TextAlign.right => CrossAxisAlignment.end,
                  _ => CrossAxisAlignment.start,
                },
                children: children ?? [],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
