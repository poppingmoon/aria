// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_notes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$childrenNotesNotifierHash() =>
    r'2138578ca535573bd36a3dc7aaf83d07cf958e5f';

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

abstract class _$ChildrenNotesNotifier
    extends BuildlessAutoDisposeStreamNotifier<PaginationState<Note>> {
  late final Account account;
  late final String noteId;

  Stream<PaginationState<Note>> build(Account account, String noteId);
}

/// See also [ChildrenNotesNotifier].
@ProviderFor(ChildrenNotesNotifier)
const childrenNotesNotifierProvider = ChildrenNotesNotifierFamily();

/// See also [ChildrenNotesNotifier].
class ChildrenNotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [ChildrenNotesNotifier].
  const ChildrenNotesNotifierFamily();

  /// See also [ChildrenNotesNotifier].
  ChildrenNotesNotifierProvider call(Account account, String noteId) {
    return ChildrenNotesNotifierProvider(account, noteId);
  }

  @override
  ChildrenNotesNotifierProvider getProviderOverride(
    covariant ChildrenNotesNotifierProvider provider,
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
  String? get name => r'childrenNotesNotifierProvider';
}

/// See also [ChildrenNotesNotifier].
class ChildrenNotesNotifierProvider
    extends
        AutoDisposeStreamNotifierProviderImpl<
          ChildrenNotesNotifier,
          PaginationState<Note>
        > {
  /// See also [ChildrenNotesNotifier].
  ChildrenNotesNotifierProvider(Account account, String noteId)
    : this._internal(
        () => ChildrenNotesNotifier()
          ..account = account
          ..noteId = noteId,
        from: childrenNotesNotifierProvider,
        name: r'childrenNotesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$childrenNotesNotifierHash,
        dependencies: ChildrenNotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            ChildrenNotesNotifierFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  ChildrenNotesNotifierProvider._internal(
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
  Stream<PaginationState<Note>> runNotifierBuild(
    covariant ChildrenNotesNotifier notifier,
  ) {
    return notifier.build(account, noteId);
  }

  @override
  Override overrideWith(ChildrenNotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChildrenNotesNotifierProvider._internal(
        () => create()
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
  AutoDisposeStreamNotifierProviderElement<
    ChildrenNotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _ChildrenNotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChildrenNotesNotifierProvider &&
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
mixin ChildrenNotesNotifierRef
    on AutoDisposeStreamNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _ChildrenNotesNotifierProviderElement
    extends
        AutoDisposeStreamNotifierProviderElement<
          ChildrenNotesNotifier,
          PaginationState<Note>
        >
    with ChildrenNotesNotifierRef {
  _ChildrenNotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as ChildrenNotesNotifierProvider).account;
  @override
  String get noteId => (origin as ChildrenNotesNotifierProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
