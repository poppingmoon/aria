// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoritesNotifier)
const favoritesNotifierProvider = FavoritesNotifierFamily._();

final class FavoritesNotifierProvider
    extends
        $StreamNotifierProvider<
          FavoritesNotifier,
          PaginationState<IFavoritesResponse>
        > {
  const FavoritesNotifierProvider._({
    required FavoritesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'favoritesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoritesNotifierHash();

  @override
  String toString() {
    return r'favoritesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FavoritesNotifier create() => FavoritesNotifier();

  @override
  bool operator ==(Object other) {
    return other is FavoritesNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoritesNotifierHash() => r'1bfdc86f43e7b6d453689086cce38614ec318a87';

final class FavoritesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          FavoritesNotifier,
          AsyncValue<PaginationState<IFavoritesResponse>>,
          PaginationState<IFavoritesResponse>,
          Stream<PaginationState<IFavoritesResponse>>,
          Account
        > {
  const FavoritesNotifierFamily._()
    : super(
        retry: null,
        name: r'favoritesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoritesNotifierProvider call(Account account) =>
      FavoritesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'favoritesNotifierProvider';
}

abstract class _$FavoritesNotifier
    extends $StreamNotifier<PaginationState<IFavoritesResponse>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  Stream<PaginationState<IFavoritesResponse>> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PaginationState<IFavoritesResponse>>,
              PaginationState<IFavoritesResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<IFavoritesResponse>>,
                PaginationState<IFavoritesResponse>
              >,
              AsyncValue<PaginationState<IFavoritesResponse>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
