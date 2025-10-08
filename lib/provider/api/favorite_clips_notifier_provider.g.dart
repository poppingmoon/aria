// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_clips_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoriteClipsNotifier)
const favoriteClipsNotifierProvider = FavoriteClipsNotifierFamily._();

final class FavoriteClipsNotifierProvider
    extends $AsyncNotifierProvider<FavoriteClipsNotifier, List<Clip>> {
  const FavoriteClipsNotifierProvider._({
    required FavoriteClipsNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'favoriteClipsNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteClipsNotifierHash();

  @override
  String toString() {
    return r'favoriteClipsNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FavoriteClipsNotifier create() => FavoriteClipsNotifier();

  @override
  bool operator ==(Object other) {
    return other is FavoriteClipsNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteClipsNotifierHash() =>
    r'5173544d0d712afe6ae8802dc167310a61160f8f';

final class FavoriteClipsNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FavoriteClipsNotifier,
          AsyncValue<List<Clip>>,
          List<Clip>,
          FutureOr<List<Clip>>,
          Account
        > {
  const FavoriteClipsNotifierFamily._()
    : super(
        retry: null,
        name: r'favoriteClipsNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteClipsNotifierProvider call(Account account) =>
      FavoriteClipsNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'favoriteClipsNotifierProvider';
}

abstract class _$FavoriteClipsNotifier extends $AsyncNotifier<List<Clip>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  FutureOr<List<Clip>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Clip>>, List<Clip>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Clip>>, List<Clip>>,
              AsyncValue<List<Clip>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
