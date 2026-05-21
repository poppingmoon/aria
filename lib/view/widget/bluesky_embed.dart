import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/dio_provider.dart';
import '../../util/launch_url.dart';

class BlueskyEmbed extends HookConsumerWidget {
  const BlueskyEmbed({
    super.key,
    required this.atId,
    required this.rkey,
    this.isDark = false,
  });

  final String atId;
  final String rkey;
  final bool isDark;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dio = ref.watch(dioProvider);
    final did = useFuture(
      useMemoized(() async {
        if (atId.startsWith('did:')) {
          return atId;
        }
        final response = await dio.getUri<Map<String, dynamic>>(
          Uri(
            scheme: 'https',
            host: 'public.api.bsky.app',
            pathSegments: ['xrpc', 'com.atproto.identity.resolveHandle'],
            queryParameters: {'handle': atId},
          ),
        );
        if (response.data?['did'] case final String did) {
          return did;
        }
        return null;
      }),
    ).data;
    if (did == null) {
      return const SizedBox(height: 200.0);
    }

    final height = useState(200.0);
    final content =
        """
<html>

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
  </head>

  <body style="margin: 0;">
    <div
      data-bluesky-uri="at://$did/app.bsky.feed.post/$rkey"
      data-bluesky-embed-color-mode="${isDark ? 'dark' : 'light'}"
    ></div>
    <script async src="https://embed.bsky.app/static/embed.js" charset="utf-8"></script>
    <script>
      window.addEventListener('message', function (event) {
        if (event.origin !== 'https://embed.bsky.app') {
          return;
        }
        let height = event.data.height;
        if (height) {
          window.flutter_inappwebview.callHandler("onReady", height);
        }
      });
    </script>
  </body>

</html>
""";
    final shouldLaunch = useState(false);

    return SizedBox(
      height: height.value,
      child: InkWell(
        onTap: defaultTargetPlatform == TargetPlatform.windows ? () {} : null,
        onHover: (value) => shouldLaunch.value = value,
        child: InAppWebView(
          initialSettings: InAppWebViewSettings(transparentBackground: true),
          initialData: InAppWebViewInitialData(data: content),
          onWebViewCreated: (controller) => controller.addJavaScriptHandler(
            handlerName: 'onReady',
            callback: (List<dynamic> arguments) =>
                height.value = (arguments.single as num).toDouble() + 16.0,
          ),
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            final url = navigationAction.request.url;
            if (url == null) {
              return NavigationActionPolicy.CANCEL;
            }
            if (navigationAction.hasGesture ?? false) {
              await launchUrl(ref, url);
              return NavigationActionPolicy.CANCEL;
            }
            if (url.scheme == 'about' || url.host == 'embed.bsky.app') {
              return NavigationActionPolicy.ALLOW;
            }
            if (shouldLaunch.value) {
              await launchUrl(ref, url);
            }
            return NavigationActionPolicy.CANCEL;
          },
        ),
      ),
    );
  }
}
