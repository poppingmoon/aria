import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../extension/string_extension.dart';
import '../../i18n/strings.g.dart';
import '../../provider/misskey_colors_provider.dart';
import '../../util/punycode.dart';
import 'url_sheet.dart';

String _decodeComponent(String encodedComponent) {
  try {
    return Uri.decodeComponent(encodedComponent);
  } catch (_) {
    return encodedComponent;
  }
}

String _decodeQueryComponent(String encodedComponent) {
  try {
    return Uri.decodeQueryComponent(encodedComponent);
  } catch (_) {
    // TODO: Decode other encodings.
    return encodedComponent;
  }
}

typedef DisplayUrl = ({
  String? scheme,
  String host,
  String? port,
  String path,
  String? query,
  String? fragment,
});

DisplayUrl parseDisplayUrl(Uri url) {
  return (
    scheme: url.hasScheme ? '${url.scheme.breakAll}://' : null,
    host: toUnicode(url.host).breakAll,
    port: url.hasPort ? ':${url.port.toString().breakAll}' : null,
    path: _decodeComponent(url.path).breakAll,
    query: url.hasQuery
        ? '?${_decodeQueryComponent(url.query).breakAll}'
        : null,
    fragment: url.hasFragment
        ? '#${_decodeQueryComponent(url.fragment).breakAll}'
        : null,
  );
}

TextSpan buildUrlSpan({
  required DisplayUrl url,
  TextSpan Function({String? text, TextStyle? style}) textSpanBuilder =
      TextSpan.new,
  Color? color,
  double opacity = 1.0,
}) {
  return TextSpan(
    children: [
      if (url.scheme != null)
        textSpanBuilder(
          text: url.scheme,
          style: TextStyle(color: color?.withValues(alpha: opacity * 0.5)),
        ),
      textSpanBuilder(
        text: url.host,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      if (url.port != null) textSpanBuilder(text: url.port),
      textSpanBuilder(
        text: url.path,
        style: TextStyle(color: color?.withValues(alpha: opacity * 0.8)),
      ),
      if (url.query != null)
        textSpanBuilder(
          text: url.query,
          style: TextStyle(color: color?.withValues(alpha: opacity * 0.5)),
        ),
      if (url.fragment != null)
        textSpanBuilder(
          text: url.fragment,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
    ],
  );
}

class UrlWidget extends HookWidget {
  const UrlWidget({
    required this.url,
    this.verified = false,
    this.onTap,
    this.style,
    this.scale = 1.0,
    this.opacity = 1.0,
    this.align,
    this.overflow,
    this.maxLines,
    this.textScaler,
  });

  final String url;
  final bool verified;
  final void Function()? onTap;
  final TextStyle? style;
  final double scale;
  final double opacity;
  final TextAlign? align;
  final TextOverflow? overflow;
  final TextScaler? textScaler;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final url = useMemoized(
      () => switch (Uri.tryParse(this.url)) {
        final url? => parseDisplayUrl(url),
        _ => null,
      },
      [this.url],
    );
    final style = DefaultTextStyle.of(context).style.merge(this.style);

    return InkWell(
      onTap: onTap,
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) => UrlSheet(url: this.url),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            if (url != null)
              buildUrlSpan(url: url, color: style.color)
            else
              TextSpan(text: this.url),
            WidgetSpan(
              child: Icon(
                Icons.open_in_new,
                color: style.color?.withValues(alpha: opacity),
                size: style.fontSize! * scale,
              ),
            ),
            if (verified) ...[
              const WidgetSpan(child: SizedBox(width: 2.0)),
              const WidgetSpan(child: _VerifiedIcon()),
            ],
          ],
        ),
        style: style.apply(
          fontSizeFactor: scale,
          color: style.color?.withValues(alpha: opacity),
        ),
        textAlign: align,
        overflow: overflow,
        textScaler: textScaler,
        maxLines: maxLines,
        semanticsLabel: this.url,
      ),
    );
  }
}

class _VerifiedIcon extends ConsumerWidget {
  const _VerifiedIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tooltip(
      message: t.misskey.verifiedLink,
      child: Icon(
        Icons.check_circle_outline,
        color: ref.watch(
          misskeyColorsProvider(
            Theme.brightnessOf(context),
          ).select((colors) => colors.success),
        ),
        size: DefaultTextStyle.of(context).style.fontSize,
      ),
    );
  }
}
