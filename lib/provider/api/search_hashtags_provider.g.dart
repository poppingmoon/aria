// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_hashtags_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchHashtags)
final searchHashtagsProvider = SearchHashtagsFamily._();

final class SearchHashtagsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  SearchHashtagsProvider._({
    required SearchHashtagsFamily super.from,
    required (Account, String) super.argument,
  }) : super(
         retry: null,
         name: r'searchHashtagsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchHashtagsHash();

  @override
  String toString() {
    return r'searchHashtagsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    final argument = this.argument as (Account, String);
    return searchHashtags(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchHashtagsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchHashtagsHash() => r'66e02a032f6fff9930f0d6ebf3697308e2f97799';

final class SearchHashtagsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<String>>, (Account, String)> {
  SearchHashtagsFamily._()
    : super(
        retry: null,
        name: r'searchHashtagsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchHashtagsProvider call(Account account, String query) =>
      SearchHashtagsProvider._(argument: (account, query), from: this);

  @override
  String toString() => r'searchHashtagsProvider';
}
