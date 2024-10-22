// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aho_corasick_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ahoCorasickHash() => r'0f2fa8df1a01755f2665d95f7880eb456b2310e5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [ahoCorasick].
@ProviderFor(ahoCorasick)
const ahoCorasickProvider = AhoCorasickFamily();

/// See also [ahoCorasick].
class AhoCorasickFamily extends Family<AhoCorasick> {
  /// See also [ahoCorasick].
  const AhoCorasickFamily();

  /// See also [ahoCorasick].
  AhoCorasickProvider call(
    List<String> words,
  ) {
    return AhoCorasickProvider(
      words,
    );
  }

  @override
  AhoCorasickProvider getProviderOverride(
    covariant AhoCorasickProvider provider,
  ) {
    return call(
      provider.words,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'ahoCorasickProvider';
}

/// See also [ahoCorasick].
class AhoCorasickProvider extends Provider<AhoCorasick> {
  /// See also [ahoCorasick].
  AhoCorasickProvider(
    List<String> words,
  ) : this._internal(
          (ref) => ahoCorasick(
            ref as AhoCorasickRef,
            words,
          ),
          from: ahoCorasickProvider,
          name: r'ahoCorasickProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ahoCorasickHash,
          dependencies: AhoCorasickFamily._dependencies,
          allTransitiveDependencies:
              AhoCorasickFamily._allTransitiveDependencies,
          words: words,
        );

  AhoCorasickProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.words,
  }) : super.internal();

  final List<String> words;

  @override
  Override overrideWith(
    AhoCorasick Function(AhoCorasickRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AhoCorasickProvider._internal(
        (ref) => create(ref as AhoCorasickRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        words: words,
      ),
    );
  }

  @override
  ProviderElement<AhoCorasick> createElement() {
    return _AhoCorasickProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AhoCorasickProvider && other.words == words;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, words.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AhoCorasickRef on ProviderRef<AhoCorasick> {
  /// The parameter `words` of this provider.
  List<String> get words;
}

class _AhoCorasickProviderElement extends ProviderElement<AhoCorasick>
    with AhoCorasickRef {
  _AhoCorasickProviderElement(super.provider);

  @override
  List<String> get words => (origin as AhoCorasickProvider).words;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
