import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../i18n/strings.g.dart';
import '../../util/copy_text.dart';

class UrlSheet extends StatelessWidget {
  const UrlSheet({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(title: Text(url)),
        const Divider(height: 0.0),
        ListTile(
          leading: const Icon(Icons.open_in_browser),
          title: Text(t.aria.openInInternalBrowser),
          onTap: () {
            context.pop();
            launchUrl(Uri.parse(url), mode: LaunchMode.inAppBrowserView);
          },
        ),
        ListTile(
          leading: const Icon(Icons.open_in_new),
          title: Text(t.aria.openInExternalBrowser),
          onTap: () {
            context.pop();
            launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
          },
        ),
        ListTile(
          leading: const Icon(Icons.copy),
          title: Text(t.misskey.copy),
          onTap: () {
            context.pop();
            copyToClipboard(context, url);
          },
        ),
      ],
    );
  }
}
