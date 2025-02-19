// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'renotes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$renotesNotifierHash() => r'd79ca29020bacdcb89606b11627de02afa70026a';

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

abstract class _$RenotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String noteId;

  FutureOr<PaginationState<Note>> build(Account account, String noteId);
}

/// See also [RenotesNotifier].
@ProviderFor(RenotesNotifier)
const renotesNotifierProvider = RenotesNotifierFamily();

/// See also [RenotesNotifier].
class RenotesNotifierFamily extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [RenotesNotifier].
  const RenotesNotifierFamily();

  /// See also [RenotesNotifier].
  RenotesNotifierProvider call(Account account, String noteId) {
    return RenotesNotifierProvider(account, noteId);
  }

  @override
  RenotesNotifierProvider getProviderOverride(
    covariant RenotesNotifierProvider provider,
  ) {
    return call(provider.account, provider.noteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'renotesNotifierProvider';
}

/// See also [RenotesNotifier].
class RenotesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          RenotesNotifier,
          PaginationState<Note>
        > {
  /// See also [RenotesNotifier].
  RenotesNotifierProvider(Account account, String noteId)
    : this._internal(
        () =>
            RenotesNotifier()
              ..account = account
              ..noteId = noteId,
        from: renotesNotifierProvider,
        name: r'renotesNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$renotesNotifierHash,
        dependencies: RenotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            RenotesNotifierFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  RenotesNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
  }) : super.internal();

  final Account account;
  final String noteId;

  @override
  FutureOr<PaginationState<Note>> runNotifierBuild(
    covariant RenotesNotifier notifier,
  ) {
    return notifier.build(account, noteId);
  }

  @override
  Override overrideWith(RenotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RenotesNotifierProvider._internal(
        () =>
            create()
              ..account = account
              ..noteId = noteId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    RenotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _RenotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RenotesNotifierProvider &&
        other.account == account &&
        other.noteId == noteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RenotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _RenotesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          RenotesNotifier,
          PaginationState<Note>
        >
    with RenotesNotifierRef {
  _RenotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as RenotesNotifierProvider).account;
  @override
  String get noteId => (origin as RenotesNotifierProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
