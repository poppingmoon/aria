import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/summaly_result.dart';
import '../../util/launch_url.dart';

class PlayerEmbed extends ConsumerWidget {
  const PlayerEmbed({super.key, required this.player});

  final Player player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          if (url != null) {
            await launchUrl(ref, url);
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
