import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../model/mfm_config.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
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
  bool nyaize = false,
  bool isUserDescription = false,
  void Function(String emoji)? onTapEmoji,
  void Function(String clickEv)? onClickEv,
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
  bool? enableEmojiFadeIn,
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

  return MfmConfig(
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
      enableFadeIn: enableEmojiFadeIn,
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
            onTap: () =>
                account.host.toLowerCase() == absoluteHost.toLowerCase()
                    ? ref.context.push('/$account/@$username')
                    : ref.context.push('/$account/@$username@$absoluteHost'),
            textScaler: TextScaler.noScaling,
          ),
        ),
      );
    },
    onTapEmoji: onTapEmoji,
    onLinkTap: (link) => navigate(ref, account, link),
    onLinkLongPress: (url) => showModalBottomSheet<void>(
      context: ref.context,
      builder: (context) => UrlSheet(url: url),
    ),
    onHashtagTap: (hashtag) => ref.context
        .push('/$account/tags/$hashtag${isUserDescription ? '#users' : ''}'),
    onClickEv: onClickEv,
    shouldNyaize: nyaize && (author?.isCat ?? false),
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
    this.nyaize = false,
    this.isUserDescription = false,
    this.selectable = false,
    this.onTapEmoji,
    this.onClickEv,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.enableEmojiFadeIn,
  });

  final Account account;
  final String? text;
  final List<MfmNode>? nodes;
  final bool simple;
  final TextStyle? style;
  final Map<String, String>? emojis;
  final User? author;
  final bool nyaize;
  final bool isUserDescription;
  final bool selectable;
  final void Function(String emoji)? onTapEmoji;
  final void Function(String clickEv)? onClickEv;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? enableEmojiFadeIn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mfmSettings = ref.watch(
      generalSettingsNotifierProvider.select(
        (settings) => (
          settings.advancedMfm,
          settings.animatedMfm,
          settings.fontFamily,
          settings.fontSize,
          settings.lineHeight,
        ),
      ),
    );
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
          emojis: emojis,
          author: author,
          nyaize: nyaize,
          isUserDescription: isUserDescription,
          onTapEmoji: onTapEmoji,
          onClickEv: onClickEv,
          textAlign: textAlign,
          overflow: overflow,
          maxLines: maxLines,
          enableEmojiFadeIn: enableEmojiFadeIn,
        ),
      ),
      [
        account,
        text,
        nodes,
        simple,
        style,
        author,
        colors,
        emojis,
        mfmSettings,
      ],
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
