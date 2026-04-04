import 'dart:math';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:screen_brightness/screen_brightness.dart';
import 'package:sensors_plus/sensors_plus.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/api/i_notifier_provider.dart';
import '../../provider/api/meta_notifier_provider.dart';
import '../../provider/cache_manager_provider.dart';
import '../../provider/node_info_provider.dart';
import '../../provider/server_url_notifier_provider.dart';
import '../widget/acct_widget.dart';
import '../widget/user_avatar.dart';
import '../widget/username_widget.dart';

class QrPage extends HookConsumerWidget {
  const QrPage({super.key, required this.account});

  final Account account;

  Future<void> _setBrightness(double brightness) async {
    if (defaultTargetPlatform
        case TargetPlatform.android ||
            TargetPlatform.iOS ||
            TargetPlatform.macOS ||
            TargetPlatform.windows) {
      await ScreenBrightness.instance.setApplicationScreenBrightness(1.0);
    }
  }

  Future<void> _resetBrightness() async {
    if (defaultTargetPlatform
        case TargetPlatform.android ||
            TargetPlatform.iOS ||
            TargetPlatform.macOS ||
            TargetPlatform.windows) {
      await ScreenBrightness.instance.resetApplicationScreenBrightness();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i = ref.watch(iNotifierProvider(account)).value;
    final meta = ref.watch(metaNotifierProvider(account.host)).value;
    final nodeInfo = ref.watch(nodeInfoProvider(account.host)).value;
    final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
    final url = serverUrl.replace(path: '@${account.username}');
    final iconUrl = meta?.iconUrl ?? serverUrl.replace(path: 'favicon.ico');
    final isBright = useState(false);
    final qrImage = useMemoized(
      () => QrImage(
        QrCode.fromData(
          data: url.toString(),
          errorCorrectLevel: QrErrorCorrectLevel.H,
        ),
      ),
      [url],
    );
    final sub = useOnStreamChange(
      switch (defaultTargetPlatform) {
        TargetPlatform.android ||
        TargetPlatform.iOS => accelerometerEventStream(),
        _ => null,
      },
      onData: (event) {
        if (event.y > 3.0) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
        } else if (event.y < -3.0) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitDown,
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ]);
        }
      },
    );
    useEffect(() {
      isBright.addListener(() {
        if (isBright.value) {
          _setBrightness(1.0);
        } else {
          _resetBrightness();
        }
      });
      return () {
        sub?.cancel();
        _resetBrightness().ignore();
        SystemChrome.setPreferredOrientations([]).ignore();
      };
    }, []);
    final theme = Theme.of(context);
    final lightTheme = switch (theme.brightness) {
      Brightness.light => theme,
      Brightness.dark => theme.copyWith(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: theme.primaryColor),
      ),
    };
    final size = MediaQuery.sizeOf(context);
    final qrSize = min(size.shortestSide, 300.0);
    final isShort = size.height - qrSize < 200.0;
    final isTall = size.height - qrSize > 400.0;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: !isShort
                    ? Column(children: [AppBar(title: Text(t.misskey.qr))])
                    : const SizedBox.expand(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () => isBright.value = true,
                    onDoubleTap: () => isBright.value = !isBright.value,
                    child: SizedBox(
                      width: qrSize,
                      height: qrSize,
                      child: Card(
                        color: Colors.transparent,
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.zero,
                        child: AnimatedTheme(
                          data: isBright.value
                              ? lightTheme.copyWith(
                                  colorScheme: lightTheme.colorScheme.copyWith(
                                    onPrimaryContainer: Colors.black,
                                    surfaceContainer: Colors.white,
                                  ),
                                )
                              : lightTheme,
                          duration: const Duration(seconds: 1),
                          child: Builder(
                            builder: (context) {
                              final theme = Theme.of(context);
                              return PrettyQrView(
                                qrImage: qrImage,
                                decoration: PrettyQrDecoration(
                                  image: PrettyQrDecorationImage(
                                    image: CachedNetworkImageProvider(
                                      iconUrl.toString(),
                                      cacheManager: ref.watch(
                                        cacheManagerProvider,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(16.0),
                                  ),
                                  quietZone: PrettyQrQuietZone.standard,
                                  background:
                                      theme.colorScheme.surfaceContainer,
                                  // ignore: experimental_member_use
                                  shape: PrettyQrShape.custom(
                                    PrettyQrSmoothSymbol(
                                      roundFactor: 0.8,
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                    ),
                                    finderPattern: _FinderShape(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: !isShort && i != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            Flexible(
                              child: FittedBox(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: isTall ? 32.0 : 16.0,
                                  ),
                                  child: Column(
                                    children: [
                                      UserAvatar(
                                        account: account,
                                        user: i,
                                        size: 48.0,
                                        onTap: () => context.push(
                                          '/$account/users/${i.id}',
                                        ),
                                      ),
                                      const SizedBox(height: 4.0),
                                      Builder(
                                        builder: (context) => SizedBox(
                                          width: max(0, size.width - 16.0),
                                          child: UsernameWidget(
                                            account: account,
                                            user: i,
                                            style: DefaultTextStyle.of(context)
                                                .style
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                )
                                                .apply(fontSizeFactor: 1.1),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      AcctWidget(
                                        account: account,
                                        user: i,
                                        showLocalHost: true,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (isTall &&
                                switch (nodeInfo?['software']) {
                                  {'name': final String softwareName} =>
                                    softwareName.toLowerCase().contains(
                                      'misskey',
                                    ),
                                  _ => true,
                                })
                              Center(
                                child: SizedBox(
                                  width: 100.0,
                                  child: Stack(
                                    children: [
                                      if (theme.brightness == Brightness.light)
                                        ImageFiltered(
                                          imageFilter: ImageFilter.blur(
                                            sigmaX: 4.0,
                                            sigmaY: 4.0,
                                          ),
                                          child: SvgPicture.asset(
                                            Assets
                                                .misskey
                                                .packages
                                                .frontend
                                                .assets
                                                .misskey,
                                            colorFilter: ColorFilter.mode(
                                              theme.colorScheme.onSurface
                                                  .withValues(alpha: 0.5),
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                        ),
                                      SvgPicture.asset(
                                        Assets
                                            .misskey
                                            .packages
                                            .frontend
                                            .assets
                                            .misskey,
                                        colorFilter:
                                            theme.brightness == Brightness.dark
                                            ? const ColorFilter.mode(
                                                Colors.white38,
                                                BlendMode.srcIn,
                                              )
                                            : null,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    : const SizedBox.expand(),
              ),
            ],
          ),
          if (isShort)
            const SafeArea(
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BackButton(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _FinderShape extends PrettyQrShape {
  const _FinderShape({required this.color});

  final Color color;

  @override
  void paint(PrettyQrPaintingContext context) {
    final matrix = context.matrix;
    final canvasBounds = context.estimatedBounds;
    final moduleDimension = context.moduleDimension;

    final brush = PrettyQrBrush.from(color);
    final fillPaint =
        brush.toPaint(canvasBounds, textDirection: context.textDirection)
          ..style = PaintingStyle.fill
          ..strokeCap = StrokeCap.square;
    final strokePaint =
        brush.toPaint(canvasBounds, textDirection: context.textDirection)
          ..style = PaintingStyle.stroke
          ..strokeWidth = moduleDimension;
    const round = 0.8;
    for (final pattern in matrix.positionDetectionPatterns) {
      final patternRect = Rect.fromLTWH(
        pattern.left * moduleDimension,
        pattern.top * moduleDimension,
        (pattern.width + 1) * moduleDimension,
        (pattern.height + 1) * moduleDimension,
      ).shift(canvasBounds.topLeft);

      final patternRRect = RRect.fromRectAndRadius(
        patternRect.deflate(moduleDimension / 2),
        Radius.circular(moduleDimension * 2.5 * round),
      );
      context.canvas.drawRRect(patternRRect, strokePaint);

      final patternDotRRect = RRect.fromRectAndRadius(
        patternRect.deflate(moduleDimension * 2),
        Radius.circular(moduleDimension * 1.0 * round),
      );
      context.canvas.drawRRect(patternDotRRect, fillPaint);
    }
  }
}
