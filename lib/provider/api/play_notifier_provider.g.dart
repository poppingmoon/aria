// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PlayNotifier)
const playNotifierProvider = PlayNotifierFamily._();

final class PlayNotifierProvider
    extends $AsyncNotifierProvider<PlayNotifier, Flash> {
  const PlayNotifierProvider._({
    required PlayNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'playNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$playNotifierHash();

  @override
  String toString() {
    return r'playNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  PlayNotifier create() => PlayNotifier();

  @override
  bool operator ==(Object other) {
    return other is PlayNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$playNotifierHash() => r'ec7ef621e35d61afc2945004a9105aaf588ae1b9';

final class PlayNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          PlayNotifier,
          AsyncValue<Flash>,
          Flash,
          FutureOr<Flash>,
          (Account, String)
        > {
  const PlayNotifierFamily._()
    : super(
        retry: null,
        name: r'playNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PlayNotifierProvider call(Account account, String playId) =>
      PlayNotifierProvider._(argument: (account, playId), from: this);

  @override
  String toString() => r'playNotifierProvider';
}

abstract class _$PlayNotifier extends $AsyncNotifier<Flash> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get playId => _$args.$2;

  FutureOr<Flash> build(Account account, String playId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2);
    final ref = this.ref as $Ref<AsyncValue<Flash>, Flash>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Flash>, Flash>,
              AsyncValue<Flash>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
