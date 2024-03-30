// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_handler_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioHandlerHash() => r'5328f87d476b522218a646bb16a298358278c695';

/// See also [audioHandler].
@ProviderFor(audioHandler)
final audioHandlerProvider = Provider<AudioHandler>.internal(
  audioHandler,
  name: r'audioHandlerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioHandlerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AudioHandlerRef = ProviderRef<AudioHandler>;
String _$mediaItemHash() => r'0088fc81e2aed5bbac8caa728a852cf8b45c0c13';

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
String _$playbackStateHash() => r'ad9879cad39de56a754ed692e090ed1d29edcc1f';

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
String _$positionHash() => r'f4e864f2fafa455ca0c7c67c45360189af139902';

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
