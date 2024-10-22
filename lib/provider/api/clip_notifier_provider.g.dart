// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clipNotifierHash() => r'76f8132b92b5f862f65377420c2e208e8ad84953';

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

abstract class _$ClipNotifier extends BuildlessAutoDisposeAsyncNotifier<Clip> {
  late final Account account;
  late final String clipId;

  FutureOr<Clip> build(
    Account account,
    String clipId,
  );
}

/// See also [ClipNotifier].
@ProviderFor(ClipNotifier)
const clipNotifierProvider = ClipNotifierFamily();

/// See also [ClipNotifier].
class ClipNotifierFamily extends Family<AsyncValue<Clip>> {
  /// See also [ClipNotifier].
  const ClipNotifierFamily();

  /// See also [ClipNotifier].
  ClipNotifierProvider call(
    Account account,
    String clipId,
  ) {
    return ClipNotifierProvider(
      account,
      clipId,
    );
  }

  @override
  ClipNotifierProvider getProviderOverride(
    covariant ClipNotifierProvider provider,
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
  String? get name => r'clipNotifierProvider';
}

/// See also [ClipNotifier].
class ClipNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ClipNotifier, Clip> {
  /// See also [ClipNotifier].
  ClipNotifierProvider(
    Account account,
    String clipId,
  ) : this._internal(
          () => ClipNotifier()
            ..account = account
            ..clipId = clipId,
          from: clipNotifierProvider,
          name: r'clipNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clipNotifierHash,
          dependencies: ClipNotifierFamily._dependencies,
          allTransitiveDependencies:
              ClipNotifierFamily._allTransitiveDependencies,
          account: account,
          clipId: clipId,
        );

  ClipNotifierProvider._internal(
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
  FutureOr<Clip> runNotifierBuild(
    covariant ClipNotifier notifier,
  ) {
    return notifier.build(
      account,
      clipId,
    );
  }

  @override
  Override overrideWith(ClipNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClipNotifierProvider._internal(
        () => create()
          ..account = account
          ..clipId = clipId,
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
  AutoDisposeAsyncNotifierProviderElement<ClipNotifier, Clip> createElement() {
    return _ClipNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClipNotifierProvider &&
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClipNotifierRef on AutoDisposeAsyncNotifierProviderRef<Clip> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `clipId` of this provider.
  String get clipId;
}

class _ClipNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ClipNotifier, Clip>
    with ClipNotifierRef {
  _ClipNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ClipNotifierProvider).account;
  @override
  String get clipId => (origin as ClipNotifierProvider).clipId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
