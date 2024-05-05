// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'static_image_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staticImageUrlHash() => r'349d592be3262e098027fcfade319f616927d183';

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

/// See also [staticImageUrl].
@ProviderFor(staticImageUrl)
const staticImageUrlProvider = StaticImageUrlFamily();

/// See also [staticImageUrl].
class StaticImageUrlFamily extends Family<Uri?> {
  /// See also [staticImageUrl].
  const StaticImageUrlFamily();

  /// See also [staticImageUrl].
  StaticImageUrlProvider call(
    String host,
    String baseUrl,
  ) {
    return StaticImageUrlProvider(
      host,
      baseUrl,
    );
  }

  @override
  StaticImageUrlProvider getProviderOverride(
    covariant StaticImageUrlProvider provider,
  ) {
    return call(
      provider.host,
      provider.baseUrl,
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
  String? get name => r'staticImageUrlProvider';
}

/// See also [staticImageUrl].
class StaticImageUrlProvider extends AutoDisposeProvider<Uri?> {
  /// See also [staticImageUrl].
  StaticImageUrlProvider(
    String host,
    String baseUrl,
  ) : this._internal(
          (ref) => staticImageUrl(
            ref as StaticImageUrlRef,
            host,
            baseUrl,
          ),
          from: staticImageUrlProvider,
          name: r'staticImageUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$staticImageUrlHash,
          dependencies: StaticImageUrlFamily._dependencies,
          allTransitiveDependencies:
              StaticImageUrlFamily._allTransitiveDependencies,
          host: host,
          baseUrl: baseUrl,
        );

  StaticImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.baseUrl,
  }) : super.internal();

  final String host;
  final String baseUrl;

  @override
  Override overrideWith(
    Uri? Function(StaticImageUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StaticImageUrlProvider._internal(
        (ref) => create(ref as StaticImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Uri?> createElement() {
    return _StaticImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StaticImageUrlProvider &&
        other.host == host &&
        other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StaticImageUrlRef on AutoDisposeProviderRef<Uri?> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _StaticImageUrlProviderElement extends AutoDisposeProviderElement<Uri?>
    with StaticImageUrlRef {
  _StaticImageUrlProviderElement(super.provider);

  @override
  String get host => (origin as StaticImageUrlProvider).host;
  @override
  String get baseUrl => (origin as StaticImageUrlProvider).baseUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
