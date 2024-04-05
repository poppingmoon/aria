import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/api/user_notifier_provider.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/future_with_dialog.dart';
import '../../util/navigate.dart';
import 'custom_emoji.dart';
import 'mention_widget.dart';
import 'mfm/mfm_builder.dart';
import 'url_sheet.dart';

List<InlineSpan> buildMfm(
  WidgetRef ref, {
  required Account account,
  String? text,
  List<MfmNode>? nodes,
  bool simple = false,
  TextStyle? style,
  Map<String, String>? emojis,
  User? author,
  void Function(String emoji)? onTapEmoji,
  void Function(String link)? onLinkTap,
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) {
  final brightness = Theme.of(ref.context).brightness;
  final colors = ref.read(misskeyColorsProvider(brightness));
  final textStyle = DefaultTextStyle.of(ref.context)
      .style
      .apply(color: colors.fg)
      .merge(style);
  final generalSettings = ref.read(generalSettingsNotifierProvider);
  final useAdvanced = generalSettings.advancedMfm;
  final useAnimation = useAdvanced && generalSettings.animatedMfm;

  return MfmBuilder(
    colors: colors,
    simple: simple,
    style: textStyle,
    emojiBuilder: (name, scale, opacity, fallbackTextStyle) => CustomEmoji(
      account: account,
      emoji: ':$name:',
      url: emojis?[name],
      host: author?.host,
      useOriginalSize: scale >= 2.5,
      height: textStyle.fontSize! * scale,
      opacity: opacity,
      onTap: onTapEmoji != null
          ? () => onTapEmoji(':$name@${author?.host ?? '.'}:')
          : null,
      fallbackTextStyle: fallbackTextStyle,
      fallbackToImage: false,
    ),
    mentionBuilder: (username, host, scale, opacity) {
      final absoluteHost = host ??
          (author != null && author.host != null ? author.host! : account.host);
      return Transform.scale(
        scale: scale,
        child: Opacity(
          opacity: opacity,
          child: MentionWidget(
            account: account,
            username: username,
            host: absoluteHost,
            onTap: () async {
              final user = await futureWithDialog(
                ref.context,
                ref.read(
                  userNotifierProvider(account, username: username, host: host)
                      .future,
                ),
              );
              if (!ref.context.mounted) return;
              if (user != null) {
                await ref.context.push('/$account/users/${user.id}');
              }
            },
          ),
        ),
      );
    },
    onTapEmoji: onTapEmoji,
    onLinkTap: onLinkTap,
    onLinkLongPress: (url) => showModalBottomSheet<void>(
      context: ref.context,
      builder: (context) => UrlSheet(url: url),
    ),
    onHashtagTap: (hashtag) => ref.context.push('/$account/tags/$hashtag'),
    shouldNyaize: author?.isCat ?? false,
    useAdvanced: useAdvanced,
    useAnimation: useAnimation,
    opacity: DefaultTextStyle.of(ref.context).style.color?.opacity ?? 1.0,
    align: textAlign,
    overflow: overflow,
    maxLines: maxLines,
  ).build(
    nodes ??
        (text != null
            ? (simple
                ? const MfmParser().parseSimple(text)
                : const MfmParser().parse(text))
            : []),
  );
}

class Mfm extends HookConsumerWidget {
  const Mfm({
    super.key,
    required this.account,
    this.text,
    this.nodes,
    this.simple = false,
    this.style,
    this.emojis,
    this.author,
    this.selectable = false,
    this.onTapEmoji,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  final Account account;
  final String? text;
  final List<MfmNode>? nodes;
  final bool simple;
  final TextStyle? style;
  final Map<String, String>? emojis;
  final User? author;
  final bool selectable;
  final void Function(String emoji)? onTapEmoji;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors =
        ref.watch(misskeyColorsProvider(Theme.of(context).brightness));
    final span = useMemoized(
      () => TextSpan(
        children: buildMfm(
          ref,
          account: account,
          text: text,
          nodes: nodes,
          simple: simple,
          style: style,
          author: author,
          emojis: emojis,
          onLinkTap: (link) => navigate(ref, account, link),
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
        ),
      ),
      [account, text, nodes, simple, style, author, colors, emojis],
    );

    if (selectable) {
      return SelectionArea(
        child: Text.rich(
          span,
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
        ),
      );
    } else {
      return Text.rich(
        span,
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
      );
    }
  }
}
