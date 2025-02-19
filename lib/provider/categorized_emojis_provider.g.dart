// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorized_emojis_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categorizedEmojisHash() => r'98dfbd8046ad5860b373efa5fdcbe6e410ceca25';

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

/// See also [categorizedEmojis].
@ProviderFor(categorizedEmojis)
const categorizedEmojisProvider = CategorizedEmojisFamily();

/// See also [categorizedEmojis].
class CategorizedEmojisFamily extends Family<Map<String?, List<Emoji>>> {
  /// See also [categorizedEmojis].
  const CategorizedEmojisFamily();

  /// See also [categorizedEmojis].
  CategorizedEmojisProvider call(String host) {
    return CategorizedEmojisProvider(host);
  }

  @override
  CategorizedEmojisProvider getProviderOverride(
    covariant CategorizedEmojisProvider provider,
  ) {
    return call(provider.host);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'categorizedEmojisProvider';
}

/// See also [categorizedEmojis].
class CategorizedEmojisProvider extends Provider<Map<String?, List<Emoji>>> {
  /// See also [categorizedEmojis].
  CategorizedEmojisProvider(String host)
    : this._internal(
        (ref) => categorizedEmojis(ref as CategorizedEmojisRef, host),
        from: categorizedEmojisProvider,
        name: r'categorizedEmojisProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$categorizedEmojisHash,
        dependencies: CategorizedEmojisFamily._dependencies,
        allTransitiveDependencies:
            CategorizedEmojisFamily._allTransitiveDependencies,
        host: host,
      );

  CategorizedEmojisProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.host,
  }) : super.internal();

  final String host;

  @override
  Override overrideWith(
    Map<String?, List<Emoji>> Function(CategorizedEmojisRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CategorizedEmojisProvider._internal(
        (ref) => create(ref as CategorizedEmojisRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        host: host,
      ),
    );
  }

  @override
  ProviderElement<Map<String?, List<Emoji>>> createElement() {
    return _CategorizedEmojisProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategorizedEmojisProvider && other.host == host;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, host.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CategorizedEmojisRef on ProviderRef<Map<String?, List<Emoji>>> {
  /// The parameter `host` of this provider.
  String get host;
}

class _CategorizedEmojisProviderElement
    extends ProviderElement<Map<String?, List<Emoji>>>
    with CategorizedEmojisRef {
  _CategorizedEmojisProviderElement(super.provider);

  @override
  String get host => (origin as CategorizedEmojisProvider).host;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
