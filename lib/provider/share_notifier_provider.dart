import 'package:collection/collection.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../i18n/strings.g.dart';
import '../model/account.dart';
import '../model/post_file.dart';
import '../util/show_toast.dart';
import 'accounts_notifier_provider.dart';
import 'api/attaches_notifier_provider.dart';
import 'file_system_provider.dart';
import 'miauth_notifier_provider.dart';
import 'misskey_servers_provider.dart';
import 'post_notifier_provider.dart';
import 'receive_sharing_intent_provider.dart';

part 'share_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class ShareNotifier extends _$ShareNotifier {
  @override
  bool build() {
    return false;
  }

  void markShouldRedirect() {
    state = true;
  }

  Future<String?> redirect() async {
    if (!state) {
      return null;
    }
    await Future(() => state = false);

    final sharedFiles = await ref.read(receiveSharingIntentProvider.future);
    if (sharedFiles.isNotEmpty) {
      if (sharedFiles.singleOrNull?.type == SharedMediaType.url) {
        final url = Uri.parse(sharedFiles.single.path);
        if (url.scheme == 'aria') {
          if (url.path == '/miauth') {
            final result = await ref
                .read(miAuthNotifierProvider.notifier)
                .check();
            if (result.added case final added?) {
              showToast(
                context: null,
                message: added
                    ? t.aria.accountAdded
                    : t.aria.accessTokenUpdated,
              );
            }
            if (result.success) {
              return '/timelines';
            } else {
              return '/login/authenticate';
            }
          }
          return url.path;
        } else {
          final account = ref
              .read(accountsNotifierProvider)
              .firstWhereOrNull((account) => account.host == url.host);
          if (account != null) {
            return '/$account/${url.pathSegments.join('/')}';
          }
          final servers = await ref.read(misskeyServersProvider.future);
          if (servers.any((server) => server.url == url.host)) {
            return '/${url.host}/${url.pathSegments.join('/')}';
          }
        }
      }

      final accounts = ref.read(accountsNotifierProvider);
      if (accounts.singleOrNull case final account?) {
        await share(account);
        return '/$account/post';
      } else {
        return '/share';
      }
    }

    return null;
  }

  Future<void> share(Account account) async {
    final received = await ref.read(receiveSharingIntentProvider.future);
    final text = <String>[];
    final files = <PostFile>[];
    for (final file in received) {
      switch (file.type) {
        case SharedMediaType.text || SharedMediaType.url:
          text.add(file.path);
        case SharedMediaType.image ||
            SharedMediaType.video ||
            SharedMediaType.file:
          files.add(
            LocalPostFile.fromFile(
              ref.read(fileSystemProvider).file(file.path),
            ),
          );
      }
      if (file case SharedMediaFile(:final message?)) {
        text.add(message);
      }
    }
    if (text.isNotEmpty) {
      ref.read(postNotifierProvider(account).notifier).setText(text.join(' '));
    }
    if (files.isNotEmpty) {
      ref.read(attachesNotifierProvider(account).notifier).addAll(files);
    }
  }
}
