// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appear_note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appearNoteHash() => r'c57297ccaaf5dd400ef373e07904b8560a609ebe';

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

/// See also [appearNote].
@ProviderFor(appearNote)
const appearNoteProvider = AppearNoteFamily();

/// See also [appearNote].
class AppearNoteFamily extends Family<Note?> {
  /// See also [appearNote].
  const AppearNoteFamily();

  /// See also [appearNote].
  AppearNoteProvider call(Account account, String noteId) {
    return AppearNoteProvider(account, noteId);
  }

  @override
  AppearNoteProvider getProviderOverride(
    covariant AppearNoteProvider provider,
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
  String? get name => r'appearNoteProvider';
}

/// See also [appearNote].
class AppearNoteProvider extends AutoDisposeProvider<Note?> {
  /// See also [appearNote].
  AppearNoteProvider(Account account, String noteId)
    : this._internal(
        (ref) => appearNote(ref as AppearNoteRef, account, noteId),
        from: appearNoteProvider,
        name: r'appearNoteProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$appearNoteHash,
        dependencies: AppearNoteFamily._dependencies,
        allTransitiveDependencies: AppearNoteFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
      );

  AppearNoteProvider._internal(
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
  Override overrideWith(Note? Function(AppearNoteRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: AppearNoteProvider._internal(
        (ref) => create(ref as AppearNoteRef),
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
  AutoDisposeProviderElement<Note?> createElement() {
    return _AppearNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppearNoteProvider &&
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
mixin AppearNoteRef on AutoDisposeProviderRef<Note?> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;
}

class _AppearNoteProviderElement extends AutoDisposeProviderElement<Note?>
    with AppearNoteRef {
  _AppearNoteProviderElement(super.provider);

  @override
  Account get account => (origin as AppearNoteProvider).account;
  @override
  String get noteId => (origin as AppearNoteProvider).noteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
