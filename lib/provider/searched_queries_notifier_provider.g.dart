// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_queries_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchedQueriesNotifier)
final searchedQueriesNotifierProvider = SearchedQueriesNotifierFamily._();

final class SearchedQueriesNotifierProvider
    extends $NotifierProvider<SearchedQueriesNotifier, List<String>> {
  SearchedQueriesNotifierProvider._({
    required SearchedQueriesNotifierFamily super.from,
    required Account super.argument,
  }) : super(
         retry: null,
         name: r'searchedQueriesNotifierProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchedQueriesNotifierHash();

  @override
  String toString() {
    return r'searchedQueriesNotifierProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  SearchedQueriesNotifier create() => SearchedQueriesNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SearchedQueriesNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchedQueriesNotifierHash() =>
    r'1b32cc72895e422e8c03d9d0d97566a3917fc46a';

final class SearchedQueriesNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          SearchedQueriesNotifier,
          List<String>,
          List<String>,
          List<String>,
          Account
        > {
  SearchedQueriesNotifierFamily._()
    : super(
        retry: null,
        name: r'searchedQueriesNotifierProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchedQueriesNotifierProvider call(Account account) =>
      SearchedQueriesNotifierProvider._(argument: account, from: this);

  @override
  String toString() => r'searchedQueriesNotifierProvider';
}

abstract class _$SearchedQueriesNotifier extends $Notifier<List<String>> {
  late final _$args = ref.$arg as Account;
  Account get account => _$args;

  List<String> build(Account account);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<List<String>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<String>, List<String>>,
              List<String>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
