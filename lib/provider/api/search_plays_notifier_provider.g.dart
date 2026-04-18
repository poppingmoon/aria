// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_plays_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchPlaysNotifier)
final searchPlaysNotifierProvider = SearchPlaysNotifierFamily._();

final class SearchPlaysNotifierProvider
    extends
        $StreamNotifierProvider<SearchPlaysNotifier, PaginationState<Flash>> {
  SearchPlaysNotifierProvider._({
    required SearchPlaysNotifierFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'searchPlaysNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchPlaysNotifierHash();

  @override
  String toString() {
    return r'searchPlaysNotifierProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SearchPlaysNotifier create() => SearchPlaysNotifier();

  @override
  bool operator ==(Object other) {
    return other is SearchPlaysNotifierProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchPlaysNotifierHash() =>
    r'c8b5cc6131718a6c07fe25e7e15807db211b4aee';

final class SearchPlaysNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchPlaysNotifier,
          AsyncValue<PaginationState<Flash>>,
          PaginationState<Flash>,
          Stream<PaginationState<Flash>>,
          (Account, String)
        > {
  SearchPlaysNotifierFamily._()
    : super(
        retry: null,
        name: r'searchPlaysNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchPlaysNotifierProvider call(Account account, String query) =>
      SearchPlaysNotifierProvider._(argument: (account, query), from: this);

  @override
  String toString() => r'searchPlaysNotifierProvider';
}

abstract class _$SearchPlaysNotifier
    extends $StreamNotifier<PaginationState<Flash>> {
  late final _$args = ref.$arg as (Account, String);
  Account get account => _$args.$1;
  String get query => _$args.$2;

  Stream<PaginationState<Flash>> build(Account account, String query);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<PaginationState<Flash>>, PaginationState<Flash>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PaginationState<Flash>>,
                PaginationState<Flash>
              >,
              AsyncValue<PaginationState<Flash>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args.$1, _$args.$2));
  }
}
