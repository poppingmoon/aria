// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clip_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clipNotesNotifierHash() => r'93439d458ba64b92f8440ef6c43d885bdd0c81e9';

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

abstract class _$ClipNotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String clipId;

  FutureOr<PaginationState<Note>> build(Account account, String clipId);
}

/// See also [ClipNotesNotifier].
@ProviderFor(ClipNotesNotifier)
const clipNotesNotifierProvider = ClipNotesNotifierFamily();

/// See also [ClipNotesNotifier].
class ClipNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [ClipNotesNotifier].
  const ClipNotesNotifierFamily();

  /// See also [ClipNotesNotifier].
  ClipNotesNotifierProvider call(Account account, String clipId) {
    return ClipNotesNotifierProvider(account, clipId);
  }

  @override
  ClipNotesNotifierProvider getProviderOverride(
    covariant ClipNotesNotifierProvider provider,
  ) {
    return call(provider.account, provider.clipId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clipNotesNotifierProvider';
}

/// See also [ClipNotesNotifier].
class ClipNotesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClipNotesNotifier,
          PaginationState<Note>
        > {
  /// See also [ClipNotesNotifier].
  ClipNotesNotifierProvider(Account account, String clipId)
    : this._internal(
        () =>
            ClipNotesNotifier()
              ..account = account
              ..clipId = clipId,
        from: clipNotesNotifierProvider,
        name: r'clipNotesNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$clipNotesNotifierHash,
        dependencies: ClipNotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            ClipNotesNotifierFamily._allTransitiveDependencies,
        account: account,
        clipId: clipId,
      );

  ClipNotesNotifierProvider._internal(
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
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant ClipNotesNotifier notifier,
  ) {
    return notifier.build(account, clipId);
  }

  @override
  Override overrideWith(ClipNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClipNotesNotifierProvider._internal(
        () =>
            create()
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
  AutoDisposeAsyncNotifierProviderElement<
    ClipNotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _ClipNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClipNotesNotifierProvider &&
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
mixin ClipNotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `clipId` of this provider.
  String get clipId;
}

class _ClipNotesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClipNotesNotifier,
          PaginationState<Note>
        >
    with ClipNotesNotifierRef {
  _ClipNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ClipNotesNotifierProvider).account;
  @override
  String get clipId => (origin as ClipNotesNotifierProvider).clipId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
