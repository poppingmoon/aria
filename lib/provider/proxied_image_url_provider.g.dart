// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxied_image_url_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$proxiedImageUrlHash() => r'624a112e9854446a1d6cc929e35b7e2230664fdf';

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

/// See also [proxiedImageUrl].
@ProviderFor(proxiedImageUrl)
const proxiedImageUrlProvider = ProxiedImageUrlFamily();

/// See also [proxiedImageUrl].
class ProxiedImageUrlFamily extends Family<Uri?> {
  /// See also [proxiedImageUrl].
  const ProxiedImageUrlFamily();

  /// See also [proxiedImageUrl].
  ProxiedImageUrlProvider call(
    String host,
    Uri baseUrl, {
    bool emoji = false,
    bool preview = false,
    bool static = false,
  }) {
    return ProxiedImageUrlProvider(
      host,
      baseUrl,
      emoji: emoji,
      preview: preview,
      static: static,
    );
  }

  @override
  ProxiedImageUrlProvider getProviderOverride(
    covariant ProxiedImageUrlProvider provider,
  ) {
    return call(
      provider.host,
      provider.baseUrl,
      emoji: provider.emoji,
      preview: provider.preview,
      static: provider.static,
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
  String? get name => r'proxiedImageUrlProvider';
}

/// See also [proxiedImageUrl].
class ProxiedImageUrlProvider extends AutoDisposeProvider<Uri?> {
  /// See also [proxiedImageUrl].
  ProxiedImageUrlProvider(
    String host,
    Uri baseUrl, {
    bool emoji = false,
    bool preview = false,
    bool static = false,
  }) : this._internal(
         (ref) => proxiedImageUrl(
           ref as ProxiedImageUrlRef,
           host,
           baseUrl,
           emoji: emoji,
           preview: preview,
           static: static,
         ),
         from: proxiedImageUrlProvider,
         name: r'proxiedImageUrlProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$proxiedImageUrlHash,
         dependencies: ProxiedImageUrlFamily._dependencies,
         allTransitiveDependencies:
             ProxiedImageUrlFamily._allTransitiveDependencies,
         host: host,
         baseUrl: baseUrl,
         emoji: emoji,
         preview: preview,
         static: static,
       );

  ProxiedImageUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
    required this.baseUrl,
    required this.emoji,
    required this.preview,
    required this.static,
  }) : super.internal();

  final String host;
  final Uri baseUrl;
  final bool emoji;
  final bool preview;
  final bool static;

  @override
  Override overrideWith(Uri? Function(ProxiedImageUrlRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ProxiedImageUrlProvider._internal(
        (ref) => create(ref as ProxiedImageUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
        baseUrl: baseUrl,
        emoji: emoji,
        preview: preview,
        static: static,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Uri?> createElement() {
    return _ProxiedImageUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProxiedImageUrlProvider &&
        other.host == host &&
        other.baseUrl == baseUrl &&
        other.emoji == emoji &&
        other.preview == preview &&
        other.static == static;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);
    hash = _SystemHash.combine(hash, emoji.hashCode);
    hash = _SystemHash.combine(hash, preview.hashCode);
    hash = _SystemHash.combine(hash, static.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProxiedImageUrlRef on AutoDisposeProviderRef<Uri?> {
  /// The parameter `host` of this provider.
  String get host;

  /// The parameter `baseUrl` of this provider.
  Uri get baseUrl;

  /// The parameter `emoji` of this provider.
  bool get emoji;

  /// The parameter `preview` of this provider.
  bool get preview;

  /// The parameter `static` of this provider.
  bool get static;
}

class _ProxiedImageUrlProviderElement extends AutoDisposeProviderElement<Uri?>
    with ProxiedImageUrlRef {
  _ProxiedImageUrlProviderElement(super.provider);

  @override
  String get host => (origin as ProxiedImageUrlProvider).host;
  @override
  Uri get baseUrl => (origin as ProxiedImageUrlProvider).baseUrl;
  @override
  bool get emoji => (origin as ProxiedImageUrlProvider).emoji;
  @override
  bool get preview => (origin as ProxiedImageUrlProvider).preview;
  @override
  bool get static => (origin as ProxiedImageUrlProvider).static;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
