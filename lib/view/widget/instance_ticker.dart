import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/text_style_extension.dart';
import '../../model/account.dart';
import '../../util/safe_parse_color.dart';
import 'image_widget.dart';

class InstanceTicker extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final color = safeParseColor(instance.themeColor) ?? Colors.black;
    final style = DefaultTextStyle.of(context).style;
    final faviconUrl = instance.faviconUrl;

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
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            if (faviconUrl != null)
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: ImageWidget(
                  height: style.lineHeight,
                  url: faviconUrl.toString(),
                ),
              ),
            Expanded(
              child: InkWell(
                onTap: () => context.push('/$account/servers/$host'),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    instance.name ?? '',
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
