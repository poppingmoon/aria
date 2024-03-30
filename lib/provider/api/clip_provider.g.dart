// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clipHash() => r'e5bf692e56cf197dab905abd366f40871ceee782';

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

/// See also [clip].
@ProviderFor(clip)
const clipProvider = ClipFamily();

/// See also [clip].
class ClipFamily extends Family<AsyncValue<Clip>> {
  /// See also [clip].
  const ClipFamily();

  /// See also [clip].
  ClipProvider call(
    Account account,
    String clipId,
  ) {
    return ClipProvider(
      account,
      clipId,
    );
  }

  @override
  ClipProvider getProviderOverride(
    covariant ClipProvider provider,
  ) {
    return call(
      provider.account,
      provider.clipId,
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
  String? get name => r'clipProvider';
}

/// See also [clip].
class ClipProvider extends AutoDisposeFutureProvider<Clip> {
  /// See also [clip].
  ClipProvider(
    Account account,
    String clipId,
  ) : this._internal(
          (ref) => clip(
            ref as ClipRef,
            account,
            clipId,
          ),
          from: clipProvider,
          name: r'clipProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$clipHash,
          dependencies: ClipFamily._dependencies,
          allTransitiveDependencies: ClipFamily._allTransitiveDependencies,
          account: account,
          clipId: clipId,
        );

  ClipProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.clipId,
  }) : super.internal();

  final Account account;
  final String clipId;

  @override
  Override overrideWith(
    FutureOr<Clip> Function(ClipRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ClipProvider._internal(
        (ref) => create(ref as ClipRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        clipId: clipId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Clip> createElement() {
    return _ClipProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClipProvider &&
        other.account == account &&
        other.clipId == clipId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, clipId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClipRef on AutoDisposeFutureProviderRef<Clip> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `clipId` of this provider.
  String get clipId;
}

class _ClipProviderElement extends AutoDisposeFutureProviderElement<Clip>
    with ClipRef {
  _ClipProviderElement(super.provider);

  @override
  Account get account => (origin as ClipProvider).account;
  @override
  String get clipId => (origin as ClipProvider).clipId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
