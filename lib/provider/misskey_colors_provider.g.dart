// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'misskey_colors_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$misskeyColorsHash() => r'a78b3d8c7e3723e762fb12fb1714b3a1325828ae';

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

/// See also [misskeyColors].
@ProviderFor(misskeyColors)
const misskeyColorsProvider = MisskeyColorsFamily();

/// See also [misskeyColors].
class MisskeyColorsFamily extends Family<MisskeyColors> {
  /// See also [misskeyColors].
  const MisskeyColorsFamily();

  /// See also [misskeyColors].
  MisskeyColorsProvider call(
    Brightness brightness,
  ) {
    return MisskeyColorsProvider(
      brightness,
    );
  }

  @override
  MisskeyColorsProvider getProviderOverride(
    covariant MisskeyColorsProvider provider,
  ) {
    return call(
      provider.brightness,
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
  String? get name => r'misskeyColorsProvider';
}

/// See also [misskeyColors].
class MisskeyColorsProvider extends AutoDisposeProvider<MisskeyColors> {
  /// See also [misskeyColors].
  MisskeyColorsProvider(
    Brightness brightness,
  ) : this._internal(
          (ref) => misskeyColors(
            ref as MisskeyColorsRef,
            brightness,
          ),
          from: misskeyColorsProvider,
          name: r'misskeyColorsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$misskeyColorsHash,
          dependencies: MisskeyColorsFamily._dependencies,
          allTransitiveDependencies:
              MisskeyColorsFamily._allTransitiveDependencies,
          brightness: brightness,
        );

  MisskeyColorsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.brightness,
  }) : super.internal();

  final Brightness brightness;

  @override
  Override overrideWith(
    MisskeyColors Function(MisskeyColorsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MisskeyColorsProvider._internal(
        (ref) => create(ref as MisskeyColorsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        brightness: brightness,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MisskeyColors> createElement() {
    return _MisskeyColorsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MisskeyColorsProvider && other.brightness == brightness;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, brightness.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MisskeyColorsRef on AutoDisposeProviderRef<MisskeyColors> {
  /// The parameter `brightness` of this provider.
  Brightness get brightness;
}

class _MisskeyColorsProviderElement
    extends AutoDisposeProviderElement<MisskeyColors> with MisskeyColorsRef {
  _MisskeyColorsProviderElement(super.provider);

  @override
  Brightness get brightness => (origin as MisskeyColorsProvider).brightness;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
