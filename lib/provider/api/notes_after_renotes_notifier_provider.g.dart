// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_after_renotes_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesAfterRenotesNotifierHash() =>
    r'93c5a3eaa1715bde75118db175e1d64d2ff9fd17';

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

abstract class _$NotesAfterRenotesNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PaginationState<Note>> {
  late final Account account;
  late final String noteId;

  FutureOr<PaginationState<Note>> build(Account account, String noteId);
}

/// See also [NotesAfterRenotesNotifier].
@ProviderFor(NotesAfterRenotesNotifier)
const notesAfterRenotesNotifierProvider = NotesAfterRenotesNotifierFamily();

/// See also [NotesAfterRenotesNotifier].
class NotesAfterRenotesNotifierFamily
    extends Family<AsyncValue<PaginationState<Note>>> {
  /// See also [NotesAfterRenotesNotifier].
  const NotesAfterRenotesNotifierFamily();

  /// See also [NotesAfterRenotesNotifier].
  NotesAfterRenotesNotifierProvider call(Account account, String noteId) {
    return NotesAfterRenotesNotifierProvider(account, noteId);
  }

  @override
  NotesAfterRenotesNotifierProvider getProviderOverride(
    covariant NotesAfterRenotesNotifierProvider provider,
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
  String? get name => r'notesAfterRenotesNotifierProvider';
}

/// See also [NotesAfterRenotesNotifier].
class NotesAfterRenotesNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          NotesAfterRenotesNotifier,
          PaginationState<Note>
        > {
  /// See also [NotesAfterRenotesNotifier].
  NotesAfterRenotesNotifierProvider(Account account, String noteId)
    : this._internal(
        () => NotesAfterRenotesNotifier()
          ..account = account
          ..noteId = noteId,
        from: notesAfterRenotesNotifierProvider,
        name: r'notesAfterRenotesNotifierProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$notesAfterRenotesNotifierHash,
        dependencies: NotesAfterRenotesNotifierFamily._dependencies,
        allTransitiveDependencies:
            NotesAfterRenotesNotifierFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  NotesAfterRenotesNotifierProvider._internal(
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
    covariant NotesAfterRenotesNotifier notifier,
  ) {
    return notifier.build(account, noteId);
  }

  @override
  Override overrideWith(NotesAfterRenotesNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotesAfterRenotesNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
    NotesAfterRenotesNotifier,
    PaginationState<Note>
  >
  createElement() {
    return _NotesAfterRenotesNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotesAfterRenotesNotifierProvider &&
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
mixin NotesAfterRenotesNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PaginationState<Note>> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NotesAfterRenotesNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          NotesAfterRenotesNotifier,
          PaginationState<Note>
        >
    with NotesAfterRenotesNotifierRef {
  _NotesAfterRenotesNotifierProviderElement(super.provider);

  @override
  Account get account => (origin as NotesAfterRenotesNotifierProvider).account;
  @override
  String get noteId => (origin as NotesAfterRenotesNotifierProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
