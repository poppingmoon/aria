import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/main_event.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../notes_notifier_provider.dart';
import 'incoming_message_provider.dart';
import 'main_stream_notifier_provider.dart';
import 'web_socket_channel_provider.dart';

part 'timeline_stream_notifier.g.dart';

@riverpod
class TimelineStreamNotifier extends _$TimelineStreamNotifier {
  @override
  Stream<Note> build(TabSettings tabSettings) async* {
    switch (tabSettings.tabType) {
      case TabType.homeTimeline ||
          TabType.localTimeline ||
          TabType.hybridTimeline ||
          TabType.globalTimeline ||
          TabType.roleTimeline ||
          TabType.userList ||
          TabType.antenna ||
          TabType.channel ||
          TabType.hashtag ||
          TabType.custom:
        ref.listen(
          webSocketChannelProvider(tabSettings.account),
          (_, _) => connect(),
        );
        final message = await ref.watch(
          incomingMessageProvider(tabSettings.account).future,
        );
        if (message.type == IncomingMessageType.channel &&
            message.body['id'] == _id) {
          final event = message.body;
          if (event['type'] == 'note') {
            final note = Note.fromJson(event['body'] as Map<String, dynamic>);
            ref
                .read(notesNotifierProvider(tabSettings.account).notifier)
                .add(note);
            yield note;
          }
        }
      case TabType.mention || TabType.direct:
        final event = await ref.watch(
          mainStreamNotifierProvider(tabSettings.account).future,
        );
        if (event case Mention(:final note)) {
          if (tabSettings.tabType == TabType.mention ||
              note.visibility == NoteVisibility.specified) {
            yield note;
          }
        }
      case TabType.user || TabType.notifications:
        return;
    }
  }

  String get _id => tabSettings.id ?? tabSettings.tabType.toString();

  WebSocketChannel get _webSocketChannel =>
      ref.read(webSocketChannelProvider(tabSettings.account)).$1;

  Future<void> connect() async {
    switch (tabSettings.tabType) {
      case TabType.homeTimeline ||
          TabType.localTimeline ||
          TabType.hybridTimeline ||
          TabType.globalTimeline ||
          TabType.roleTimeline ||
          TabType.userList ||
          TabType.antenna ||
          TabType.hashtag ||
          TabType.channel:
        await _webSocketChannel.ready;
        _webSocketChannel.sink.add(
          jsonEncode({
            'type': 'connect',
            'body': {
              'channel': tabSettings.tabType.name,
              'id': _id,
              'params': {
                if (!tabSettings.withRenotes) 'withRenotes': false,
                if (tabSettings.withReplies) 'withRenotes': true,
                if (tabSettings.withFiles) 'withFiles': true,
                'roleId': ?tabSettings.roleId,
                'channelId': ?tabSettings.channelId,
                'listId': ?tabSettings.listId,
                'antennaId': ?tabSettings.antennaId,
                if (tabSettings.hashtag case final hashtag?)
                  'q': [
                    [hashtag],
                  ],
              },
            },
          }),
        );
      case TabType.mention || TabType.direct:
        return ref
            .read(mainStreamNotifierProvider(tabSettings.account).notifier)
            .connect();
      case TabType.user || TabType.notifications:
        return;
      case TabType.custom:
        if (tabSettings case TabSettings(:final streamingChannel?)) {
          await _webSocketChannel.ready;
          _webSocketChannel.sink.add(
            jsonEncode({
              'type': 'connect',
              'body': {
                'channel': streamingChannel,
                'id': _id,
                'params': {
                  if (!tabSettings.withRenotes) 'withRenotes': false,
                  if (tabSettings.withReplies) 'withRenotes': true,
                  if (tabSettings.withFiles) 'withFiles': true,
                  ...?tabSettings.parameters,
                },
              },
            }),
          );
        }
        return;
    }
  }

  Future<void> disconnect() async {
    if (tabSettings.tabType
        case TabType.mention || TabType.direct || TabType.user) {
      return;
    }
    await _webSocketChannel.ready;
    _webSocketChannel.sink.add(
      jsonEncode({
        'type': 'disconnect',
        'body': {'id': _id},
      }),
    );
  }
}
