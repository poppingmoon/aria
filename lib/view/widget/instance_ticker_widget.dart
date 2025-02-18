import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/proxied_image_url_provider.dart';
import '../../util/safe_parse_color.dart';
import 'image_widget.dart';

class InstanceTickerWidget extends ConsumerWidget {
  const InstanceTickerWidget({
    super.key,
    required this.account,
    this.instance,
    this.host,
  });

  final Account account;
  final UserInstanceInfo? instance;
  final String? host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meta = ref.watch(metaNotifierProvider(account.host)).valueOrNull;
    final color =
        safeParseColor(
          instance != null ? instance?.themeColor : meta?.themeColor,
        ) ??
        const Color(0xff777777);
    final faviconUrl = instance?.faviconUrl;
    final proxiedUrl =
        instance != null && faviconUrl != null && account.host.isNotEmpty
            ? ref.watch(
              proxiedImageUrlProvider(
                account.host,
                faviconUrl.toString(),
                preview: true,
              ),
            )
            : faviconUrl;
    final style = DefaultTextStyle.of(context).style;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        gradient: LinearGradient(
          begin: AlignmentDirectional.centerStart,
          end: AlignmentDirectional.centerEnd,
          colors: [color, color, color.withValues(alpha: 0)],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: InkWell(
          onTap:
              account.host.isNotEmpty
                  ? () =>
                      context.push('/$account/servers/${host ?? account.host}')
                  : null,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                if (proxiedUrl != null || host == null) ...[
                  ImageWidget(
                    height: style.fontSize! + 2.0,
                    url:
                        proxiedUrl != null
                            ? proxiedUrl.toString()
                            : 'https://${account.host}/favicon.ico',
                  ),
                  const SizedBox(width: 4.0),
                ],
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: _ShadowText(
                      text:
                          instance != null
                              ? instance?.name ?? host ?? ''
                              : meta?.name ?? account.host,
                      style: style.copyWith(height: 1.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ShadowText extends StatelessWidget {
  const _ShadowText({required this.text, required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Stack(
        children: [
          Text(
            text,
            style: style.copyWith(
              foreground:
                  Paint()
                    ..color = Colors.black38
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2.0,
            ),
            softWrap: false,
            overflow: TextOverflow.fade,
            maxLines: 1,
          ),
          Text(
            text,
            style: style.copyWith(color: Colors.white),
            softWrap: false,
            overflow: TextOverflow.fade,
            maxLines: 1,
          ),
        ],
      );
    } else {
      return Text(
        text,
        style: style.copyWith(
          color: Colors.white,
          shadows: const [
            Shadow(blurRadius: 2.0),
            Shadow(blurRadius: 2.0),
            Shadow(blurRadius: 2.0),
          ],
        ),
        softWrap: false,
        overflow: TextOverflow.fade,
        maxLines: 1,
      );
    }
  }
}
