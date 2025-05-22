// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_handler_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$audioHandlerHash() => r'5f474609ac9d7823ac48789e6107b172fbb913f1';

/// See also [audioHandler].
@ProviderFor(audioHandler)
final audioHandlerProvider = FutureProvider<AudioHandler>.internal(
  audioHandler,
  name: r'audioHandlerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$audioHandlerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AudioHandlerRef = FutureProviderRef<AudioHandler>;
String _$mediaItemHash() => r'23c018b59c06e00e9f1b34f13791e53c5c9064f8';

/// See also [mediaItem].
@ProviderFor(mediaItem)
final mediaItemProvider = AutoDisposeStreamProvider<MediaItem?>.internal(
  mediaItem,
  name: r'mediaItemProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mediaItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MediaItemRef = AutoDisposeStreamProviderRef<MediaItem?>;
String _$playbackStateHash() => r'0aa248311c0295f344cc3b89b8251a73c6a4b23f';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PlaybackStateRef = AutoDisposeStreamProviderRef<PlaybackState>;
String _$positionHash() => r'6b3e5fe93d6200af6cfbeb6f55f99833b788182e';

/// See also [position].
@ProviderFor(position)
final positionProvider = AutoDisposeStreamProvider<Duration>.internal(
  position,
  name: r'positionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$positionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PositionRef = AutoDisposeStreamProviderRef<Duration>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
