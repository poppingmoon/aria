// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_is_deleted_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteIsDeletedHash() => r'3a3589cbe9e6b2310a2d17abd67c60f654229744';

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

/// See also [noteIsDeleted].
@ProviderFor(noteIsDeleted)
const noteIsDeletedProvider = NoteIsDeletedFamily();

/// See also [noteIsDeleted].
class NoteIsDeletedFamily extends Family<bool> {
  /// See also [noteIsDeleted].
  const NoteIsDeletedFamily();

  /// See also [noteIsDeleted].
  NoteIsDeletedProvider call(
    Account account,
    String noteId,
  ) {
    return NoteIsDeletedProvider(
      account,
      noteId,
    );
  }

  @override
  NoteIsDeletedProvider getProviderOverride(
    covariant NoteIsDeletedProvider provider,
  ) {
    return call(
      provider.account,
      provider.noteId,
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
  String? get name => r'noteIsDeletedProvider';
}

/// See also [noteIsDeleted].
class NoteIsDeletedProvider extends AutoDisposeProvider<bool> {
  /// See also [noteIsDeleted].
  NoteIsDeletedProvider(
    Account account,
    String noteId,
  ) : this._internal(
          (ref) => noteIsDeleted(
            ref as NoteIsDeletedRef,
            account,
            noteId,
          ),
          from: noteIsDeletedProvider,
          name: r'noteIsDeletedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteIsDeletedHash,
          dependencies: NoteIsDeletedFamily._dependencies,
          allTransitiveDependencies:
              NoteIsDeletedFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
        );

  NoteIsDeletedProvider._internal(
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
  Override overrideWith(
    bool Function(NoteIsDeletedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteIsDeletedProvider._internal(
        (ref) => create(ref as NoteIsDeletedRef),
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
  AutoDisposeProviderElement<bool> createElement() {
    return _NoteIsDeletedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteIsDeletedProvider &&
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

mixin NoteIsDeletedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteIsDeletedProviderElement extends AutoDisposeProviderElement<bool>
    with NoteIsDeletedRef {
  _NoteIsDeletedProviderElement(super.provider);

  @override
  Account get account => (origin as NoteIsDeletedProvider).account;
  @override
  String get noteId => (origin as NoteIsDeletedProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
