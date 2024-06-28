import 'dart:math';

import 'package:flutter/material.dart' as material show Border;
import 'package:flutter/material.dart' hide Border;
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:mfm_parser/mfm_parser.dart';

import '../../../constant/fonts.dart';
import '../../../extension/text_style_extension.dart';
import '../../../gen/fonts.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../model/mfm_config.dart';
import '../../../util/format_datetime.dart';
import '../../../util/nyaize.dart';
import '../../../util/safe_parse_color.dart';
import '../../../util/safe_parse_double.dart';
import '../unicode_emoji.dart';
import '../url_widget.dart';
import 'blur.dart';
import 'border.dart';
import 'bounce.dart';
import 'code.dart';
import 'jelly.dart';
import 'jump.dart';
import 'rainbow.dart';
import 'ruby.dart';
import 'search.dart';
import 'shake.dart';
import 'sparkle.dart';
import 'spin.dart';
import 'tada.dart';
import 'twitch.dart';

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

extension MfmBuilder on MfmConfig {
  List<InlineSpan> build(
    List<MfmNode> nodes, {
    bool disableNyaize = false,
  }) {
    return nodes
        .map(
          (node) => switch (node) {
            MfmText(:final text) => TextSpan(
                text: simple
                    ? text.replaceAll('\n', ' ')
                    : !disableNyaize && shouldNyaize
                        ? nyaize(text)
                        : text,
                style: style.apply(
                  fontSizeFactor: scale,
                  color: style.color?.withOpacity(opacity),
                ),
              ),
            MfmBold(:final children?) => TextSpan(
                children: copyWith(
                  style:
                      style.merge(const TextStyle(fontWeight: FontWeight.bold)),
                ).build(children),
              ),
            MfmStrike(:final children?) => TextSpan(
                children: copyWith(
                  style: style.apply(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: style.color,
                  ),
                ).build(children),
              ),
            MfmItalic(:final children?) => TextSpan(
                style: style.apply(fontStyle: FontStyle.italic),
                children: build(children),
              ),
            MfmFn(:final name, :final args, :final children?) => _buildMfmFn(
                name: name,
                args: args,
                children: children,
                disableNyaize: disableNyaize,
              ),
            MfmSmall(:final children?) => TextSpan(
                children: copyWith(scale: scale * 0.8, opacity: opacity * 0.7)
                    .build(children),
              ),
            MfmCenter(:final children?) => WidgetSpan(
                child: SizedBox(
                  width: double.infinity,
                  child: Text.rich(
                    TextSpan(
                      children:
                          copyWith(align: TextAlign.center).build(children),
                    ),
                    textAlign: TextAlign.center,
                    overflow: overflow,
                    maxLines: maxLines,
                    textScaler: TextScaler.noScaling,
                  ),
                ),
              ),
            MfmURL(:final value) => WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: UrlWidget(
                  url: value,
                  onTap: () => onLinkTap?.call(value),
                  style: style.apply(color: colors.link),
                  scale: scale,
                  opacity: opacity,
                  align: align,
                  overflow: overflow,
                  maxLines: maxLines,
                  textScaler: TextScaler.noScaling,
                ),
              ),
            MfmLink(:final url, :final children?) => WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: InkWell(
                  onTap: () => onLinkTap?.call(url),
                  onLongPress: () => onLinkLongPress?.call(url),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        ...copyWith(
                          style: style.apply(color: colors.link),
                        ).build(children),
                        WidgetSpan(
                          child: Icon(
                            Icons.open_in_new,
                            color: colors.link.withOpacity(opacity),
                            size: style.fontSize! * scale,
                          ),
                        ),
                      ],
                    ),
                    textAlign: align,
                    textScaler: TextScaler.noScaling,
                  ),
                ),
              ),
            MfmMention(:final username, :final host) => WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: mentionBuilder.call(username, host, scale, opacity),
              ),
            MfmHashTag(:final hashTag) => WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: InkWell(
                  onTap: () => onHashtagTap?.call(hashTag),
                  child: Text(
                    '#$hashTag',
                    style: style.apply(
                      fontSizeFactor: scale,
                      color: colors.hashtag.withOpacity(opacity),
                    ),
                    overflow: overflow,
                    textScaler: TextScaler.noScaling,
                    maxLines: maxLines,
                  ),
                ),
              ),
            MfmCodeBlock(:final code, :final lang) => WidgetSpan(
                child: Opacity(
                  opacity: opacity,
                  child: SizedBox(
                    width: double.infinity,
                    child: Code(code: code, language: lang),
                  ),
                ),
              ),
            MfmInlineCode(:final code) => WidgetSpan(
                child: Opacity(
                  opacity: opacity,
                  child: Code(
                    code: code,
                    inline: true,
                    fontSize: style.apply(fontSizeFactor: scale).fontSize,
                  ),
                ),
              ),
            MfmQuote(:final children?) => WidgetSpan(
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  padding:
                      const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: material.Border(
                      left: BorderSide(
                        color: colors.fg.withOpacity(opacity * 0.7),
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: copyWith(opacity: opacity * 0.7)
                          .build(children, disableNyaize: true),
                    ),
                    textAlign: align,
                    overflow: overflow,
                    textScaler: TextScaler.noScaling,
                    maxLines: maxLines,
                  ),
                ),
              ),
            MfmEmojiCode(:final name) => WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: emojiBuilder(
                  name,
                  scale * (simple ? 1.0 : 2.0),
                  opacity,
                  style.copyWith(
                    color: style.color?.withOpacity(opacity),
                    height: simple ? 1.0 : null,
                  ),
                ),
              ),
            MfmUnicodeEmoji(:final emoji) => WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: UnicodeEmoji(
                  emoji: emoji,
                  style: style.apply(
                    fontSizeFactor: scale,
                    color: style.color?.withOpacity(opacity),
                  ),
                  onTap:
                      onTapEmoji != null ? () => onTapEmoji?.call(emoji) : null,
                  inline: true,
                ),
              ),
            MfmMathInline(:final formula) => WidgetSpan(
                alignment: PlaceholderAlignment.baseline,
                baseline: TextBaseline.alphabetic,
                child: Math.tex(
                  formula,
                  mathStyle: MathStyle.text,
                  textStyle: style.apply(
                    color: style.color?.withOpacity(opacity),
                  ),
                  textScaleFactor: scale,
                  onErrorFallback: (_) => Text(
                    formula,
                    style: style.apply(
                      fontSizeFactor: scale,
                      color: Color.fromRGBO(
                        178,
                        34,
                        34,
                        opacity,
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
                      textStyle: style.apply(
                        color: style.color?.withOpacity(opacity),
                      ),
                      textScaleFactor: scale,
                      onErrorFallback: (_) => Text(
                        formula,
                        style: style.apply(
                          color: Color.fromRGBO(
                            178,
                            34,
                            34,
                            opacity,
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
                style: style.apply(
                  fontSizeFactor: scale,
                  color: style.color?.withOpacity(opacity),
                ),
              ),
            MfmNode(:final children?) => TextSpan(children: build(children)),
            _ => null
          },
        )
        .nonNulls
        .toList();
  }

  InlineSpan _buildMfmFn({
    required String name,
    required Map<String, dynamic> args,
    required List<MfmNode> children,
    bool disableNyaize = false,
  }) {
    switch (name) {
      case 'tada':
        final span = TextSpan(
          children: copyWith(scale: scale * 1.5).build(children),
        );
        if (!useAnimation) {
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
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'jelly':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Jelly(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'twitch':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Twitch(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'shake':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Shake(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'spin':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Spin(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'jump':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Jump(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'bounce':
        if (!useAnimation) break;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Bounce(
            args: args,
            child: Text.rich(
              TextSpan(children: build(children)),
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'flip':
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.scale(
            scaleX: !args.containsKey('h') && args.containsKey('v') ? 1 : -1,
            scaleY: !args.containsKey('v') ? 1 : -1,
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'x2':
        if (!useAdvanced) break;
        return TextSpan(children: copyWith(scale: scale * 2).build(children));
      case 'x3':
        if (!useAdvanced) break;
        return TextSpan(children: copyWith(scale: scale * 4).build(children));
      case 'x4':
        if (!useAdvanced) break;
        return TextSpan(children: copyWith(scale: scale * 6).build(children));
      case 'font':
        return TextSpan(
          children: copyWith(
            style: style.apply(
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
          ).build(children),
        );
      case 'blur':
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Blur(
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'rainbow':
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: useAnimation
              ? Rainbow(
                  args: args,
                  child: Text.rich(
                    span,
                    textAlign: align,
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
        if (!useAnimation) break;
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Sparkle(
            opacity: opacity,
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'rotate':
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.rotate(
            angle: (safeParseDouble(args['deg']) ?? 90.0) * pi / 180,
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'position':
        if (!useAdvanced) break;
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.translate(
            offset: Offset(
              (safeParseDouble(args['x']) ?? 0.0) * scale * style.fontSize!,
              (safeParseDouble(args['y']) ?? 0.0) * scale * style.fontSize!,
            ),
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'scale':
        if (!useAdvanced) break;
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Transform.scale(
            scaleX: min(safeParseDouble(args['x']) ?? 1.0, 5.0),
            scaleY: min(safeParseDouble(args['y']) ?? 1.0, 5.0),
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'fg':
        final color = safeParseColor(args['color']) ?? Colors.red;
        return TextSpan(
          children: copyWith(
            style: style.apply(color: color),
            opacity: opacity * color.opacity,
          ).build(children),
        );
      case 'bg':
        final span = TextSpan(children: build(children));
        final color = safeParseColor(args['color']) ?? Colors.red;
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: ColoredBox(
            color: color.withOpacity(opacity * color.opacity),
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'border':
        final span = TextSpan(children: build(children));
        return WidgetSpan(
          alignment: children.any(_containsNewLine)
              ? PlaceholderAlignment.bottom
              : PlaceholderAlignment.baseline,
          baseline: TextBaseline.alphabetic,
          child: Border(
            args: args,
            child: Text.rich(
              span,
              textAlign: align,
              overflow: overflow,
              textScaler: TextScaler.noScaling,
              maxLines: maxLines,
            ),
          ),
        );
      case 'ruby':
        final rubyStyle = style
            .apply(
              fontSizeFactor: scale * 0.5,
              color: style.color?.withOpacity(opacity),
            )
            .copyWith(height: 1.0);
        if (children.length <= 1) {
          final node = children.singleOrNull;
          final text = node is MfmText
              ? !disableNyaize && shouldNyaize
                  ? nyaize(node.text)
                  : node.text
              : '';
          final l = text.split(' ');
          final ruby = l.elementAtOrNull(1)?.replaceAll('\n', ' ') ?? '';
          final span = TextSpan(
            children: copyWith(style: style.copyWith(height: 1.0))
                .build([MfmText(l.first.replaceAll('\n', ' '))]),
          );
          return WidgetSpan(
            alignment: PlaceholderAlignment.aboveBaseline,
            baseline: TextBaseline.ideographic,
            child: Ruby(
              style: rubyStyle,
              ruby: ruby,
              child: Text.rich(
                span,
                textAlign: align,
                overflow: overflow,
                textScaler: TextScaler.noScaling,
                maxLines: maxLines,
              ),
            ),
          );
        } else {
          final node = children.last;
          final ruby = node is MfmText
              ? (!disableNyaize && shouldNyaize ? nyaize(node.text) : node.text)
                  .replaceAll('\n', ' ')
                  .trim()
              : '';
          final span = TextSpan(
            children: copyWith(style: style.copyWith(height: 1.0)).build(
              children
                  .sublist(0, children.length - 1)
                  .whereType<MfmInline>()
                  .map(_removeNewLines)
                  .toList(),
            ),
          );
          return WidgetSpan(
            alignment: PlaceholderAlignment.aboveBaseline,
            baseline: TextBaseline.ideographic,
            child: Ruby(
              style: rubyStyle,
              ruby: ruby,
              child: Text.rich(
                span,
                textAlign: align,
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
              borderRadius: BorderRadius.circular(style.lineHeight * scale),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 4.0 * scale,
                horizontal: 8.0 * scale,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.access_time,
                        color: style.color?.withOpacity(opacity),
                        size: style.lineHeight * scale * 0.9,
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 2.0 * scale)),
                    if (time != null)
                      TextSpan(
                        text: '${absoluteTime(time)} (${relativeTime(time)})',
                        style: style.apply(
                          fontSizeFactor: scale * 0.9,
                          color: style.color?.withOpacity(opacity),
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
        final span = TextSpan(children: build(children));
        final clickEv = args['ev'] as String?;
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
                span,
                textAlign: align,
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
            ...build(children),
            const TextSpan(text: ']'),
          ],
        );
    }
    return TextSpan(children: build(children));
  }

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
      MfmText(:final text) => MfmText(text.replaceAll('\n', '')),
      MfmPlain(:final text) => MfmPlain(text.replaceAll('\n', '')),
      MfmBold(:final children?) => MfmBold(
          children.whereType<MfmInline>().map(_removeNewLines).toList(),
        ),
      MfmSmall(:final children?) => MfmSmall(
          children.whereType<MfmInline>().map(_removeNewLines).toList(),
        ),
      MfmItalic(:final children?) => MfmItalic(
          children.whereType<MfmInline>().map(_removeNewLines).toList(),
        ),
      MfmStrike(:final children?) => MfmStrike(
          children.whereType<MfmInline>().map(_removeNewLines).toList(),
        ),
      MfmFn(:final name, :final args, :final children?) => MfmFn(
          name: name,
          args: args,
          children:
              children.whereType<MfmInline>().map(_removeNewLines).toList(),
        ),
      _ => node,
    };
  }
}
