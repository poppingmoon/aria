import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Border;
import 'package:flutter/material.dart' as material show Border;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mfm_parser/mfm_parser.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../constant/fonts.dart';
import '../../extension/text_style_extension.dart';
import '../../gen/fonts.gen.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../model/general_settings.dart';
import '../../model/mfm_config.dart';
import '../../model/misskey_colors.dart';
import '../../provider/general_settings_notifier_provider.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/format_datetime.dart';
import '../../util/navigate.dart';
import '../../util/nyaize.dart';
import '../../util/safe_parse_color.dart';
import '../../util/safe_parse_double.dart';
import 'custom_emoji.dart';
import 'emoji_sheet.dart';
import 'mention_widget.dart';
import 'mfm/blur.dart';
import 'mfm/border.dart';
import 'mfm/bounce.dart';
import 'mfm/code.dart';
import 'mfm/jelly.dart';
import 'mfm/jump.dart';
import 'mfm/rainbow.dart';
import 'mfm/ruby.dart';
import 'mfm/search.dart';
import 'mfm/shake.dart';
import 'mfm/sparkle.dart';
import 'mfm/spin.dart';
import 'mfm/tada.dart';
import 'mfm/twitch.dart';
import 'unicode_emoji.dart';
import 'url_sheet.dart';
import 'url_widget.dart';

class Mfm extends HookConsumerWidget {
  const Mfm({
    super.key,
    required this.account,
    this.leadingSpans,
    this.text,
    this.nodes,
    this.trailingSpans,
    this.builder,
    this.simple = false,
    this.style,
    this.emojis,
    this.author,
    this.nyaize = false,
    this.isUserDescription = false,
    this.onClickEv,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.enableEmojiFadeIn,
  });

  final Account account;
  final List<InlineSpan>? leadingSpans;
  final String? text;
  final List<MfmNode>? nodes;
  final List<InlineSpan>? trailingSpans;
  final Widget Function(BuildContext context, InlineSpan span)? builder;
  final bool simple;
  final TextStyle? style;
  final Map<String, String>? emojis;
  final User? author;
  final bool nyaize;
  final bool isUserDescription;
  final void Function(String clickEv)? onClickEv;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? enableEmojiFadeIn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodes = useMemoized(
      () {
        if (this.nodes case final nodes?) {
          return nodes;
        }
        if (text case final text?) {
          if (simple) {
            return parseSimple(text);
          } else {
            return parse(text);
          }
        }
        return null;
      },
      [this.nodes, text],
    );
    final theme = Theme.of(context);
    final style = DefaultTextStyle.of(ref.context)
        .style
        .apply(color: theme.colorScheme.onSurface)
        .merge(this.style);
    final enableAdvanced = ref.watch(
      generalSettingsNotifierProvider
          .select((settings) => settings.advancedMfm),
    );
    final enableAnimation = enableAdvanced &&
        ref.watch(
          generalSettingsNotifierProvider
              .select((settings) => settings.animatedMfm),
        );
    final emojiStyle = ref.watch(
      generalSettingsNotifierProvider.select((settings) => settings.emojiStyle),
    );
    final colors = ref.watch(misskeyColorsProvider(theme.brightness));

    return _Mfm(
      account: account,
      leadingSpans: leadingSpans,
      nodes: nodes,
      trailingSpans: trailingSpans,
      builder: builder,
      config: MfmConfig(
        style: style,
        align: textAlign,
        opacity: style.color?.a ?? 1.0,
      ),
      simple: simple,
      emojis: emojis,
      author: author,
      shouldNyaize: nyaize && (author?.isCat ?? false),
      isUserDescription: isUserDescription,
      onClickEv: onClickEv,
      overflow: overflow,
      maxLines: maxLines,
      enableEmojiFadeIn: enableEmojiFadeIn,
      enableAdvanced: enableAdvanced,
      enableAnimation: enableAnimation,
      emojiStyle: emojiStyle,
      colors: colors,
    );
  }
}

