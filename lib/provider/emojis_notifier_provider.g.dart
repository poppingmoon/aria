// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emojis_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emojisNotifierHash() => r'e169a59cd33318a819bfd2993a5a7b642e11ab3a';

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

abstract class _$EmojisNotifier
    extends BuildlessStreamNotifier<Map<String, Emoji>> {
  late final String host;

  Stream<Map<String, Emoji>> build(String host);
}

/// See also [EmojisNotifier].
@ProviderFor(EmojisNotifier)
const emojisNotifierProvider = EmojisNotifierFamily();

/// See also [EmojisNotifier].
class EmojisNotifierFamily extends Family<AsyncValue<Map<String, Emoji>>> {
  /// See also [EmojisNotifier].
  const EmojisNotifierFamily();

  /// See also [EmojisNotifier].
  EmojisNotifierProvider call(String host) {
    return EmojisNotifierProvider(host);
  }

  @override
  EmojisNotifierProvider getProviderOverride(
    covariant EmojisNotifierProvider provider,
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
  String? get name => r'emojisNotifierProvider';
}

/// See also [EmojisNotifier].
class EmojisNotifierProvider
    extends StreamNotifierProviderImpl<EmojisNotifier, Map<String, Emoji>> {
  /// See also [EmojisNotifier].
  EmojisNotifierProvider(String host)
    : this._internal(
        () => EmojisNotifier()..host = host,
        from: emojisNotifierProvider,
        name: r'emojisNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$emojisNotifierHash,
        dependencies: EmojisNotifierFamily._dependencies,
        allTransitiveDependencies:
            EmojisNotifierFamily._allTransitiveDependencies,
        host: host,
      );

  EmojisNotifierProvider._internal(
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
  Stream<Map<String, Emoji>> runNotifierBuild(
    covariant EmojisNotifier notifier,
  ) {
    return notifier.build(host);
  }

  @override
  Override overrideWith(EmojisNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: EmojisNotifierProvider._internal(
        () => create()..host = host,
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
  StreamNotifierProviderElement<EmojisNotifier, Map<String, Emoji>>
  createElement() {
    return _EmojisNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmojisNotifierProvider && other.host == host;
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
mixin EmojisNotifierRef on StreamNotifierProviderRef<Map<String, Emoji>> {
  /// The parameter `host` of this provider.
  String get host;
}

class _EmojisNotifierProviderElement
    extends StreamNotifierProviderElement<EmojisNotifier, Map<String, Emoji>>
    with EmojisNotifierRef {
  _EmojisNotifierProviderElement(super.provider);

  @override
  String get host => (origin as EmojisNotifierProvider).host;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
