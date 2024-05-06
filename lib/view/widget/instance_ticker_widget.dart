import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/api/meta_notifier_provider.dart';
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
    final color = safeParseColor(
          instance != null ? instance?.themeColor : meta?.themeColor,
        ) ??
        const Color(0xff777777);
    final faviconUrl = instance?.faviconUrl;
    final mediaProxy = meta?.mediaProxy;
    final mediaProxyUrl =
        (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
            Uri.https(account.host, 'proxy');
    final proxiedUrl =
        instance != null && faviconUrl != null && account.host.isNotEmpty
            ? mediaProxyUrl.replace(
                pathSegments: [...mediaProxyUrl.pathSegments, 'preview.webp'],
                queryParameters: {'url': faviconUrl.toString()},
              )
            : faviconUrl;
    final style = DefaultTextStyle.of(context).style;

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        gradient: LinearGradient(
          colors: [
            color,
            color,
            color.withOpacity(0),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(4.0),
          bottomLeft: Radius.circular(4.0),
        ),
        child: InkWell(
          onTap: account.host.isNotEmpty
              ? () => context.push('/$account/servers/${host ?? account.host}')
              : null,
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                if (proxiedUrl != null || host == null) ...[
                  ImageWidget(
                    height: style.fontSize! + 2.0,
                    url: proxiedUrl != null
                        ? proxiedUrl.toString()
                        : 'https://${account.host}/favicon.ico',
                  ),
                  const SizedBox(width: 4.0),
                ],
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      (instance != null ? instance?.name : meta?.name) ?? '',
                      style: style.copyWith(
                        color: Colors.white,
                        height: 1.0,
                        shadows: const [
                          Shadow(blurRadius: 2.0),
                          Shadow(blurRadius: 2.0),
                          Shadow(blurRadius: 2.0),
                        ],
                      ).copyWith(height: 1.0),
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
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
