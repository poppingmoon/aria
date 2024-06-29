import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../util/launch_url.dart';

class TwitterEmbed extends HookConsumerWidget {
  const TwitterEmbed({
    super.key,
    required this.tweetId,
    this.isDark = false,
    this.lang = 'en',
  });

  final String tweetId;
  final bool isDark;
  // https://developer.twitter.com/en/docs/twitter-for-websites/supported-languages
  final String lang;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = useState(200.0);
    // https://developer.twitter.com/en/docs/twitter-for-websites/embedded-tweets/guides/embedded-tweet-javascript-factory-function
    final content = """
<html>

  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width">
  </head>

  <body style="margin: 0;">
    <div id="container"></div>
  </body>

  <script>
    window.twttr = (function (d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0],
        t = window.twttr || {};
      if (d.getElementById(id)) return t;
      js = d.createElement(s);
      js.id = id;
      js.src = "https://platform.twitter.com/widgets.js";
      fjs.parentNode.insertBefore(js, fjs);

      t._e = [];
      t.ready = function (f) {
        t._e.push(f);
      };

      return t;
    }(document, "script", "twitter-wjs"));
    window.twttr.ready(
      (twttr) => twttr.widgets.createTweet(
        "$tweetId",
        document.getElementById("container"),
        {
          ${isDark ? "theme: 'dark'," : ""}
          lang: '$lang'
        },
      ).then(
        (el) =>
            window.flutter_inappwebview.callHandler("onReady", el.offsetHeight),
      ),
    );
  </script>

</html>
""";

    return SizedBox(
      height: height.value,
      child: InAppWebView(
        initialSettings: InAppWebViewSettings(transparentBackground: true),
        initialUrlRequest: URLRequest(
          url: WebUri.uri(Uri.dataFromString(content, mimeType: 'text/html')),
        ),
        onWebViewCreated: (controller) => controller.addJavaScriptHandler(
          handlerName: 'onReady',
          callback: (arguments) =>
              height.value = (arguments.single as num).toDouble() + 16.0,
        ),
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
      ),
    );
  }
}
