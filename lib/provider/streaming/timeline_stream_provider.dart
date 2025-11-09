import 'dart:async';
import 'dart:convert';

import 'package:misskey_dart/misskey_dart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/streaming/incoming_message.dart';
import '../../model/streaming/main_event.dart';
import '../../model/tab_settings.dart';
import '../../model/tab_type.dart';
import '../notes_notifier_provider.dart';
import 'incoming_message_provider.dart';
import 'main_stream_provider.dart';
import 'web_socket_channel_provider.dart';

part 'timeline_stream_provider.g.dart';

@riverpod
FutureOr<String> _timelineStreamConnection(
  Ref ref,
  TabSettings tabSettings,
) async {
  final id = tabSettings.id ?? tabSettings.tabType.toString();
  switch (tabSettings.tabType) {
    case TabType.homeTimeline ||
        TabType.localTimeline ||
        TabType.hybridTimeline ||
        TabType.globalTimeline ||
        TabType.roleTimeline ||
        TabType.userList ||
        TabType.antenna ||
        TabType.channel ||
        TabType.hashtag:
      final webSocketChannel = (await ref.watch(
        webSocketChannelProvider(tabSettings.account).future,
      )).$1;
      webSocketChannel.sink.add(
        jsonEncode({
          'type': 'connect',
          'body': {
            'channel': tabSettings.tabType.name,
            'id': id,
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
      ref.onDispose(() {
        if (webSocketChannel.closeCode == null) {
          webSocketChannel.sink.add(
            jsonEncode({
              'type': 'disconnect',
              'body': {'id': id},
            }),
          );
        }
      });
    case TabType.mention ||
        TabType.direct ||
        TabType.user ||
        TabType.notifications:
      break;
    case TabType.custom:
      if (tabSettings case TabSettings(:final streamingChannel?)) {
        final webSocketChannel = (await ref.watch(
          webSocketChannelProvider(tabSettings.account).future,
        )).$1;
        webSocketChannel.sink.add(
          jsonEncode({
            'type': 'connect',
            'body': {
              'channel': streamingChannel,
              'id': id,
              'params': {
                if (!tabSettings.withRenotes) 'withRenotes': false,
                if (tabSettings.withReplies) 'withRenotes': true,
                if (tabSettings.withFiles) 'withFiles': true,
                ...?tabSettings.parameters,
              },
            },
          }),
        );
        ref.onDispose(() {
          if (webSocketChannel.closeCode == null) {
            webSocketChannel.sink.add(
              jsonEncode({
                'type': 'disconnect',
                'body': {'id': id},
              }),
            );
          }
        });
      }
  }
  return id;
}

@riverpod
Stream<Note> timelineStream(Ref ref, TabSettings tabSettings) async* {
  final controller = StreamController<Note>();
  switch (tabSettings.tabType) {
    case TabType.homeTimeline ||
        TabType.localTimeline ||
        TabType.hybridTimeline ||
        TabType.globalTimeline ||
        TabType.roleTimeline ||
        TabType.userList ||
        TabType.antenna ||
        TabType.hashtag ||
        TabType.channel ||
        TabType.custom:
      final id = await ref.watch(
        _timelineStreamConnectionProvider(tabSettings).future,
      );
      ref.listen(incomingMessageProvider(tabSettings.account), (prev, next) {
        if (next case AsyncData(value: final message)) {
          if (prev?.value != message) {
            if (message.type == IncomingMessageType.channel &&
                message.body['id'] == id) {
              if (message.body case {
                'type': 'note',
                'body': final Map<String, dynamic> body,
              }) {
                final note = Note.fromJson(body);
                ref
                    .read(notesNotifierProvider(tabSettings.account).notifier)
                    .add(note);
                controller.sink.add(note);
              }
            }
          }
        }
      });
    case TabType.mention || TabType.direct:
      ref.listen(mainStreamProvider(tabSettings.account), (prev, next) {
        if (next case AsyncData(value: final event)) {
          if (event case Mention(:final note) when prev?.value != event) {
            if (tabSettings.tabType == TabType.mention ||
                note.visibility == NoteVisibility.specified) {
              controller.sink.add(note);
            }
          }
        }
      });
    case TabType.user || TabType.notifications:
  }
  yield* controller.stream;
}
