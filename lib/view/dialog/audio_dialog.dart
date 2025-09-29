import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';
import 'package:video_player/video_player.dart';

import '../../extension/user_extension.dart';
import '../../hook/video_player_controller_hook.dart';
import '../../i18n/strings.g.dart';
import '../../model/account.dart';
import '../../provider/audio_handler_provider.dart';
import '../widget/user_avatar.dart';

class AudioDialog extends HookConsumerWidget {
  const AudioDialog({
    super.key,
    required this.account,
    required this.file,
    this.user,
    this.noteId,
  });

  final Account account;
  final DriveFile file;
  final User? user;
  final String? noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = this.user ?? file.user;

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: switch (defaultTargetPlatform) {
          TargetPlatform.android ||
          TargetPlatform.iOS ||
          TargetPlatform.macOS => _AudioWidget(
            account: account,
            file: file,
            user: user,
            noteId: noteId,
          ),
          _ => _VideoPlayerAudioWidget(
            account: account,
            file: file,
            user: user,
            noteId: noteId,
          ),
        },
      ),
    );
  }
}

class _AudioWidget extends HookConsumerWidget {
  const _AudioWidget({
    required this.account,
    required this.file,
    this.user,
    this.noteId,
  });

  final Account account;
  final DriveFile file;
  final User? user;
  final String? noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioHandler = ref.watch(audioHandlerProvider).valueOrNull;
    final mediaItem = audioHandler?.mediaItem.valueOrNull;
    final playbackState = useStream(
      audioHandler?.playbackState ?? const Stream<PlaybackState>.empty(),
    ).data;
    final initializing = useState(true);
    final position = useStream(
      initializing.value
          ? const Stream<Duration>.empty()
          : AudioService.position,
    ).data;
    useEffect(() {
      Future(() async {
        final audioHandler = await ref.read(audioHandlerProvider.future);
        await audioHandler.updateMediaItem(
          MediaItem(
            id: file.url,
            title: file.name,
            artist: user?.nameOrUsername,
            artUri: user?.avatarUrl,
          ),
        );
        initializing.value = false;
        await audioHandler.play();
      });
      return () => audioHandler?.stop();
    }, []);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (user case final user?)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8.0),
                child: UserAvatar(
                  account: account,
                  user: user,
                  size: 30,
                  onTap: () => context.push('/$account/users/${user.id}'),
                ),
              ),
            Expanded(child: Text(mediaItem?.title ?? file.name)),
            if (noteId case final noteId?)
              IconButton(
                tooltip: t.aria.showNote,
                onPressed: () {
                  audioHandler?.pause();
                  context.push('/$account/notes/$noteId');
                },
                icon: const Icon(Icons.open_in_new),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: audioHandler?.rewind,
              icon: const Icon(Icons.fast_rewind),
            ),
            if (initializing.value)
              const Center(child: CircularProgressIndicator())
            else if (playbackState?.processingState ==
                AudioProcessingState.completed)
              IconButton(
                onPressed: () => audioHandler?.seek(Duration.zero),
                icon: const Icon(Icons.play_arrow),
              )
            else if (playbackState?.playing ?? false)
              IconButton(
                onPressed: audioHandler?.pause,
                icon: const Icon(Icons.pause),
              )
            else
              IconButton(
                onPressed: audioHandler?.play,
                icon: const Icon(Icons.play_arrow),
              ),
            IconButton(
              onPressed: audioHandler?.fastForward,
              icon: const Icon(Icons.fast_forward),
            ),
          ],
        ),
        ProgressBar(
          progress: position ?? Duration.zero,
          buffered: playbackState?.bufferedPosition,
          total: mediaItem?.duration ?? Duration.zero,
          onSeek: audioHandler?.seek,
        ),
      ],
    );
  }
}

class _VideoPlayerAudioWidget extends HookWidget {
  const _VideoPlayerAudioWidget({
    required this.account,
    required this.file,
    this.user,
    this.noteId,
  });

  final Account account;
  final DriveFile file;
  final User? user;
  final String? noteId;

  @override
  Widget build(BuildContext context) {
    final videoPlayerController = useVideoPlayerController(
      url: Uri.tryParse(file.url),
      autoPlay: true,
    );
    final videoPlayerValue = useValueListenable(
      videoPlayerController ??
          ValueNotifier(const VideoPlayerValue.uninitialized()),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (user case final user?)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8.0),
                child: UserAvatar(
                  account: account,
                  user: user,
                  size: 30,
                  onTap: () => context.push('/$account/users/${user.id}'),
                ),
              ),
            Expanded(child: Text(file.name)),
            if (noteId case final noteId?)
              IconButton(
                tooltip: t.aria.showNote,
                onPressed: () {
                  videoPlayerController?.pause();
                  context.push('/$account/notes/$noteId');
                },
                icon: const Icon(Icons.open_in_new),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {
                if (videoPlayerValue.isCompleted) {
                  await videoPlayerController?.play();
                }
                await videoPlayerController?.seekTo(
                  videoPlayerValue.position - const Duration(seconds: 10),
                );
              },
              icon: const Icon(Icons.fast_rewind),
            ),
            if (videoPlayerController == null)
              const Center(child: CircularProgressIndicator())
            else if (videoPlayerValue.isPlaying)
              IconButton(
                onPressed: videoPlayerController.pause,
                icon: const Icon(Icons.pause),
              )
            else
              IconButton(
                onPressed: videoPlayerController.play,
                icon: const Icon(Icons.play_arrow),
              ),
            IconButton(
              onPressed: () => videoPlayerController?.seekTo(
                videoPlayerValue.position + const Duration(seconds: 10),
              ),
              icon: const Icon(Icons.fast_forward),
            ),
          ],
        ),
        ProgressBar(
          progress: videoPlayerValue.position,
          total: videoPlayerValue.duration,
          buffered: videoPlayerValue.buffered.fold<Duration>(
            Duration.zero,
            (acc, value) => acc < value.end ? value.end : acc,
          ),
          onSeek: (position) async {
            if (videoPlayerValue.isCompleted) {
              await videoPlayerController?.play();
            }
            await videoPlayerController?.seekTo(position);
          },
        ),
      ],
    );
  }
}
