// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aho_corasick_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ahoCorasick)
final ahoCorasickProvider = AhoCorasickFamily._();

final class AhoCorasickProvider
    extends $FunctionalProvider<AhoCorasick, AhoCorasick, AhoCorasick>
    with $Provider<AhoCorasick> {
  AhoCorasickProvider._({
    required AhoCorasickFamily super.from,
    required List<String> super.argument,
  }) : super(
         retry: null,
         name: r'ahoCorasickProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ahoCorasickHash();

  @override
  String toString() {
    return r'ahoCorasickProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<AhoCorasick> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AhoCorasick create(Ref ref) {
    final argument = this.argument as List<String>;
    return ahoCorasick(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AhoCorasick value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AhoCorasick>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is AhoCorasickProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ahoCorasickHash() => r'0f2fa8df1a01755f2665d95f7880eb456b2310e5';

final class AhoCorasickFamily extends $Family
    with $FunctionalFamilyOverride<AhoCorasick, List<String>> {
  AhoCorasickFamily._()
    : super(
        retry: null,
        name: r'ahoCorasickProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  AhoCorasickProvider call(List<String> words) =>
      AhoCorasickProvider._(argument: words, from: this);

  @override
  String toString() => r'ahoCorasickProvider';
}
