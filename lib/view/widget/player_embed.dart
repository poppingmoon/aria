import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/summaly_result.dart';

class PlayerEmbed extends StatelessWidget {
  const PlayerEmbed({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context) {
    final width = player.width;
    final height = player.height;
    final url = player.url != null ? Uri.tryParse(player.url!) : null;
    if (url == null) {
      return const SizedBox.shrink();
    }
    final replacedUrl = url.replace(
      queryParameters: {
        ...url.queryParameters,
        'autoplay': '1',
        'auto_play': '1',
      },
    );
    final webView = InAppWebView(
      initialSettings: InAppWebViewSettings(
        mediaPlaybackRequiresUserGesture: false,
        allowsInlineMediaPlayback: true,
      ),
      initialUrlRequest: URLRequest(url: WebUri.uri(replacedUrl)),
      shouldOverrideUrlLoading: (controller, navigationAction) async {
        if (navigationAction.hasGesture ?? false) {
          final url = navigationAction.request.url;
          if (url != null && await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
            return NavigationActionPolicy.CANCEL;
          }
        }
        return NavigationActionPolicy.ALLOW;
      },
    );

    if (width != null && height != null) {
      final aspectRatio = width / height;
      return AspectRatio(
        aspectRatio: aspectRatio,
        child: webView,
      );
    }
    return SizedBox(
      height: height ?? 200,
      child: webView,
    );
  }
}