const _richTextFn = [
  'tada',
  'jelly',
  'twitch',
  'shake',
  'spin',
  'jump',
  'bounce',
  'flip',
  'blur',
  'rainbow',
  'sparkle',
  'rotate',
  'position',
  'scale',
  'bg',
  'border',
];

bool _containsNewLine(MfmNode node) {
  return switch (node) {
    MfmText(:final text) || MfmPlain(:final text) => text.contains('\n'),
    MfmFn(:final name, :final children?) =>
      !_richTextFn.contains(name) && children.any(_containsNewLine),
    MfmNode(:final children?) => children.any(_containsNewLine),
    _ => false,
  };
}

MfmInline _removeNewLines(MfmInline node) {
  return switch (node) {
    MfmText(:final text) => MfmText(text: text.replaceAll('\n', '')),
    MfmPlain(:final text) => MfmPlain(text: text.replaceAll('\n', '')),
    MfmBold(:final children?) => MfmBold(
        children: children.whereType<MfmInline>().map(_removeNewLines).toList(),
      ),
    MfmSmall(:final children?) => MfmSmall(
        children: children.whereType<MfmInline>().map(_removeNewLines).toList(),
      ),
    MfmItalic(:final children?) => MfmItalic(
        children: children.whereType<MfmInline>().map(_removeNewLines).toList(),
      ),
    MfmStrike(:final children?) => MfmStrike(
        children: children.whereType<MfmInline>().map(_removeNewLines).toList(),
      ),
    MfmFn(:final name, :final args, :final children?) => MfmFn(
        name: name,
        args: args,
        children: children.whereType<MfmInline>().map(_removeNewLines).toList(),
      ),
    _ => node,
  };
}

class _Mfm extends StatelessWidget {
  const _Mfm({
    required this.account,
    this.leadingSpans,
    required this.nodes,
    this.trailingSpans,
    this.builder,
    required this.config,
    required this.simple,
    this.emojis,
    this.author,
    required this.shouldNyaize,
    required this.isUserDescription,
    this.onClickEv,
    this.overflow,
    this.maxLines,
    this.enableEmojiFadeIn,
    required this.enableAdvanced,
    required this.enableAnimation,
    required this.emojiStyle,
    required this.colors,
  });

  final Account account;
  final List<InlineSpan>? leadingSpans;
  final List<MfmNode>? nodes;
  final List<InlineSpan>? trailingSpans;
  final Widget Function(BuildContext context, InlineSpan span)? builder;
  final MfmConfig config;
  final bool simple;
  final Map<String, String>? emojis;
  final User? author;
  final bool shouldNyaize;
  final bool isUserDescription;
  final void Function(String clickEv)? onClickEv;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool? enableEmojiFadeIn;
  final bool enableAdvanced;
  final bool enableAnimation;
  final EmojiStyle emojiStyle;
  final MisskeyColors colors;

  List<InlineSpan> _buildNodes(
    BuildContext context,
    MfmConfig config,
    List<MfmNode> nodes,
  ) {
    return [
      for (final node in nodes)
        if (_buildNode(context, config, node) case final node?) node,
    ];
  }

