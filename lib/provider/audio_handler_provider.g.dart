// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_handler_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(audioHandler)
const audioHandlerProvider = AudioHandlerProvider._();

final class AudioHandlerProvider
    extends
        $FunctionalProvider<
          AsyncValue<AudioHandler>,
          AudioHandler,
          FutureOr<AudioHandler>
        >
    with $FutureModifier<AudioHandler>, $FutureProvider<AudioHandler> {
  const AudioHandlerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'audioHandlerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$audioHandlerHash();

  @$internal
  @override
  $FutureProviderElement<AudioHandler> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AudioHandler> create(Ref ref) {
    return audioHandler(ref);
  }
}

String _$audioHandlerHash() => r'cb3558d0b718a886914349508659c01a5c803db5';
