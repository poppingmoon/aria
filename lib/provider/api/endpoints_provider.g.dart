// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoints_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$endpointsHash() => r'fc03613363f3b924a991b48bc26784ced45f06ba';

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

/// See also [endpoints].
@ProviderFor(endpoints)
const endpointsProvider = EndpointsFamily();

/// See also [endpoints].
class EndpointsFamily extends Family<AsyncValue<List<String>>> {
  /// See also [endpoints].
  const EndpointsFamily();

  /// See also [endpoints].
  EndpointsProvider call(
    String host,
  ) {
    return EndpointsProvider(
      host,
    );
  }

  @override
  EndpointsProvider getProviderOverride(
    covariant EndpointsProvider provider,
  ) {
    return call(
      provider.host,
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
  String? get name => r'endpointsProvider';
}

/// See also [endpoints].
class EndpointsProvider extends AutoDisposeStreamProvider<List<String>> {
  /// See also [endpoints].
  EndpointsProvider(
    String host,
  ) : this._internal(
          (ref) => endpoints(
            ref as EndpointsRef,
            host,
          ),
          from: endpointsProvider,
          name: r'endpointsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$endpointsHash,
          dependencies: EndpointsFamily._dependencies,
          allTransitiveDependencies: EndpointsFamily._allTransitiveDependencies,
          host: host,
        );

  EndpointsProvider._internal(
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
    Stream<List<String>> Function(EndpointsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EndpointsProvider._internal(
        (ref) => create(ref as EndpointsRef),
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
  AutoDisposeStreamProviderElement<List<String>> createElement() {
    return _EndpointsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EndpointsProvider && other.host == host;
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
mixin EndpointsRef on AutoDisposeStreamProviderRef<List<String>> {
  /// The parameter `host` of this provider.
  String get host;
}

class _EndpointsProviderElement
    extends AutoDisposeStreamProviderElement<List<String>> with EndpointsRef {
  _EndpointsProviderElement(super.provider);

  @override
  String get host => (origin as EndpointsProvider).host;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
