import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../model/account.dart';
import '../../provider/api/meta_provider.dart';
import '../../util/safe_parse_color.dart';
import 'image_widget.dart';

class InstanceTicker extends ConsumerWidget {
  const InstanceTicker({
    super.key,
    required this.account,
    required this.instance,
    required this.host,
  });

  final Account account;
  final UserInstanceInfo instance;
  final String host;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color =
        safeParseColor(instance.themeColor) ?? const Color(0xff777777);
    final style = DefaultTextStyle.of(context).style;
    final faviconUrl = instance.faviconUrl;
    final mediaProxy = ref.watch(metaProvider(account)).valueOrNull?.mediaProxy;
    final mediaProxyUrl =
        (mediaProxy != null ? Uri.tryParse(mediaProxy) : null) ??
            Uri.https(account.host, 'proxy');
    final proxiedUrl = faviconUrl != null
        ? mediaProxyUrl.replace(
            pathSegments: [...mediaProxyUrl.pathSegments, 'preview.webp'],
            queryParameters: {'url': faviconUrl.toString()},
          )
        : null;

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
          onTap: () => context.push('/$account/servers/$host'),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                if (proxiedUrl != null) ...[
                  ImageWidget(
                    height: style.fontSize! + 2.0,
                    url: proxiedUrl.toString(),
                  ),
                  const SizedBox(width: 4.0),
                ],
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      instance.name ?? '',
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
