// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translated_note_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translatedNoteHash() => r'e59caed4eda77ad53b60e79ca086d203c20a729b';

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

/// See also [translatedNote].
@ProviderFor(translatedNote)
const translatedNoteProvider = TranslatedNoteFamily();

/// See also [translatedNote].
class TranslatedNoteFamily extends Family<AsyncValue<NotesTranslateResponse>> {
  /// See also [translatedNote].
  const TranslatedNoteFamily();

  /// See also [translatedNote].
  TranslatedNoteProvider call(
    Account account,
    String noteId,
    String targetLang,
  ) {
    return TranslatedNoteProvider(account, noteId, targetLang);
  }

  @override
  TranslatedNoteProvider getProviderOverride(
    covariant TranslatedNoteProvider provider,
  ) {
    return call(provider.account, provider.noteId, provider.targetLang);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'translatedNoteProvider';
}

/// See also [translatedNote].
class TranslatedNoteProvider
    extends AutoDisposeFutureProvider<NotesTranslateResponse> {
  /// See also [translatedNote].
  TranslatedNoteProvider(Account account, String noteId, String targetLang)
    : this._internal(
        (ref) => translatedNote(
          ref as TranslatedNoteRef,
          account,
          noteId,
          targetLang,
        ),
        from: translatedNoteProvider,
        name: r'translatedNoteProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$translatedNoteHash,
        dependencies: TranslatedNoteFamily._dependencies,
        allTransitiveDependencies:
            TranslatedNoteFamily._allTransitiveDependencies,
        account: account,
        noteId: noteId,
        targetLang: targetLang,
      );

  TranslatedNoteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.account,
    required this.noteId,
    required this.targetLang,
  }) : super.internal();

  final Account account;
  final String noteId;
  final String targetLang;

  @override
  Override overrideWith(
    FutureOr<NotesTranslateResponse> Function(TranslatedNoteRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TranslatedNoteProvider._internal(
        (ref) => create(ref as TranslatedNoteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        account: account,
        noteId: noteId,
        targetLang: targetLang,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<NotesTranslateResponse> createElement() {
    return _TranslatedNoteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TranslatedNoteProvider &&
        other.account == account &&
        other.noteId == noteId &&
        other.targetLang == targetLang;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, account.hashCode);
    hash = _SystemHash.combine(hash, noteId.hashCode);
    hash = _SystemHash.combine(hash, targetLang.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TranslatedNoteRef
    on AutoDisposeFutureProviderRef<NotesTranslateResponse> {
  /// The parameter `account` of this provider.
  Account get account;

  /// The parameter `noteId` of this provider.
  String get noteId;

  /// The parameter `targetLang` of this provider.
  String get targetLang;
}

class _TranslatedNoteProviderElement
    extends AutoDisposeFutureProviderElement<NotesTranslateResponse>
    with TranslatedNoteRef {
  _TranslatedNoteProviderElement(super.provider);

  @override
  Account get account => (origin as TranslatedNoteProvider).account;
  @override
  String get noteId => (origin as TranslatedNoteProvider).noteId;
  @override
  String get targetLang => (origin as TranslatedNoteProvider).targetLang;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
