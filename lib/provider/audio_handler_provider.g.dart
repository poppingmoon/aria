// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_handler_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioHandlerHash() => r'094da1b238c0ae0b0342e3c0454e165ed1fdec73';

/// See also [audioHandler].
@ProviderFor(audioHandler)
final audioHandlerProvider = FutureProvider<AudioHandler>.internal(
  audioHandler,
  name: r'audioHandlerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioHandlerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AudioHandlerRef = FutureProviderRef<AudioHandler>;
String _$mediaItemHash() => r'1c17a5fbde67766fb9727bf628c013b1caf189a4';

/// See also [mediaItem].
@ProviderFor(mediaItem)
final mediaItemProvider = AutoDisposeStreamProvider<MediaItem?>.internal(
  mediaItem,
  name: r'mediaItemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mediaItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MediaItemRef = AutoDisposeStreamProviderRef<MediaItem?>;
String _$playbackStateHash() => r'd5f6138c11c77919fb8a44d6d1e9d9825c4ccf43';

/// See also [playbackState].
@ProviderFor(playbackState)
final playbackStateProvider = AutoDisposeStreamProvider<PlaybackState>.internal(
  playbackState,
  name: r'playbackStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$playbackStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PlaybackStateRef = AutoDisposeStreamProviderRef<PlaybackState>;
String _$positionHash() => r'0825ac909ee5c910d2dc9784b640b3fd67e56ec3';

/// See also [position].
@ProviderFor(position)
final positionProvider = AutoDisposeStreamProvider<Duration>.internal(
  position,
  name: r'positionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$positionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PositionRef = AutoDisposeStreamProviderRef<Duration>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
