// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteHash() => r'e0a1aa1e27ce0b297b3c28e4a0f2d39c8c9d2d18';

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

/// See also [note].
@ProviderFor(note)
const noteProvider = NoteFamily();

/// See also [note].
class NoteFamily extends Family<Note?> {
  /// See also [note].
  const NoteFamily();

  /// See also [note].
  NoteProvider call(
    Account account,
    String noteId,
  ) {
    return NoteProvider(
      account,
      noteId,
    );
  }

  @override
  NoteProvider getProviderOverride(
    covariant NoteProvider provider,
  ) {
    return call(
      provider.account,
      provider.noteId,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies =
      const <ProviderOrFamily>[];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      const <ProviderOrFamily>{};

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'noteProvider';
}

/// See also [note].
class NoteProvider extends Provider<Note?> {
  /// See also [note].
  NoteProvider(
    Account account,
    String noteId,
  ) : this._internal(
          (ref) => note(
            ref as NoteRef,
            account,
            noteId,
          ),
          from: noteProvider,
          name: r'noteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$noteHash,
          dependencies: NoteFamily._dependencies,
          allTransitiveDependencies: NoteFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
        );

  NoteProvider._internal(
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
    Note? Function(NoteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteProvider._internal(
        (ref) => create(ref as NoteRef),
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
  ProviderElement<Note?> createElement() {
    return _NoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteProvider &&
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

mixin NoteRef on ProviderRef<Note?> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteProviderElement extends ProviderElement<Note?> with NoteRef {
  _NoteProviderElement(super.provider);

  @override
  Account get account => (origin as NoteProvider).account;
  @override
  String get noteId => (origin as NoteProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
