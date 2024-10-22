// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summaly_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$summalyHash() => r'da89b72a76a5e979d3583825cb5219fa8af9eeb8';

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

/// See also [summaly].
@ProviderFor(summaly)
const summalyProvider = SummalyFamily();

/// See also [summaly].
class SummalyFamily extends Family<AsyncValue<SummalyResult?>> {
  /// See also [summaly].
  const SummalyFamily();

  /// See also [summaly].
  SummalyProvider call(
    String host,
    String link, {
    String? lang,
  }) {
    return SummalyProvider(
      host,
      link,
      lang: lang,
    );
  }

  @override
  SummalyProvider getProviderOverride(
    covariant SummalyProvider provider,
  ) {
    return call(
      provider.host,
      provider.link,
      lang: provider.lang,
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
  String? get name => r'summalyProvider';
}

/// See also [summaly].
class SummalyProvider extends FutureProvider<SummalyResult?> {
  /// See also [summaly].
  SummalyProvider(
    String host,
    String link, {
    String? lang,
  }) : this._internal(
          (ref) => summaly(
            ref as SummalyRef,
            host,
            link,
            lang: lang,
          ),
          from: summalyProvider,
          name: r'summalyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$summalyHash,
          dependencies: SummalyFamily._dependencies,
          allTransitiveDependencies: SummalyFamily._allTransitiveDependencies,
          host: host,
          link: link,
          lang: lang,
        );

  SummalyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.link,
    required this.lang,
  }) : super.internal();

  final String host;
  final String link;
  final String? lang;

  @override
  Override overrideWith(
    FutureOr<SummalyResult?> Function(SummalyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SummalyProvider._internal(
        (ref) => create(ref as SummalyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        link: link,
        lang: lang,
      ),
    );
  }

  @override
  FutureProviderElement<SummalyResult?> createElement() {
    return _SummalyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SummalyProvider &&
        other.host == host &&
        other.link == link &&
        other.lang == lang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, link.hashCode);
    hash = _SystemHash.combine(hash, lang.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SummalyRef on FutureProviderRef<SummalyResult?> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `link` of this provider.
  String get link;

  /// The parameter `lang` of this provider.
  String? get lang;
}

class _SummalyProviderElement extends FutureProviderElement<SummalyResult?>
    with SummalyRef {
  _SummalyProviderElement(super.provider);

  @override
  String get host => (origin as SummalyProvider).host;
  @override
  String get link => (origin as SummalyProvider).link;
  @override
  String? get lang => (origin as SummalyProvider).lang;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
