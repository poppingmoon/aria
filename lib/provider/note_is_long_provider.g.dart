// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_is_long_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$noteIsLongHash() => r'0ba45ba6e079aaefe6c231e422e163c4ee6358ad';

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

/// See also [noteIsLong].
@ProviderFor(noteIsLong)
const noteIsLongProvider = NoteIsLongFamily();

/// See also [noteIsLong].
class NoteIsLongFamily extends Family<bool> {
  /// See also [noteIsLong].
  const NoteIsLongFamily();

  /// See also [noteIsLong].
  NoteIsLongProvider call(
    Account account,
    String noteId,
  ) {
    return NoteIsLongProvider(
      account,
      noteId,
    );
  }

  @override
  NoteIsLongProvider getProviderOverride(
    covariant NoteIsLongProvider provider,
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
  String? get name => r'noteIsLongProvider';
}

/// See also [noteIsLong].
class NoteIsLongProvider extends AutoDisposeProvider<bool> {
  /// See also [noteIsLong].
  NoteIsLongProvider(
    Account account,
    String noteId,
  ) : this._internal(
          (ref) => noteIsLong(
            ref as NoteIsLongRef,
            account,
            noteId,
          ),
          from: noteIsLongProvider,
          name: r'noteIsLongProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$noteIsLongHash,
          dependencies: NoteIsLongFamily._dependencies,
          allTransitiveDependencies:
              NoteIsLongFamily._allTransitiveDependencies,
          account: account,
          noteId: noteId,
        );

  NoteIsLongProvider._internal(
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
    bool Function(NoteIsLongRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: NoteIsLongProvider._internal(
        (ref) => create(ref as NoteIsLongRef),
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
    return _NoteIsLongProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NoteIsLongProvider &&
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
mixin NoteIsLongRef on AutoDisposeProviderRef<bool> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _NoteIsLongProviderElement extends AutoDisposeProviderElement<bool>
    with NoteIsLongRef {
  _NoteIsLongProviderElement(super.provider);

  @override
  Account get account => (origin as NoteIsLongProvider).account;
  @override
  String get noteId => (origin as NoteIsLongProvider).noteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
