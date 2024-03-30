// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'average_color_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$averageColorHash() => r'7ab53e71c0136b8a278d4ab29880f098bca9a036';

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

/// See also [averageColor].
@ProviderFor(averageColor)
const averageColorProvider = AverageColorFamily();

/// See also [averageColor].
class AverageColorFamily extends Family<Color> {
  /// See also [averageColor].
  const AverageColorFamily();

  /// See also [averageColor].
  AverageColorProvider call(
    String blurHash,
  ) {
    return AverageColorProvider(
      blurHash,
    );
  }

  @override
  AverageColorProvider getProviderOverride(
    covariant AverageColorProvider provider,
  ) {
    return call(
      provider.blurHash,
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
  String? get name => r'averageColorProvider';
}

/// See also [averageColor].
class AverageColorProvider extends AutoDisposeProvider<Color> {
  /// See also [averageColor].
  AverageColorProvider(
    String blurHash,
  ) : this._internal(
          (ref) => averageColor(
            ref as AverageColorRef,
            blurHash,
          ),
          from: averageColorProvider,
          name: r'averageColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$averageColorHash,
          dependencies: AverageColorFamily._dependencies,
          allTransitiveDependencies:
              AverageColorFamily._allTransitiveDependencies,
          blurHash: blurHash,
        );

  AverageColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.blurHash,
  }) : super.internal();

  final String blurHash;

  @override
  Override overrideWith(
    Color Function(AverageColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AverageColorProvider._internal(
        (ref) => create(ref as AverageColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        blurHash: blurHash,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Color> createElement() {
    return _AverageColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AverageColorProvider && other.blurHash == blurHash;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, blurHash.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AverageColorRef on AutoDisposeProviderRef<Color> {
  /// The parameter `blurHash` of this provider.
  String get blurHash;
}

class _AverageColorProviderElement extends AutoDisposeProviderElement<Color>
    with AverageColorRef {
  _AverageColorProviderElement(super.provider);

  @override
  String get blurHash => (origin as AverageColorProvider).blurHash;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
