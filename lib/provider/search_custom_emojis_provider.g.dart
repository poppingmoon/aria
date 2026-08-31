// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_custom_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchCustomEmojis)
final searchCustomEmojisProvider = SearchCustomEmojisFamily._();

final class SearchCustomEmojisProvider
    extends $FunctionalProvider<Set<String>, Set<String>, Set<String>>
    with $Provider<Set<String>> {
  SearchCustomEmojisProvider._({
    required SearchCustomEmojisFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'searchCustomEmojisProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$searchCustomEmojisHash();

  @override
  String toString() {
    return r'searchCustomEmojisProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<Set<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Set<String> create(Ref ref) {
    final argument = this.argument as (String, String);
    return searchCustomEmojis(ref, argument.$1, argument.$2);
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
    return other is SearchCustomEmojisProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$searchCustomEmojisHash() =>
    r'376bebf51f341a1390358b5edc75dad424094b75';

final class SearchCustomEmojisFamily extends $Family
    with $FunctionalFamilyOverride<Set<String>, (String, String)> {
  SearchCustomEmojisFamily._()
    : super(
        retry: null,
        name: r'searchCustomEmojisProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SearchCustomEmojisProvider call(String host, String query) =>
      SearchCustomEmojisProvider._(argument: (host, query), from: this);

  @override
  String toString() => r'searchCustomEmojisProvider';
}
