// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_audio_player_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(_audioContext)
final _audioContextProvider = _AudioContextProvider._();

final class _AudioContextProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  _AudioContextProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_audioContextProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$_audioContextHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return _audioContext(ref);
  }
}

String _$_audioContextHash() => r'f1200da5ff304e736a6809ec8d0a24440f2f7944';

@ProviderFor(AssetAudioPlayerNotifier)
final assetAudioPlayerNotifierProvider = AssetAudioPlayerNotifierFamily._();

final class AssetAudioPlayerNotifierProvider
    extends $AsyncNotifierProvider<AssetAudioPlayerNotifier, AudioPlayer> {
  AssetAudioPlayerNotifierProvider._({
    required AssetAudioPlayerNotifierFamily super.from,
    required (String, double) super.argument,
  }) : super(
         retry: null,
         name: r'assetAudioPlayerNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$assetAudioPlayerNotifierHash();

  @override
  String toString() {
    return r'assetAudioPlayerNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  AssetAudioPlayerNotifier create() => AssetAudioPlayerNotifier();

  @override
  bool operator ==(Object other) {
    return other is AssetAudioPlayerNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$assetAudioPlayerNotifierHash() =>
    r'a3cba06e92f935db96312f1ae3f730a756c81481';

final class AssetAudioPlayerNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          AssetAudioPlayerNotifier,
          AsyncValue<AudioPlayer>,
          AudioPlayer,
          FutureOr<AudioPlayer>,
          (String, double)
        > {
  AssetAudioPlayerNotifierFamily._()
    : super(
        retry: null,
        name: r'assetAudioPlayerNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AssetAudioPlayerNotifierProvider call(String asset, double volume) =>
      AssetAudioPlayerNotifierProvider._(argument: (asset, volume), from: this);

  @override
  String toString() => r'assetAudioPlayerNotifierProvider';
}

abstract class _$AssetAudioPlayerNotifier extends $AsyncNotifier<AudioPlayer> {
  late final _$args = ref.$arg as (String, double);
  String get asset => _$args.$1;
  double get volume => _$args.$2;

  FutureOr<AudioPlayer> build(String asset, double volume);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AudioPlayer>, AudioPlayer>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AudioPlayer>, AudioPlayer>,
              AsyncValue<AudioPlayer>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