  InlineSpan? _buildNode(BuildContext context, MfmConfig config, MfmNode node) {
    return switch (node) {
      MfmText(:final text) => TextSpan(
          text: simple
              ? text.replaceAll('\n', ' ')
              : !config.disableNyaize && shouldNyaize
                  ? nyaize(text)
                  : text,
          style: config.style.apply(
            fontSizeFactor: config.scale,
            color: config.style.color?.withValues(alpha: config.opacity),
          ),
        ),
      MfmBold(:final children?) => TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              style: config.style
                  .merge(const TextStyle(fontWeight: FontWeight.bold)),
            ),
            children,
          ),
        ),
      MfmStrike(:final children?) => TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              style: config.style.apply(
                decoration: TextDecoration.lineThrough,
                decorationColor: config.style.color,
              ),
            ),
            children,
          ),
        ),
      MfmItalic(:final children?) => TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              style: config.style.apply(fontStyle: FontStyle.italic),
            ),
            children,
          ),
        ),
      MfmFn(:final name, :final args, :final children?) => _buildMfmFn(
          context,
          config,
          name: name,
          args: args,
          children: children,
        ),
      MfmSmall(:final children?) => TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              scale: config.scale * 0.8,
              opacity: config.opacity * 0.7,
            ),
            children,
          ),
        ),
      MfmCenter(:final children?) => WidgetSpan(
          child: SizedBox(
            width: double.infinity,
            child: Text.rich(
              TextSpan(
                children: _buildNodes(
                  context,
                  config.copyWith(align: TextAlign.center),
                  children,
                ),
              ),
              textAlign: TextAlign.center,
              overflow: overflow,
              maxLines: maxLines,
              textScaler: TextScaler.noScaling,
            ),
          ),
        ),
      MfmUrl(:final url) => WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Consumer(
            builder: (context, ref, _) => UrlWidget(
              url: url,
              onTap: () => navigate(ref, account, url),
              style: config.style.apply(color: colors.link),
              scale: config.scale,
              opacity: config.opacity,
              align: config.align,
              overflow: overflow,
              maxLines: maxLines,
              textScaler: TextScaler.noScaling,
            ),
          ),
        ),
      MfmLink(:final url, :final children?) => WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Consumer(
            builder: (context, ref, _) => InkWell(
              onTap: () => navigate(ref, account, url),
              onLongPress: () => showModalBottomSheet<void>(
                context: context,
                builder: (context) => UrlSheet(url: url),
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    ..._buildNodes(
                      context,
                      config.copyWith(
                        style: config.style.apply(color: colors.link),
                      ),
                      children,
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.open_in_new,
                        color: colors.link.withValues(alpha: config.opacity),
                        size: config.style.fontSize! * config.scale,
                      ),
                    ),
                  ],
                ),
                textAlign: config.align,
                textScaler: TextScaler.noScaling,
              ),
            ),
          ),
        ),
      MfmMention(:final username, :final host) => WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Builder(
            builder: (context) {
              final absoluteHost = host ?? author?.host ?? account.host;
              return MentionWidget(
                account: account,
                username: username,
                host: absoluteHost,
                scale: config.scale,
                opacity: config.opacity,
                onTap: () =>
                    account.host.toLowerCase() == absoluteHost.toLowerCase()
                        ? context.push('/$account/@$username')
                        : context.push('/$account/@$username@$absoluteHost'),
                textScaler: TextScaler.noScaling,
              );
            },
          ),
        ),
      MfmHashtag(:final hashtag) => WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: InkWell(
            onTap: () => context.push(
              '/$account/tags/$hashtag${isUserDescription ? '#users' : ''}',
            ),
            child: Text(
              '#$hashtag',
              style: config.style.apply(
                fontSizeFactor: config.scale,
                color: colors.hashtag.withValues(alpha: config.opacity),
              ),
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        ),
      MfmCodeBlock(:final code, :final lang) => WidgetSpan(
          child: Opacity(
            opacity: config.opacity,
            child: SizedBox(
              width: double.infinity,
              child: Code(code: code, language: lang),
            ),
          ),
        ),
      MfmInlineCode(:final code) => WidgetSpan(
          child: Opacity(
            opacity: config.opacity,
            child: Code(
              code: code,
              inline: true,
              fontSize:
                  config.style.apply(fontSizeFactor: config.scale).fontSize,
            ),
          ),
        ),
      MfmQuote(:final children?) => WidgetSpan(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0),
            width: double.infinity,
            decoration: BoxDecoration(
              border: material.Border(
                left: BorderSide(
                  color: colors.fg.withValues(alpha: config.opacity * 0.7),
                  width: 3.0,
                ),
              ),
            ),
            child: Text.rich(
              TextSpan(
                children: _buildNodes(
                  context,
                  config.copyWith(
                    opacity: config.opacity * 0.7,
                    disableNyaize: true,
                  ),
                  children,
                ),
              ),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        ),
      MfmEmojiCode(:final name) => WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: CustomEmoji(
            account: account,
            emoji: ':$name:',
            url: emojis?[name],
            host: author?.host,
            useOriginalSize: config.scale >= 2.5,
            height:
                config.style.fontSize! * config.scale * (simple ? 1.0 : 2.0),
            opacity: config.opacity,
            onTap: !simple
                ? () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: ':$name@${author?.host ?? '.'}:',
                      ),
                    )
                : null,
            fallbackTextStyle: config.style,
            fallbackToImage: false,
            enableFadeIn: enableEmojiFadeIn,
          ),
        ),
      MfmUnicodeEmoji(:final emoji) => WidgetSpan(
          alignment: switch (emojiStyle) {
            EmojiStyle.native => PlaceholderAlignment.baseline,
            EmojiStyle.twemoji => PlaceholderAlignment.middle,
          },
          baseline: TextBaseline.alphabetic,
          child: UnicodeEmoji(
            account: account,
            emoji: emoji,
            style: config.style.apply(
              fontSizeFactor: config.scale,
              color: config.style.color?.withValues(alpha: config.opacity),
            ),
            onTap: !simple
                ? () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) => EmojiSheet(
                        account: account,
                        emoji: emoji,
                      ),
                    )
                : null,
            inline: true,
          ),
        ),
      MfmMathInline(:final formula) => WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Math.tex(
            formula,
            mathStyle: MathStyle.text,
            textStyle: config.style.apply(
              color: config.style.color?.withValues(alpha: config.opacity),
            ),
            textScaleFactor: config.scale,
            onErrorFallback: (_) => Text(
              formula,
              style: config.style.apply(
                fontSizeFactor: config.scale,
                color: Color.fromRGBO(
                  178,
                  34,
                  34,
                  config.opacity,
                ),
              ),
              textScaler: TextScaler.noScaling,
            ),
          ),
        ),
      MfmMathBlock(:final formula) => WidgetSpan(
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Math.tex(
                formula,
                mathStyle: MathStyle.text,
                textStyle: config.style.apply(
                  color: config.style.color?.withValues(alpha: config.opacity),
                ),
                textScaleFactor: config.scale,
                onErrorFallback: (_) => Text(
                  formula,
                  style: config.style.apply(
                    color: Color.fromRGBO(
                      178,
                      34,
                      34,
                      config.opacity,
                    ),
                  ),
                  textScaler: TextScaler.noScaling,
                ),
              ),
            ),
          ),
        ),
      MfmSearch(:final query) => WidgetSpan(
          child: Search(
            query: query,
            textScaler: TextScaler.noScaling,
          ),
        ),
      MfmPlain(:final text) => TextSpan(
          text: text,
          style: config.style.apply(
            fontSizeFactor: config.scale,
            color: config.style.color?.withValues(alpha: config.opacity),
          ),
        ),
      _ => null
    };
  }

  InlineSpan _buildMfmFn(
    BuildContext context,
    MfmConfig config, {
    required String name,
    required Map<String, String> args,
    required List<MfmNode> children,
  }) {
    switch (name) {
      case 'tada':
        final span = TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(scale: config.scale * 1.5),
            children,
          ),
        );
        if (!enableAnimation) {
          return span;
        }
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Tada(
            args: args,
            child: Text.rich(
              span,
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'jelly':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Jelly(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'twitch':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Twitch(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'shake':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Shake(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'spin':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Spin(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'jump':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Jump(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'bounce':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Bounce(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'flip':
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.scale(
            scaleX: !args.containsKey('h') && args.containsKey('v') ? 1 : -1,
            scaleY: !args.containsKey('v') ? 1 : -1,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'x2':
        if (!enableAdvanced) break;
        return TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(scale: config.scale * 2),
            children,
          ),
        );
      case 'x3':
        if (!enableAdvanced) break;
        return TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(scale: config.scale * 4),
            children,
          ),
        );
      case 'x4':
        if (!enableAdvanced) break;
        return TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(scale: config.scale * 6),
            children,
          ),
        );
      case 'font':
        return TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              style: config.style.apply(
                fontFamily: switch (args.keys.firstOrNull) {
                  'serif' => 'serif',
                  'monospace' => 'monospace',
                  'cursive' => 'cursive',
                  'fantasy' => 'fantasy',
                  'emoji' => 'emoji',
                  'math' => 'math',
                  _ => null
                },
                fontFamilyFallback: switch (args.keys.firstOrNull) {
                  'serif' => [FontFamily.notoSerifJP],
                  'monospace' => monospaceFallback,
                  _ => null,
                },
              ),
            ),
            children,
          ),
        );
      case 'blur':
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Blur(
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'rainbow':
        final span = TextSpan(children: _buildNodes(context, config, children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: enableAnimation
              ? Rainbow(
                  args: args,
                  child: Text.rich(
                    span,
                    textAlign: config.align,
                    overflow: overflow,
                    textScaler: TextScaler.noScaling,
                    maxLines: maxLines,
                  ),
                )
              : ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                    colors: [
                      Color(0xffff0000),
                      Color(0xffffa500),
                      Color(0xffffff00),
                      Color(0xff00ff00),
                      Color(0xff00ffff),
                      Color(0xff0000ff),
                      Color(0xffff00ff),
                    ],
                  ).createShader(
                    Rect.fromLTWH(
                      0.0,
                      0.0,
                      rect.width,
                      rect.height,
                    ),
                  ),
                  blendMode: BlendMode.srcIn,
                  child: Text.rich(
                    span,
                    textScaler: TextScaler.noScaling,
                  ),
                ),
        );
      case 'sparkle':
        if (!enableAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Sparkle(
            opacity: config.opacity,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'rotate':
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.rotate(
            angle: (safeParseDouble(args['deg']) ?? 90.0) * pi / 180,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'position':
        if (!enableAdvanced) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.translate(
            offset: Offset(
              (safeParseDouble(args['x']) ?? 0.0) *
                  config.scale *
                  config.style.fontSize!,
              (safeParseDouble(args['y']) ?? 0.0) *
                  config.scale *
                  config.style.fontSize!,
            ),
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'scale':
        if (!enableAdvanced) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.scale(
            scaleX: min(safeParseDouble(args['x']) ?? 1.0, 5.0),
            scaleY: min(safeParseDouble(args['y']) ?? 1.0, 5.0),
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'fg':
        final color = safeParseColor(args['color']) ?? Colors.red;
        return TextSpan(
          children: _buildNodes(
            context,
            config.copyWith(
              style: config.style.apply(color: color),
              opacity: config.opacity * color.a,
            ),
            children,
          ),
        );
      case 'bg':
        final color = safeParseColor(args['color']) ?? Colors.red;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: ColoredBox(
            color: color.withValues(alpha: config.opacity * color.a),
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'border':
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Border(
            args: args,
            child: Text.rich(
              TextSpan(children: _buildNodes(context, config, children)),
              textAlign: config.align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'ruby':
        final rubyStyle = config.style
            .apply(
              fontSizeFactor: config.scale * 0.5,
              color: config.style.color?.withValues(alpha: config.opacity),
            )
            .copyWith(height: 1.0);
        if (children.length <= 1) {
          final node = children.singleOrNull;
          final text = node is MfmText
              ? !config.disableNyaize && shouldNyaize
                  ? nyaize(node.text)
                  : node.text
              : '';
          final l = text.split(' ');
          final ruby = l.elementAtOrNull(1)?.replaceAll('\n', ' ') ?? '';
          final span = _buildNode(
            context,
            config.copyWith(style: config.style.copyWith(height: 1.0)),
            MfmText(text: l.first.replaceAll('\n', ' ')),
          );
          return WidgetSpan(
            alignment: PlaceholderAlignment.aboveBaseline,
            baseline: TextBaseline.ideographic,
            child: Ruby(
              style: rubyStyle,
              ruby: ruby,
              child: Text.rich(
                span ?? const TextSpan(),
                textAlign: config.align,
                overflow: overflow,
                textScaler: TextScaler.noScaling,
                maxLines: maxLines,
              ),
            ),
          );
        } else {
          final node = children.last;
          final ruby = node is MfmText
              ? (!config.disableNyaize && shouldNyaize
                      ? nyaize(node.text)
                      : node.text)
                  .replaceAll('\n', ' ')
                  .trim()
              : '';
          return WidgetSpan(
            alignment: PlaceholderAlignment.aboveBaseline,
            baseline: TextBaseline.ideographic,
            child: Ruby(
              style: rubyStyle,
              ruby: ruby,
              child: Text.rich(
                TextSpan(
                  children: _buildNodes(
                    context,
                    config.copyWith(style: config.style.copyWith(height: 1.0)),
                    children
                        .sublist(0, children.length - 1)
                        .whereType<MfmInline>()
                        .map(_removeNewLines)
                        .toList(),
                  ),
                ),
                textAlign: config.align,
                overflow: overflow,
                textScaler: TextScaler.noScaling,
                maxLines: maxLines,
              ),
            ),
          );
        }
      case 'unixtime':
        final node = children.firstOrNull;
        final unixtime = node is MfmText ? int.tryParse(node.text) : null;
        final time = unixtime != null && unixtime.abs() < 8640000000000
            ? DateTime.fromMillisecondsSinceEpoch(unixtime * 1000)
            : null;
        return WidgetSpan(
          alignment: PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: material.Border.all(color: colors.divider),
              borderRadius:
                  BorderRadius.circular(config.style.lineHeight * config.scale),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4.0 * config.scale,
                horizontal: 8.0 * config.scale,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.access_time,
                        color: config.style.color
                            ?.withValues(alpha: config.opacity),
                        size: config.style.lineHeight * config.scale * 0.9,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 2.0 * config.scale)),
                    if (time != null)
                      TextSpan(
                        text: '${absoluteTime(time)} (${relativeTime(time)})',
                        style: config.style.apply(
                          fontSizeFactor: config.scale * 0.9,
                          color: config.style.color
                              ?.withValues(alpha: config.opacity),
                        ),
                      )
                    else
                      TextSpan(text: t.misskey.ago_.invalid),
                  ],
                ),
              ),
            ),
          ),
        );
      case 'clickable':
        final clickEv = args['ev'];
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: InkWell(
            onTap: clickEv != null && onClickEv != null
                ? () => onClickEv?.call(clickEv)
                : null,
            child: AbsorbPointer(
              child: Text.rich(
                TextSpan(children: _buildNodes(context, config, children)),
                textAlign: config.align,
                overflow: overflow,
                textScaler: TextScaler.noScaling,
                maxLines: maxLines,
              ),
            ),
          ),
        );
      default:
        return TextSpan(
          children: [
            TextSpan(text: '\$[$name '),
            ..._buildNodes(context, config, children),
            const TextSpan(text: ']'),
          ],
        );
    }
    return TextSpan(children: _buildNodes(context, config, children));
  }

  @override
  Widget build(BuildContext context) {
    final span = TextSpan(
      children: [
        ...?leadingSpans,
        if (nodes case final nodes?) ..._buildNodes(context, config, nodes),
        if (trailingSpans case final spans? when spans.isNotEmpty) ...[
          const TextSpan(text: Unicode.PDF),
          ...spans,
        ],
      ],
    );

    if (builder case final builder?) {
      return builder(
        context,
        TextSpan(
          children: [span, const TextSpan(text: Unicode.PDF)],
        ),
      );
    } else {
      return Text.rich(
        span,
        textAlign: config.align,
        overflow: overflow,
        maxLines: maxLines,
      );
    }
  }
}
