import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dart/misskey_dart.dart';

import '../../extension/user_extension.dart';
import '../../model/account.dart';
import '../../provider/audio_handler_provider.dart';
import '../widget/user_avatar.dart';

class AudioDialog extends HookConsumerWidget {
  const AudioDialog({
    super.key,
    required this.account,
    required this.file,
    this.user,
  });

  final Account account;
  final DriveFile file;
  final User? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audioHandler = ref.watch(audioHandlerProvider);
    final mediaItem = ref.watch(mediaItemProvider);
    final playbackState = ref.watch(playbackStateProvider);
    final position = ref.watch(positionProvider);
    final user = this.user ?? file.user;
    useEffect(
      () {
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
          await audioHandler.play();
        });
        return audioHandler.valueOrNull?.stop;
      },
      [],
    );

    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (user != null)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8.0),
                    child: UserAvatar(
                      account: account,
                      user: user,
                      size: 30,
                      onTap: () => context.push('/$account/users/${user.id}'),
                    ),
                  ),
                Expanded(child: Text(mediaItem.valueOrNull?.title ?? '')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: audioHandler.valueOrNull?.rewind,
                  icon: const Icon(Icons.fast_rewind),
                ),
                if (playbackState.valueOrNull?.playing ?? false)
                  IconButton(
                    onPressed: audioHandler.valueOrNull?.pause,
                    icon: const Icon(Icons.pause),
                  )
                else
                  IconButton(
                    onPressed: audioHandler.valueOrNull?.play,
                    icon: const Icon(Icons.play_arrow),
                  ),
                IconButton(
                  onPressed: audioHandler.valueOrNull?.fastForward,
                  icon: const Icon(Icons.fast_forward),
                ),
              ],
            ),
            ProgressBar(
              progress: position.valueOrNull ?? Duration.zero,
              total: mediaItem.valueOrNull?.duration ?? Duration.zero,
              onSeek: audioHandler.valueOrNull?.seek,
            ),
          ],
        ),
      ),
    );
  }
}
