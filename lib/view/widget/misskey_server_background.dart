import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../provider/misskey_servers_provider.dart';
import 'image_widget.dart';

class MisskeyServerBackground extends HookConsumerWidget {
  const MisskeyServerBackground({
    super.key,
    required this.controller,
    required this.child,
  });

  final TextEditingController controller;
  final Widget child;

  String? getBackgroundImageUrl(JoinMisskeyInstanceInfo? server) {
    if (server == null) {
      return null;
    }
    if (server.meta?['backgroundImageUrl'] case final String url
        when url.isNotEmpty) {
      return url;
    }
    if (server.background) {
      return 'https://instanceapp.misskey.page/instance-backgrounds/${server.url}.webp';
    }
    if (server.meta?['bannerUrl'] case final String url when url.isNotEmpty) {
      return url;
    }
    if (server.banner) {
      return 'https://instanceapp.misskey.page/instance-banners/${server.url}.webp';
    }
    if (server.meta?['iconUrl'] case final String url when url.isNotEmpty) {
      return url;
    }
    if (server.icon) {
      return 'https://instanceapp.misskey.page/instance-icons/${server.url}.webp';
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final servers = ref.watch(misskeyServersProvider).value ?? [];
    final opacityController = useAnimationController(
      duration: const Duration(seconds: 1),
    );
    final opacity = useAnimation(opacityController);
    final backgroundImageUrl = useState<String?>(null);
    useEffect(() {
      Future<void> listener() async {
        final host = controller.text;
        final prev = backgroundImageUrl.value;
        final next = getBackgroundImageUrl(
          servers.firstWhereOrNull((server) => server.url == host),
        );
        if (prev == null) {
          if (next != null) {
            backgroundImageUrl.value = next;
            await opacityController.forward();
          }
        } else {
          if (prev == next) return;
          await opacityController.reverse();
          backgroundImageUrl.value = next;
          if (next != null) {
            await opacityController.forward();
          }
        }
      }

      listener();
      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [servers]);

    return Stack(
      alignment: Alignment.center,
      children: [
        if (backgroundImageUrl case ValueNotifier(:final value?))
          Positioned.fill(
            child: ImageWidget(url: value, fit: BoxFit.cover, opacity: opacity),
          ),
        child,
      ],
    );
  }
}
