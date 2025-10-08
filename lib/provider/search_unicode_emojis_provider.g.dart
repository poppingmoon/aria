// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_unicode_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchUnicodeEmojis)
const searchUnicodeEmojisProvider = SearchUnicodeEmojisFamily._();

final class SearchUnicodeEmojisProvider
    extends $FunctionalProvider<Set<String>, Set<String>, Set<String>>
    with $Provider<Set<String>> {
  const SearchUnicodeEmojisProvider._({
    required SearchUnicodeEmojisFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'searchUnicodeEmojisProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchUnicodeEmojisHash();

  @override
  String toString() {
    return r'searchUnicodeEmojisProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<Set<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Set<String> create(Ref ref) {
    final argument = this.argument as String;
    return searchUnicodeEmojis(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SearchUnicodeEmojisProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchUnicodeEmojisHash() =>
    r'f0afe74cded6bf88c8815d5ac73bd9608c524acb';

final class SearchUnicodeEmojisFamily extends $Family
    with $FunctionalFamilyOverride<Set<String>, String> {
  const SearchUnicodeEmojisFamily._()
    : super(
        retry: null,
        name: r'searchUnicodeEmojisProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchUnicodeEmojisProvider call(String query) =>
      SearchUnicodeEmojisProvider._(argument: query, from: this);

  @override
  String toString() => r'searchUnicodeEmojisProvider';
}
