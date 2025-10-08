// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_custom_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchCustomEmojis)
const searchCustomEmojisProvider = SearchCustomEmojisFamily._();

final class SearchCustomEmojisProvider
    extends $FunctionalProvider<Set<Emoji>, Set<Emoji>, Set<Emoji>>
    with $Provider<Set<Emoji>> {
  const SearchCustomEmojisProvider._({
    required SearchCustomEmojisFamily super.from,
    required (String, String) super.argument,
  }) : super(
         retry: null,
         name: r'searchCustomEmojisProvider',
         isAutoDispose: false,
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
  $ProviderElement<Set<Emoji>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Set<Emoji> create(Ref ref) {
    final argument = this.argument as (String, String);
    return searchCustomEmojis(ref, argument.$1, argument.$2);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<Emoji> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<Emoji>>(value),
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
    r'86540d6f27768294f26da083c8c0e45f78502218';

final class SearchCustomEmojisFamily extends $Family
    with $FunctionalFamilyOverride<Set<Emoji>, (String, String)> {
  const SearchCustomEmojisFamily._()
    : super(
        retry: null,
        name: r'searchCustomEmojisProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  SearchCustomEmojisProvider call(String host, String query) =>
      SearchCustomEmojisProvider._(argument: (host, query), from: this);

  @override
  String toString() => r'searchCustomEmojisProvider';
}
