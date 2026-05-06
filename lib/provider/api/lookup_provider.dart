import 'dart:async';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/account.dart';
import '../../model/lookup.dart';
import '../note_notifier_provider.dart';
import '../notes_notifier_provider.dart';
import '../server_url_notifier_provider.dart';
import 'misskey_provider.dart';
import 'user_notifier_provider.dart';

part 'lookup_provider.g.dart';

@riverpod
FutureOr<Lookup> lookup(Ref ref, Account account, String url) async {
  final link = ref.keepAlive();
  Timer? timer;
  ref.onCancel(() => timer = Timer(const Duration(minutes: 5), link.close));
  ref.onResume(() => timer?.cancel());
  ref.onDispose(() => timer?.cancel());
  final targetUrl = Uri.tryParse(url);
  final serverUrl = ref.watch(serverUrlNotifierProvider(account.host));
  try {
    if (serverUrl.authority.toLowerCase() ==
        targetUrl?.authority.toLowerCase()) {
      switch (targetUrl?.pathSegments.firstOrNull) {
        case 'users':
          if (targetUrl?.pathSegments.elementAtOrNull(1) case final userId?) {
            final user = await ref.watch(
              userNotifierProvider(account, userId: userId).future,
            );
            return Lookup.user(user);
          }
        case 'notes':
          if (targetUrl?.pathSegments.elementAtOrNull(1) case final noteId?) {
            final note =
                ref.watch(noteNotifierProvider(account, noteId)) ??
                await ref
                    .read(notesNotifierProvider(account).notifier)
                    .show(noteId);
            return Lookup.note(note);
          }
        case final acct? when acct.startsWith('@'):
          final l = acct.substring(1).split('@');
          final user = await ref.watch(
            userNotifierProvider(
              account,
              username: l.first,
              host: l.elementAtOrNull(1),
            ).future,
          );
          return Lookup.user(user);
      }
    }
    final response = await ref
        .read(misskeyProvider(account))
        .ap
        .show(ApShowRequest(uri: url));
    if (response.type == 'User') {
      return Lookup.user(UserDetailed.fromJson(response.object));
    } else {
      final note = Note.fromJson(response.object);
      ref.read(notesNotifierProvider(account).notifier).add(note);
      return Lookup.note(note);
    }
  } catch (_) {
    switch (targetUrl?.pathSegments.firstOrNull) {
      case 'notes' || 'users':
      case final acct? when acct.startsWith('@'):
        link.close();
    }
    rethrow;
  }
}
