import 'dart:async';
import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/account.dart';
import 'web_socket_channel_provider.dart';

part 'note_subscription_notifier_provider.g.dart';

@Riverpod(keepAlive: true)
class NoteSubscriptionNotifier extends _$NoteSubscriptionNotifier {
  @override
  Map<String, int> build(Account account) {
    final timer = Timer.periodic(
      const Duration(seconds: 10),
      (_) => _unsubscribeDanglingNotes(),
    );
    ref.onDispose(() => timer.cancel());
    return {};
  }

  WebSocketChannel get _webSocketChannel =>
      ref.read(webSocketChannelProvider(account));

  Future<void> _subNote(String noteId) async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 's',
        'body': {'id': noteId},
      }),
    );
  }

  Future<void> _unsubNote(String noteId) async {
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'un',
        'body': {'id': noteId},
      }),
    );
  }

  void subscribe(String noteId) {
    final refCount = state[noteId] ?? 0;
    if (refCount == 0) {
      _subNote(noteId);
    }
    state = {...state, noteId: refCount + 1};
  }

  void unsubscribe(String noteId) {
    final refCount = state[noteId];
    if (refCount != null) {
      state = {...state, noteId: refCount - 1};
    }
  }

  void _unsubscribeDanglingNotes() {
    state.forEach((noteId, count) {
      if (count < 1) {
        _unsubNote(noteId);
      }
    });
    state = {
      for (final e in state.entries)
        if (e.value > 0) e.key: e.value,
    };
  }

  void unsubscribeAll() {
    for (final noteId in state.keys) {
      _unsubNote(noteId);
    }
  }
}
