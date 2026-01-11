import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../model/account.dart';
import '../provider/emojis_notifier_provider.dart';
import 'launch_url.dart';

Future<void> navigate(WidgetRef ref, Account account, String link) async {
  final url = Uri.tryParse(link);
  if (url == null) return;
  if (url.pathSegments.firstOrNull
      case 'channels' ||
          'chat' ||
          'clips' ||
          'gallery' ||
          'notes' ||
          'play' ||
          'pages' ||
          'scratchpad' ||
          'tags' ||
          'users') {
    if (url.host != account.host) {
      try {
        await ref
            .read(emojisNotifierProvider(url.host).notifier)
            .reloadEmojis();
        if (!ref.context.mounted) return;
        await ref.context.push('/${url.host}${url.path}');
      } catch (_) {
        await launchUrl(ref, url);
      }
    } else {
      await ref.context.push('/$account${url.path}');
    }
  } else {
    if (url.pathSegments.firstOrNull?.startsWith('@') ?? false) {
      if (url.host != account.host) {
        try {
          await ref
              .read(emojisNotifierProvider(url.host).notifier)
              .reloadEmojis();
          if (!ref.context.mounted) return;
          await ref.context.push('/${url.host}${url.path}');
        } catch (_) {
          await launchUrl(ref, url);
        }
      } else {
        await ref.context.push('/$account${url.path}');
      }
    } else {
      await launchUrl(ref, url);
    }
  }
}
