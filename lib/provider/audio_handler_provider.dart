import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_handler_provider.g.dart';

@Riverpod(keepAlive: true)
AudioHandler audioHandler(AudioHandlerRef ref) {
  throw UnsupportedError('not overrided');
}

@riverpod
Stream<MediaItem?> mediaItem(MediaItemRef ref) {
  return ref.watch(audioHandlerProvider).mediaItem.distinct();
}

@riverpod
Stream<PlaybackState> playbackState(PlaybackStateRef ref) {
  return ref.watch(audioHandlerProvider).playbackState.distinct();
}

@riverpod
Stream<Duration> position(PositionRef ref) {
  return AudioService.position.distinct().map((event) {
    return event;
  });
}

class AudioPlayerHandler extends BaseAudioHandler with SeekHandler {
  final _player = AudioPlayer();

  AudioPlayerHandler() {
    _player.playbackEventStream.map(_transformEvent).pipe(this.playbackState);
  }

  @override
  Future<void> play() async {
    await _player.play();
  }

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> stop() => _player.stop();

  @override
  Future<void> updateMediaItem(MediaItem item) async {
    await _player.setAudioSource(AudioSource.uri(Uri.parse(item.id)));
    this.mediaItem.value = item.copyWith(duration: _player.duration);
  }

  PlaybackState _transformEvent(PlaybackEvent event) {
    return PlaybackState(
      controls: [
        MediaControl.rewind,
        if (_player.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
        MediaControl.fastForward,
      ],
      systemActions: const {
        MediaAction.seek,
        MediaAction.seekForward,
        MediaAction.seekBackward,
      },
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      queueIndex: event.currentIndex,
    );
  }
}
